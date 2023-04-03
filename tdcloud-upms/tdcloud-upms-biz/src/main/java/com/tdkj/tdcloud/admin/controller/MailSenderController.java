package com.tdkj.tdcloud.admin.controller;

import com.tdkj.tdcloud.admin.service.QqMailService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequiredArgsConstructor
@RequestMapping("/mailSender")
public class MailSenderController {

	@Resource
	private QqMailService qqMailService;


	@PostMapping("/getEmailCode")
	public void getEmailCode(String email){
//		return userService.sendVerificationCode(email);
//		userService.sendSimpleMail(email, "test simple mail2", " 邮件收到了吗");
		qqMailService.sendSimpleMail(email,"test simple mail2", " 邮件收到了吗");
	}
}
