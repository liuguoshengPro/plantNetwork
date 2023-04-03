//package com.tdkj.tdcloud.admin.config;
//
//import javax.mail.*;
//import javax.mail.internet.*;
//import java.util.Properties;
//import java.util.Random;
//
//public class PopEmailVerificationCodeRegistration {
//
//
//	public static void main(String[] args) {
//		String host = "mail.cstnet.cn"; // POP 服务器地址
//		String adminEmail = "message@mail.kib.ac.cn"; // 管理员邮箱地址
//		String adminPassword = "P8YmnFMv7%zPRZ4A"; // 管理员邮箱密码
//		String newUserEmail = "761301854@qq.com"; // 新用户邮箱地址
//		String verificationCode = generateRandomCode(); // 生成随机验证码
//
//		// 配置连接属性
//		Properties properties = new Properties();
//		properties.setProperty("mail.pop3.host", host);
//		properties.setProperty("mail.pop3.port", "995");
//		properties.setProperty("mail.pop3.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//		properties.setProperty("mail.pop3.socketFactory.fallback", "false");
//		properties.setProperty("mail.pop3.socketFactory.port", "995");
//
//		// 获取会话对象
//		Session session = Session.getDefaultInstance(properties);
//
//		try {
//			// 创建 POP3 协议的 Store 对象
//			Store store = session.getStore("pop3");
//			store.connect(host, adminEmail, adminPassword);
//
//			// 发送邮件到新用户的邮箱
//			String subject = "Verification Code";
//			String body = "亲爱的金涛, 您好！\n" +
//					"您在中国科学院昆明植物研究所一体化云服务平台的注册验证码为" +verificationCode+"，请前往服务平台完成注册验证，谢谢！\n" +
//					"此邮件由系统自动发出,请勿直接回复。\n" +
//					"如果在使用中遇到问题,请发邮件到 jintao@mail.kib.ac.cn ,我们将尽快回复。\n" +
//					"感谢您的访问,祝您使用愉快!\n" +
//					"科技信息中心\n" +
//					"2023年3月30日";
//			sendEmail(adminEmail, adminPassword, newUserEmail, subject, body);
//
//			// 关闭 Store 对象
//			store.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		// 在注册页面中验证用户输入的验证码是否正确
//		String userInputCode = "123456"; // 用户输入的验证码
//		if (userInputCode.equals(verificationCode)) {
//			// 将新用户的信息存储到数据库中
//			String username = "newuser"; // 用户名
//			String password = "password"; // 密码
//			saveUserToDatabase(newUserEmail, username, password);
//		} else {
//			// 验证码不正确，提示用户重新输入
//		}
//	}
//
//	// 生成随机验证码
//	private static String generateRandomCode() {
//		StringBuilder sb = new StringBuilder();
//		Random random = new Random();
//		for (int i = 0; i < 6; i++) {
//			sb.append(random.nextInt(10));
//		}
//		return sb.toString();
//	}
//
//	// 发送邮件
//	private static void sendEmail(String fromEmail, String fromPassword, String toEmail, String subject, String body) {
//		String host = "mail.cstnet.cn"; // SMTP 服务器地址
//
//		// 配置连接属性
//		Properties properties = new Properties();
//		properties.setProperty("mail.smtp.host", host);
//		properties.setProperty("mail.smtp.port", "994");
//		properties.setProperty("mail.smtp.auth", "true");
//		properties.setProperty("mail.smtp.starttls.enable", "true");
//
//		// 获取会话对象
//		Session session = Session.getInstance(properties, new Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(fromEmail, fromPassword);
//			}
//		});
//
//		try {
//			// 创建邮件对象
//			Message message = new MimeMessage(session);
//			message.setFrom(new InternetAddress(fromEmail));
//			message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
//			message.setSubject(subject);
//			message.setText(body);
//
//			// 发送邮件
//			Transport.send(message);
//
//			System.out.println("Email sent successfully.");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//	// 将用户信息存储到数据库中
//	private static void saveUserToDatabase(String email, String username, String password) {
//		// 实现数据库存储功能
//	}
//}
//
