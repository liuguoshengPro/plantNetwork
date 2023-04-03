package com.tdkj.tdcloud.admin.config;

import com.tdkj.tdcloud.admin.service.MailService;
import com.tdkj.tdcloud.admin.service.QqMailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * 实现qq邮箱发送
 */
@Service
public class QqMailServiceImpl implements QqMailService {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Resource
	private JavaMailSenderImpl sender;

	@Value("${spring.mail.username}")
	private String from;

	private static Properties pro;

	/**
	 * 发送文本邮件
	 * @param to
	 * @param subject
	 * @param content
	 */

	static {
		pro = System.getProperties(); // 下面各项缺一不可
		pro.put("mail.smtp.auth", "true");
		pro.put("mail.smtp.ssl.enable", "true");
		pro.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	}

	@Override
	public void sendSimpleMail(String to, String subject, String content) {

		sender.setJavaMailProperties(pro);

		MimeMessage message = sender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setFrom(from); // 发送人
			helper.setTo(to); // 收件人
			helper.setSubject(subject); // 标题
			helper.setText(content); // 内容
			sender.send(message);
			logger.info("简单邮件已经发送。");
		} catch (MessagingException e) {
			logger.error("发送简单邮件时发生异常！", e);
			e.printStackTrace();
		} catch (Exception e) {
			logger.error("发送简单邮件时发生异常！", e);
			e.printStackTrace();
		}

	}
}

