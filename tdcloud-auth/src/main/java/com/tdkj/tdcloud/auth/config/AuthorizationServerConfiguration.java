/*
 *
 *      Copyright (c) 2018-2025, tdcloud All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 *  this list of conditions and the following disclaimer.
 *  Redistributions in binary form must reproduce the above copyright
 *  notice, this list of conditions and the following disclaimer in the
 *  documentation and/or other materials provided with the distribution.
 *  Neither the name of the pig4cloud.com developer nor the names of its
 *  contributors may be used to endorse or promote products derived from
 *  this software without specific prior written permission.
 *  Author: tdcloud
 *
 */

package com.tdkj.tdcloud.auth.config;

import cn.hutool.core.util.ArrayUtil;
import com.tdkj.tdcloud.auth.support.CustomeOAuth2AccessTokenGenerator;
import com.tdkj.tdcloud.auth.support.core.CustomeOAuth2TokenCustomizer;
import com.tdkj.tdcloud.auth.support.core.PigDaoAuthenticationProvider;
import com.tdkj.tdcloud.auth.support.handler.PigAuthenticationFailureEventHandler;
import com.tdkj.tdcloud.auth.support.handler.PigAuthenticationSuccessEventHandler;
import com.tdkj.tdcloud.auth.support.handler.TdcloudLoginPreFilter;
import com.tdkj.tdcloud.auth.support.password.OAuth2ResourceOwnerPasswordAuthenticationConverter;
import com.tdkj.tdcloud.auth.support.password.OAuth2ResourceOwnerPasswordAuthenticationProvider;
import com.tdkj.tdcloud.auth.support.sms.OAuth2ResourceOwnerSmsAuthenticationConverter;
import com.tdkj.tdcloud.auth.support.sms.OAuth2ResourceOwnerSmsAuthenticationProvider;
import com.tdkj.tdcloud.common.core.constant.SecurityConstants;
import com.tdkj.tdcloud.common.security.component.PermitAllUrlProperties;
import com.tdkj.tdcloud.common.security.component.PigBearerTokenExtractor;
import com.tdkj.tdcloud.common.security.component.ResourceAuthExceptionEntryPoint;
import com.tdkj.tdcloud.common.security.handler.FormAuthenticationFailureHandler;
import com.tdkj.tdcloud.common.security.handler.SsoLogoutSuccessHandler;
import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.server.authorization.OAuth2AuthorizationService;
import org.springframework.security.oauth2.server.authorization.config.annotation.web.configurers.OAuth2AuthorizationServerConfigurer;
import org.springframework.security.oauth2.server.authorization.settings.AuthorizationServerSettings;
import org.springframework.security.oauth2.server.authorization.token.DelegatingOAuth2TokenGenerator;
import org.springframework.security.oauth2.server.authorization.token.OAuth2RefreshTokenGenerator;
import org.springframework.security.oauth2.server.authorization.token.OAuth2TokenGenerator;
import org.springframework.security.oauth2.server.authorization.web.authentication.*;
import org.springframework.security.oauth2.server.resource.introspection.OpaqueTokenIntrospector;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationConverter;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import java.util.Arrays;

/**
 * @author tdcloud
 * @date 2018/6/22 认证服务器配置
 */
@Configuration
@AllArgsConstructor
public class AuthorizationServerConfiguration {

	private final OAuth2AuthorizationService authorizationService;

	protected final ResourceAuthExceptionEntryPoint resourceAuthExceptionEntryPoint;

	private final PigBearerTokenExtractor pigBearerTokenExtractor;

	private final OpaqueTokenIntrospector customOpaqueTokenIntrospector;

	private final PermitAllUrlProperties permitAllUrl;

	private final TdcloudLoginPreFilter tdcloudLoginPreFilter;

	@Bean
	@Order(Ordered.HIGHEST_PRECEDENCE)
	public SecurityFilterChain authorizationServerSecurityFilterChain(HttpSecurity http,
			PigAuthenticationSuccessEventHandler successEventHandler,
			PigAuthenticationFailureEventHandler failureEventHandler) throws Exception {
		OAuth2AuthorizationServerConfigurer authorizationServerConfigurer = new OAuth2AuthorizationServerConfigurer();

		http.addFilterAfter(tdcloudLoginPreFilter, UsernamePasswordAuthenticationFilter.class);
		http.apply(authorizationServerConfigurer.tokenEndpoint((tokenEndpoint) -> {// 个性化认证授权端点
			tokenEndpoint.accessTokenRequestConverter(accessTokenRequestConverter()) // 注入自定义的授权认证Converter
					.accessTokenResponseHandler(successEventHandler) // 登录成功处理器
					.errorResponseHandler(failureEventHandler);// 登录失败处理器
		}).clientAuthentication(oAuth2ClientAuthenticationConfigurer -> // 个性化客户端认证
		oAuth2ClientAuthenticationConfigurer.errorResponseHandler(failureEventHandler))// 处理客户端认证异常
				.authorizationEndpoint(authorizationEndpoint -> authorizationEndpoint// 授权码端点个性化confirm页面
						.consentPage(SecurityConstants.CUSTOM_CONSENT_PAGE_URI)));

		http.authorizeHttpRequests(authorizeRequests -> authorizeRequests
				.antMatchers(ArrayUtil.toArray(permitAllUrl.getIgnoreUrls(), String.class)).permitAll().anyRequest()
				.authenticated())
				.oauth2ResourceServer(
						oauth2 -> oauth2.opaqueToken(token -> token.introspector(customOpaqueTokenIntrospector))
								.authenticationEntryPoint(resourceAuthExceptionEntryPoint)
								.bearerTokenResolver(pigBearerTokenExtractor))
				.headers().frameOptions().disable().and().csrf().disable();

		DefaultSecurityFilterChain securityFilterChain = http
				.apply(authorizationServerConfigurer.authorizationService(authorizationService)// redis存储token的实现
						.authorizationServerSettings(
								AuthorizationServerSettings.builder().issuer(SecurityConstants.PIGX_LICENSE).build()))
				// 处理认证服务器异常
				.and()
				.exceptionHandling(configurer -> configurer.authenticationEntryPoint(resourceAuthExceptionEntryPoint))
				.build();

		// 注入自定义授权模式实现
		addCustomOAuth2GrantAuthenticationProvider(http);
		return securityFilterChain;
	}

	/**
	 * 令牌生成规则实现 </br>
	 * client:username:uuid
	 * @return OAuth2TokenGenerator
	 */
	@Bean
	public OAuth2TokenGenerator oAuth2TokenGenerator() {
		CustomeOAuth2AccessTokenGenerator accessTokenGenerator = new CustomeOAuth2AccessTokenGenerator();
		// 注入Token 增加关联用户信息
		accessTokenGenerator.setAccessTokenCustomizer(new CustomeOAuth2TokenCustomizer());
		return new DelegatingOAuth2TokenGenerator(accessTokenGenerator, new OAuth2RefreshTokenGenerator());
	}

	@Bean
	public AuthenticationFailureHandler authenticationFailureHandler() {
		return new FormAuthenticationFailureHandler();
	}

	@Bean
	public LogoutSuccessHandler logoutSuccessHandler() {
		return new SsoLogoutSuccessHandler();
	}

	/**
	 * request -> xToken 注入请求转换器
	 * @return DelegatingAuthenticationConverter
	 */
	private AuthenticationConverter accessTokenRequestConverter() {
		return new DelegatingAuthenticationConverter(Arrays.asList(
				new OAuth2ResourceOwnerPasswordAuthenticationConverter(),
				new OAuth2ResourceOwnerSmsAuthenticationConverter(), new OAuth2RefreshTokenAuthenticationConverter(),
				new OAuth2ClientCredentialsAuthenticationConverter(),
				new OAuth2AuthorizationCodeAuthenticationConverter(),
				new OAuth2AuthorizationCodeRequestAuthenticationConverter()));
	}

	/**
	 * 注入授权模式实现提供方
	 * <p>
	 * 1. 密码模式 </br>
	 * 2. 短信登录 </br>
	 */
	@SuppressWarnings("unchecked")
	private void addCustomOAuth2GrantAuthenticationProvider(HttpSecurity http) {
		AuthenticationManager authenticationManager = http.getSharedObject(AuthenticationManager.class);
		OAuth2AuthorizationService authorizationService = http.getSharedObject(OAuth2AuthorizationService.class);

		OAuth2ResourceOwnerPasswordAuthenticationProvider resourceOwnerPasswordAuthenticationProvider = new OAuth2ResourceOwnerPasswordAuthenticationProvider(
				authenticationManager, authorizationService, oAuth2TokenGenerator());

		OAuth2ResourceOwnerSmsAuthenticationProvider resourceOwnerSmsAuthenticationProvider = new OAuth2ResourceOwnerSmsAuthenticationProvider(
				authenticationManager, authorizationService, oAuth2TokenGenerator());

		// 处理 UsernamePasswordAuthenticationToken
		http.authenticationProvider(new PigDaoAuthenticationProvider());
		// 处理 OAuth2ResourceOwnerPasswordAuthenticationToken
		http.authenticationProvider(resourceOwnerPasswordAuthenticationProvider);
		// 处理 OAuth2ResourceOwnerSmsAuthenticationToken
		http.authenticationProvider(resourceOwnerSmsAuthenticationProvider);
	}

}
