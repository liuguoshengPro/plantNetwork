package com.tdkj.tdcloud.auth.endpoint;

import com.anji.captcha.model.common.ResponseModel;
import com.anji.captcha.model.vo.CaptchaVO;
import com.anji.captcha.service.CaptchaService;
import com.tdkj.tdcloud.common.core.constant.CommonConstants;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.core.util.SpringContextHolder;
import com.tdkj.tdcloud.common.security.annotation.Inner;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 验证码相关的接口
 *
 * @author tdcloud
 * @date 2022/6/27
 */
@Inner(false)
@RestController
@RequestMapping("/code")
public class ImageCodeController {

	/**
	 * 创建验证码
	 * @return R
	 */
	@GetMapping("/create")
	public R create() {
		CaptchaVO vo = new CaptchaVO();
		vo.setCaptchaType(CommonConstants.IMAGE_CODE_TYPE);
		CaptchaService captchaService = SpringContextHolder.getBean(CaptchaService.class);
		ResponseModel responseModel = captchaService.get(vo);
		return R.ok(responseModel);
	}

	/**
	 * 校验验证码
	 * @param pointJson 位置坐标
	 * @param token 随机串
	 * @return R
	 */
	@PostMapping("/check")
	public R check(String pointJson, String token) {
		CaptchaVO vo = new CaptchaVO();
		vo.setPointJson(pointJson);
		vo.setToken(token);
		vo.setCaptchaType(CommonConstants.IMAGE_CODE_TYPE);
		CaptchaService captchaService = SpringContextHolder.getBean(CaptchaService.class);
		ResponseModel responseModel = captchaService.check(vo);
		return R.ok(responseModel);
	}

}
