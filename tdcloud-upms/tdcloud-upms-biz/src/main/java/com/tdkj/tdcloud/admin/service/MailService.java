package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.common.core.util.R;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.internet.MimeMessage;

public interface MailService {

	public R sendVerificationCode(String to);


}

