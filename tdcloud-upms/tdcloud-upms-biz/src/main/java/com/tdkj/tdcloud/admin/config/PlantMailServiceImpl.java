package com.tdkj.tdcloud.admin.config;

import com.tdkj.tdcloud.admin.api.entity.EmailSender;
import com.tdkj.tdcloud.admin.service.PlantMailService;
import com.tdkj.tdcloud.common.core.util.R;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/**
 * 实现qq邮箱发送
 */
@Service
public class PlantMailServiceImpl implements PlantMailService {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Resource
	private JavaMailSenderImpl sender;

	@Value("${spring.mail.username}")
	private String from;

	private static Properties pro;

	@Resource
	private RedisTemplate redisTemplate;

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
	public void sendSimpleMail(EmailSender emailSender) {

		sender.setJavaMailProperties(pro);

		MimeMessage message = sender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setFrom(from); // 发送人
			helper.setTo(emailSender.getToEmail()); // 收件人
			helper.setSubject("【网络资源申请管理平台】"); // 标题
			// TODO: 使用安全的随机数生成器生成验证码
			Random rand = new Random();
			int num = rand.nextInt(900000) + 100000;
			Date currentDate = new Date();
			SimpleDateFormat y = new SimpleDateFormat("yyyy");
			SimpleDateFormat m = new SimpleDateFormat("MM");
			SimpleDateFormat d = new SimpleDateFormat("dd");
			if ("register".equals(emailSender.getEmailType())){
				String textContent = "亲爱的"+emailSender.getName()+", 您好！\n" +
						"您在中国科学院昆明植物研究所一体化云服务平台的注册验证码为%s，请前往服务平台完成注册验证，谢谢！\n" +
						"此邮件由系统自动发出,请勿直接回复。\n" +
						"如果在使用中遇到问题,请发邮件到 jintao@mail.kib.ac.cn ,我们将尽快回复。\n" +
						"感谢您的访问,祝您使用愉快!\n" +
						"科技信息中心\n" +
						""+y.format(currentDate)+"年"+m.format(currentDate)+"月"+d.format(currentDate)+"日";
				helper.setText(String.format(textContent, num)); // 内容
				redisTemplate.opsForValue().set(emailSender.getToEmail() + emailSender.getEmailType(), String.valueOf(num), 300, TimeUnit.SECONDS);//随机验证码
			}
			if ("applyAgree".equals(emailSender.getEmailType())){
				String textContent = "亲爱的"+emailSender.getName()+", 您好！\n" +
						"您在中国科学院昆明植物研究所一体化云服务平台申请的云服务器已经审核通过，请前往服务平台打印服务申请书，签字后送至科技信息中心307室，谢谢！\n" +
						"此邮件由系统自动发出,请勿直接回复。\n" +
						"如果在使用中遇到问题,请发邮件到 jintao@mail.kib.ac.cn ,我们将尽快回复。\n" +
						"感谢您的访问,祝您使用愉快!\n" +
						"科技信息中心\n" +
						""+y.format(currentDate)+"年"+m.format(currentDate)+"月"+d.format(currentDate)+"日";
				helper.setText(textContent); // 内容
				//redisTemplate.opsForValue().set(emailSender.getToEmail() + emailSender.getEmailType(), String.valueOf(num), 300, TimeUnit.SECONDS);//随机验证码
			}
			if ("applyRefuse".equals(emailSender.getEmailType())){
				String textContent = "亲爱的"+emailSender.getName()+", 您好！\n" +
						"您在中国科学院昆明植物研究所一体化云服务平台申请的云服务器审核未通过，请前往服务平台检查申请内容后重新提交申请，谢谢！\n" +
						"此邮件由系统自动发出,请勿直接回复。\n" +
						"如果在使用中遇到问题,请发邮件到 jintao@mail.kib.ac.cn ,我们将尽快回复。\n" +
						"感谢您的访问,祝您使用愉快!\n" +
						"科技信息中心\n" +
						""+y.format(currentDate)+"年"+m.format(currentDate)+"月"+d.format(currentDate)+"日";
				helper.setText(textContent); // 内容
				//redisTemplate.opsForValue().set(emailSender.getToEmail() + emailSender.getEmailType(), String.valueOf(num), 300, TimeUnit.SECONDS);//随机验证码
			}
			sender.send(message);
			logger.info("邮件已经发送。");
		} catch (MessagingException e) {
			logger.error("发送邮件时发生异常！", e);
			e.printStackTrace();
		} catch (Exception e) {
			logger.error("发送简单邮件时发生异常！", e);
			e.printStackTrace();
		}

	}

//	@Override
//	public R userRegister(EmailSender emailSender) {
//		String code = (String)redisTemplate.opsForValue().get(emailSender.getToEmail() + "register");
//		if (!emailSender.getCode().equals(code)){
//			return R.failed("验证码错误");
//		}
//
//		return null;
//	}

}
