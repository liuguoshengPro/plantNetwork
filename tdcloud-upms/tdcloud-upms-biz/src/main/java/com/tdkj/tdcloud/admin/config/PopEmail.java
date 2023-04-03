//package com.tdkj.tdcloud.admin.config;
//
//import javax.mail.*;
//import javax.mail.internet.*;
//import java.util.Properties;
//
//public class PopEmail {
//	public static void main(String[] args) {
//		String host = "mail.cstnet.cn"; // POP 服务器地址
//		String username = "message@mail.kib.ac.cn"; // 邮箱地址
//		String password = "P8YmnFMv7%zPRZ4A"; // 邮箱密码
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
//			store.connect(host, username, password);
//
//			// 获取收件箱 Folder 对象，并打开
//			Folder inbox = store.getFolder("INBOX");
//			inbox.open(Folder.READ_ONLY);
//
//			// 获取邮件数量
//			int messageCount = inbox.getMessageCount();
//			System.out.println("Total Messages: " + messageCount);
//
//			// 遍历邮件并输出主题和发送者
//			for (int i = 1; i <= messageCount; i++) {
//				Message message = inbox.getMessage(i);
//				System.out.println("Subject: " + message.getSubject());
//				System.out.println("From: " + message.getFrom()[0]);
//			}
//
//			// 关闭 Folder 和 Store 对象
//			inbox.close(false);
//			store.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//}
//
