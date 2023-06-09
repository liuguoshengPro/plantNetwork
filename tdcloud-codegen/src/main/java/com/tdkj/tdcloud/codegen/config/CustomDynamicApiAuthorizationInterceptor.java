package com.tdkj.tdcloud.codegen.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.security.util.SecurityUtils;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * magic 设计的接口鉴权处理逻辑
 *
 * @author tdcloud
 * @date 2022/7/12
 */
public class CustomDynamicApiAuthorizationInterceptor extends OncePerRequestFilter {

	private final AntPathMatcher pathMatcher = new AntPathMatcher();

	private final ObjectMapper objectMapper = new ObjectMapper();

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		String requestURI = request.getRequestURI();
		if (!pathMatcher.match("/api/dynamic/**", requestURI)) {
			chain.doFilter(request, response);
			return;
		}

		if (SecurityUtils.getAuthentication() == null) {
			chain.doFilter(request, response);
			return;
		}

		if (SecurityUtils.getAuthentication().getAuthorities().stream().map(GrantedAuthority::getAuthority)
				.anyMatch(requestURI::contains)) {
			chain.doFilter(request, response);
			return;
		}

		response.setStatus(HttpStatus.FORBIDDEN.value());
		response.getWriter().write(objectMapper.writeValueAsString(R.failed("权限不足,不允许访问")));
	}

}
