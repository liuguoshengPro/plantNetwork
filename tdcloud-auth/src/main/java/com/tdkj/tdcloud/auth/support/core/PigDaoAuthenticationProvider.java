package com.tdkj.tdcloud.auth.support.core;

import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.Mode;
import cn.hutool.crypto.Padding;
import cn.hutool.crypto.symmetric.AES;
import cn.hutool.extra.spring.SpringUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.tdkj.tdcloud.common.core.constant.CacheConstants;
import com.tdkj.tdcloud.common.core.constant.CommonConstants;
import com.tdkj.tdcloud.common.core.constant.SecurityConstants;
import com.tdkj.tdcloud.common.core.constant.enums.EncFlagTypeEnum;
import com.tdkj.tdcloud.common.core.util.SpringContextHolder;
import com.tdkj.tdcloud.common.core.util.WebUtils;
import com.tdkj.tdcloud.common.security.service.TdcloudUserDetailsService;
import lombok.SneakyThrows;
import org.springframework.core.Ordered;
import org.springframework.core.env.Environment;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsPasswordService;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.core.endpoint.OAuth2ParameterNames;
import org.springframework.security.web.authentication.www.BasicAuthenticationConverter;
import org.springframework.util.Assert;

import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.util.Comparator;
import java.util.Map;
import java.util.Optional;

import static org.springframework.security.oauth2.core.endpoint.OAuth2ParameterNames.PASSWORD;

/**
 * @author tdcloud
 * @date 2022-06-04
 */
public class PigDaoAuthenticationProvider extends AbstractUserDetailsAuthenticationProvider {

	private static final String KEY_ALGORITHM = "AES";

	/**
	 * The plaintext password used to perform PasswordEncoder#matches(CharSequence,
	 * String)} on when the user is not found to avoid SEC-2056.
	 */
	private static final String USER_NOT_FOUND_PASSWORD = "userNotFoundPassword";

	private final static BasicAuthenticationConverter basicConvert = new BasicAuthenticationConverter();

	private PasswordEncoder passwordEncoder;

	/**
	 * The password used to perform {@link PasswordEncoder#matches(CharSequence, String)}
	 * on when the user is not found to avoid SEC-2056. This is necessary, because some
	 * {@link PasswordEncoder} implementations will short circuit if the password is not
	 * in a valid format.
	 */
	private volatile String userNotFoundEncodedPassword;

	private UserDetailsService userDetailsService;

	private UserDetailsPasswordService userDetailsPasswordService;

	public PigDaoAuthenticationProvider() {
		setMessageSource(SpringUtil.getBean("securityMessageSource"));
		setPasswordEncoder(PasswordEncoderFactories.createDelegatingPasswordEncoder());
	}

	@Override
	@SuppressWarnings("deprecation")
	protected void additionalAuthenticationChecks(UserDetails userDetails,
			UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {

		// app 模式不用校验密码
		String grantType = WebUtils.getRequest().getParameter(OAuth2ParameterNames.GRANT_TYPE);
		if (StrUtil.equals(SecurityConstants.APP, grantType)) {
			return;
		}

		if (authentication.getCredentials() == null) {
			this.logger.debug("Failed to authenticate since no credentials provided");
			throw new BadCredentialsException(this.messages
					.getMessage("AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
		}
		String presentedPassword = authentication.getCredentials().toString();
		// 密码解密
		JSONObject information = getClientConfig();
		if (information == null) {
			presentedPassword = decode(presentedPassword);
		}
		if (StrUtil.equals(EncFlagTypeEnum.YES.getType(), information.getStr(CommonConstants.ENC_FLAG))) {
			presentedPassword = decode(presentedPassword);
		}
		if (!this.passwordEncoder.matches(presentedPassword, userDetails.getPassword())) {
			this.logger.debug("Failed to authenticate since password does not match stored value");
			throw new BadCredentialsException(this.messages
					.getMessage("AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
		}
	}

	@SneakyThrows
	@Override
	protected final UserDetails retrieveUser(String username, UsernamePasswordAuthenticationToken authentication) {
		prepareTimingAttackProtection();
		String grantType = WebUtils.getRequest().getParameter(OAuth2ParameterNames.GRANT_TYPE);
		String clientId = WebUtils.getRequest().getParameter(OAuth2ParameterNames.CLIENT_ID);

		if (StrUtil.isBlank(clientId)) {
			clientId = basicConvert.convert(WebUtils.getRequest()).getName();
		}

		Map<String, TdcloudUserDetailsService> userDetailsServiceMap = SpringUtil
				.getBeansOfType(TdcloudUserDetailsService.class);

		String finalClientId = clientId;
		Optional<TdcloudUserDetailsService> optional = userDetailsServiceMap.values().stream()
				.filter(service -> service.support(finalClientId, grantType))
				.max(Comparator.comparingInt(Ordered::getOrder));

		if (!optional.isPresent()) {
			throw new InternalAuthenticationServiceException("UserDetailsService error , not register");
		}

		try {
			UserDetails loadedUser = optional.get().loadUserByUsername(username);
			if (loadedUser == null) {
				throw new InternalAuthenticationServiceException(
						"UserDetailsService returned null, which is an interface contract violation");
			}
			return loadedUser;
		}
		catch (UsernameNotFoundException ex) {
			mitigateAgainstTimingAttack(authentication);
			throw ex;
		}
		catch (InternalAuthenticationServiceException ex) {
			throw ex;
		}
		catch (Exception ex) {
			throw new InternalAuthenticationServiceException(ex.getMessage(), ex);
		}
	}

	@Override
	protected Authentication createSuccessAuthentication(Object principal, Authentication authentication,
			UserDetails user) {
		boolean upgradeEncoding = this.userDetailsPasswordService != null
				&& this.passwordEncoder.upgradeEncoding(user.getPassword());
		if (upgradeEncoding) {
			String presentedPassword = authentication.getCredentials().toString();
			String newPassword = this.passwordEncoder.encode(presentedPassword);
			user = this.userDetailsPasswordService.updatePassword(user, newPassword);
		}
		return super.createSuccessAuthentication(principal, authentication, user);
	}

	private void prepareTimingAttackProtection() {
		if (this.userNotFoundEncodedPassword == null) {
			this.userNotFoundEncodedPassword = this.passwordEncoder.encode(USER_NOT_FOUND_PASSWORD);
		}
	}

	private void mitigateAgainstTimingAttack(UsernamePasswordAuthenticationToken authentication) {
		if (authentication.getCredentials() != null) {
			String presentedPassword = authentication.getCredentials().toString();
			this.passwordEncoder.matches(presentedPassword, this.userNotFoundEncodedPassword);
		}
	}

	/**
	 * Sets the PasswordEncoder instance to be used to encode and validate passwords. If
	 * not set, the password will be compared using
	 * {@link PasswordEncoderFactories#createDelegatingPasswordEncoder()}
	 * @param passwordEncoder must be an instance of one of the {@code PasswordEncoder}
	 * types.
	 */
	public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
		Assert.notNull(passwordEncoder, "passwordEncoder cannot be null");
		this.passwordEncoder = passwordEncoder;
		this.userNotFoundEncodedPassword = null;
	}

	protected PasswordEncoder getPasswordEncoder() {
		return this.passwordEncoder;
	}

	public void setUserDetailsService(UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}

	protected UserDetailsService getUserDetailsService() {
		return this.userDetailsService;
	}

	public void setUserDetailsPasswordService(UserDetailsPasswordService userDetailsPasswordService) {
		this.userDetailsPasswordService = userDetailsPasswordService;
	}

	private JSONObject getClientConfig() {
		String header = WebUtils.getRequest().getHeader(HttpHeaders.AUTHORIZATION);
		String clientId = WebUtils.extractClientId(header).orElse(null);
		// 获取租户拼接区分租户的key
		String tenantId = WebUtils.getRequest().getHeader(CommonConstants.TENANT_ID);
		String key = String.format("%s:%s:%s", StrUtil.isBlank(tenantId) ? CommonConstants.TENANT_ID_1 : tenantId,
				CacheConstants.CLIENT_FLAG, clientId);

		RedisTemplate redisTemplate = SpringContextHolder.getBean(RedisTemplate.class);
		redisTemplate.setKeySerializer(new StringRedisSerializer());
		Object val = redisTemplate.opsForValue().get(key);
		// 当配置不存在时，不用校验
		if (val == null) {
			return null;
		}
		return JSONUtil.parseObj(val.toString());
	}

	/**
	 * 密码解密
	 * @param presentedPassword 加密密码
	 */
	private String decode(String presentedPassword) {
		// 构建前端对应解密AES 因子
		String key = SpringContextHolder.getBean(Environment.class).getProperty("gateway.encodeKey",
				"tdcloudtdcloudtdcloudtdcloud");
		AES aes = new AES(Mode.CFB, Padding.NoPadding, new SecretKeySpec(key.getBytes(), KEY_ALGORITHM),
				new IvParameterSpec(key.getBytes()));
		return aes.decryptStr(presentedPassword);
	}

}
