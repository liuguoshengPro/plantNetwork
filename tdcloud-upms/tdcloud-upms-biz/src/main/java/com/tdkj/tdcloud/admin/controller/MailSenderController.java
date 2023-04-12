package com.tdkj.tdcloud.admin.controller;

import com.tdkj.tdcloud.admin.api.entity.EmailSender;
import com.tdkj.tdcloud.admin.service.PlantMailService;
import com.tdkj.tdcloud.common.security.annotation.Inner;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequiredArgsConstructor
@RequestMapping("/mailSender")
public class MailSenderController {

	@Resource
	private PlantMailService qqMailService;


	@Inner(value = false)
	@PostMapping("/getEmailCode")
	public void getEmailCode(@RequestBody EmailSender emailSender){
//		return userService.sendVerificationCode(email);
//		userService.sendSimpleMail(email, "test simple mail2", " 邮件收到了吗");
		qqMailService.sendSimpleMail(emailSender);
	}
}
