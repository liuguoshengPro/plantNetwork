package com.tdkj.tdcloud.auth.support.handler;

import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.anji.captcha.model.vo.CaptchaVO;
import com.anji.captcha.service.CaptchaService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tdkj.tdcloud.common.core.constant.CacheConstants;
import com.tdkj.tdcloud.common.core.constant.CommonConstants;
import com.tdkj.tdcloud.common.core.constant.SecurityConstants;
import com.tdkj.tdcloud.common.core.constant.enums.CaptchaFlagTypeEnum;
import com.tdkj.tdcloud.common.core.exception.ValidateCodeException;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.core.util.SpringContextHolder;
import com.tdkj.tdcloud.common.core.util.WebUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Component
@Slf4j
@RequiredArgsConstructor
public class TdcloudLoginPreFilter extends OncePerRequestFilter {

	private final ObjectMapper objectMapper;

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {

		String requestUrl = request.getServletPath();

		if (SecurityConstants.OAUTH_TOKEN_URL.equals(requestUrl)) {
			// 刷新token，直接向下执行
			String grantType = request.getParameter("grant_type");
			if (StrUtil.equals(SecurityConstants.REFRESH_TOKEN, grantType)) {
				filterChain.doFilter(request, response);
			}
			// 获取客户端配置
			JSONObject information = getClientConfig();
			// 校验验证码 1. 客户端开启验证码 2. 短信模式
//			if (StrUtil.equals(CaptchaFlagTypeEnum.ON.getType(), information.getStr(CommonConstants.CAPTCHA_FLAG))
//					|| StrUtil.contains(request.getParameter(SecurityConstants.GRANT_MOBILE), "SMS")) {
//				try {
//					checkCode();
//				}
//				catch (ValidateCodeException validateCodeException) {
//					response.setStatus(HttpStatus.PRECONDITION_REQUIRED.value());
//					R<String> result = new R<>();
//					result.setCode(CommonConstants.FAIL);
//					result.setData(validateCodeException.getLocalizedMessage());
//					result.setMsg(validateCodeException.getLocalizedMessage());
//					PrintWriter printWriter = response.getWriter();
//					printWriter.append(objectMapper.writeValueAsString(result));
//					return;
//				}
//			}
		}
		filterChain.doFilter(request, response);
	}

	/**
	 * 校验验证码
	 */
	private void checkCode() throws ValidateCodeException {
		HttpServletRequest request = WebUtils.getRequest();
		String code = request.getParameter("code");

		if (StrUtil.isBlank(code)) {
			throw new ValidateCodeException("验证码不能为空");
		}

		String randomStr = request.getParameter("randomStr");

		// 若是滑块登录
		if (CommonConstants.IMAGE_CODE_TYPE.equalsIgnoreCase(randomStr)) {
			CaptchaService captchaService = SpringContextHolder.getBean(CaptchaService.class);
			CaptchaVO vo = new CaptchaVO();
			vo.setCaptchaVerification(code);
			vo.setCaptchaType(CommonConstants.IMAGE_CODE_TYPE);
			if (!captchaService.verification(vo).isSuccess()) {
				throw new ValidateCodeException("验证码不能为空");
			}
			return;
		}

		// https://gitee.com/log4j/pig/issues/IWA0D
		String mobile = request.getParameter("mobile");
		if (StrUtil.isNotBlank(mobile)) {
			randomStr = mobile;
		}

		String key = CacheConstants.DEFAULT_CODE_KEY + randomStr;
		RedisTemplate redisTemplate = SpringContextHolder.getBean(RedisTemplate.class);
		redisTemplate.setKeySerializer(new StringRedisSerializer());

		if (!redisTemplate.hasKey(key)) {
			throw new ValidateCodeException("验证码不合法");
		}

		Object codeObj = redisTemplate.opsForValue().get(key);

		if (codeObj == null) {
			throw new ValidateCodeException("验证码不合法");
		}

		String saveCode = codeObj.toString();
		if (StrUtil.isBlank(saveCode)) {
			redisTemplate.delete(key);
			throw new ValidateCodeException("验证码不合法");
		}

		if (!StrUtil.equals(saveCode, code)) {
			redisTemplate.delete(key);
			throw new ValidateCodeException("验证码不合法");
		}

		redisTemplate.delete(key);
	}

	/**
	 * 获取终端扩展配置
	 * @return JSONObject
	 */
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

}
