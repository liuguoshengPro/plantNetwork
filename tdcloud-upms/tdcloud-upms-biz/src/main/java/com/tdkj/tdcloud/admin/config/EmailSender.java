//package com.tdkj.tdcloud.admin.config;
//
//import javax.mail.*;
//import javax.mail.internet.*;
//import java.util.Properties;
//
//public class EmailSender {
//	public static void main(String[] args) {
//		String host = "mail.cstnet.cn"; // SMTP 服务器地址
//		String username = "message@mail.kib.ac.cn"; // 发件人邮箱账户名
//		String password = "P8YmnFMv7%zPRZ4A"; // 发件人邮箱密码
//		String recipient = "761301854@qq.com"; // 收件人邮箱地址
//
//		// 配置连接属性
//		Properties properties = new Properties();
//		properties.setProperty("mail.smtp.host", host);
//		properties.setProperty("mail.smtp.port", "465");
//		properties.setProperty("mail.smtp.auth", "true");
//		properties.setProperty("mail.smtp.starttls.enable", "true");
//
//		// 获取会话对象
//		Session session = Session.getInstance(properties, new Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(username, password);
//			}
//		});
//
//		try {
//			// 创建邮件对象
//			Message message = new MimeMessage(session);
//			message.setFrom(new InternetAddress(username));
//			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
//			message.setSubject("Test Email");
//			message.setText("This is a test email.");
//
//			// 发送邮件
//			Transport.send(message);
//
//			System.out.println("Email sent successfully.");
//		} catch (MessagingException e) {
//			e.printStackTrace();
//			System.out.println("Failed to send email: " + e.getMessage());
//		}
//	}
//}
//
