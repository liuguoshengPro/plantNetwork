package com.tdkj.tdcloud.admin.service.impl;

import com.tdkj.tdcloud.admin.service.MailService;
import com.tdkj.tdcloud.common.core.util.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.Random;

public class MailServiceImpl implements MailService {

	@Autowired
	private JavaMailSender mailSender;

	@Override
	public R sendVerificationCode(String to) {
		String code = generateRandomCode();
		String subject = "Verification Code";
		String text = "Your verification code is: " + code;
		sendMail(to, subject, text);
		return R.ok("验证码",code);
	}

	private void sendMail(String to, String subject, String text) {
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		try {
			helper.setTo(to);
			helper.setSubject(subject);
			helper.setText(text);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	private String generateRandomCode() {
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 6; i++) {
			sb.append(random.nextInt(10));
		}
		return sb.toString();
	}

}
