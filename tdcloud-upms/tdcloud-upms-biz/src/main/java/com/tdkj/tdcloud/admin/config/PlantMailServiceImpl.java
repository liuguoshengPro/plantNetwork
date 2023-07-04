package com.tdkj.tdcloud.admin.config;

import com.tdkj.tdcloud.admin.api.entity.EmailSender;
import com.tdkj.tdcloud.admin.api.entity.SysUser;
import com.tdkj.tdcloud.admin.mapper.SysUserMapper;
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

	@Resource
	private SysUserMapper sysUserMapper;

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
		pro.put("mail.smtp.ssl.protocols", "TLSv1.2");
		pro.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	}

	@Override
	public R sendSimpleMail(EmailSender emailSender) {
		sender.setJavaMailProperties(pro);

		MimeMessage message = sender.createMimeMessage();

		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setFrom(from); // 发送人
			helper.setTo(emailSender.getToEmail()); // 收件人
			helper.setSubject("【中国科学院昆明植物研究所一体化云服务平台】"); // 标题
			// TODO: 使用安全的随机数生成器生成验证码
			Random rand = new Random();
			int num = rand.nextInt(900000) + 100000;
			Date currentDate = new Date();
			SimpleDateFormat y = new SimpleDateFormat("yyyy");
			SimpleDateFormat m = new SimpleDateFormat("MM");
			SimpleDateFormat d = new SimpleDateFormat("dd");
			if ("register".equals(emailSender.getEmailType())){
				int i1 = sysUserMapper.getUserVoByEmail(emailSender.getToEmail());
				if (i1==1){
					return R.failed("邮箱已被注册");
				}
				String textContent = "亲爱的"+emailSender.getName()+", 您好！\n" +
						"您在中国科学院昆明植物研究所一体化云服务平台的注册验证码为%s，\n" +
						"请前往服务平台完成注册验证，谢谢！\n" +
						"此邮件由系统自动发出,请勿直接回复。\n" +
						"如果在使用中遇到问题,请发邮件到 jintao@mail.kib.ac.cn ,我们将尽快回复。\n" +
						"感谢您的访问,祝您使用愉快!\n" +
						"科技信息中心\n" +
						""+y.format(currentDate)+"年"+m.format(currentDate)+"月"+d.format(currentDate)+"日";
				helper.setText(String.format(textContent, num)); // 内容
				redisTemplate.opsForValue().set(emailSender.getToEmail() + emailSender.getEmailType(), String.valueOf(num), 300, TimeUnit.SECONDS);//随机验证码

			}

			if ("forgetPassword".equals(emailSender.getEmailType())){
				SysUser sysUserByEmail = sysUserMapper.getSysUserByEmail(emailSender.getToEmail());
				if (sysUserByEmail==null){
					return R.failed("邮箱不存在");
				}
				String textContent = "亲爱的"+sysUserByEmail.getName()+", 您好！\n" +
						"您在中国科学院昆明植物研究所一体化云服务平台的验证码为%s，\n" +
						"请前往服务平台完成密码修改，谢谢！\n" +
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
						"您在中国科学院昆明植物研究所一体化云服务平台申请的"+ emailSender.getItemType() +"已经审核通过，请前往服务平台打印服务申请书，签字后送至科技信息中心307室，谢谢！\n" +
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
						"您在中国科学院昆明植物研究所一体化云服务平台申请的"+ emailSender.getItemType() +"审核未通过，请前往服务平台检查申请内容后重新提交申请，谢谢！\n" +
						"此邮件由系统自动发出,请勿直接回复。\n" +
						"如果在使用中遇到问题,请发邮件到 jintao@mail.kib.ac.cn ,我们将尽快回复。\n" +
						"感谢您的访问,祝您使用愉快!\n" +
						"科技信息中心\n" +
						""+y.format(currentDate)+"年"+m.format(currentDate)+"月"+d.format(currentDate)+"日";
				helper.setText(textContent); // 内容
				//redisTemplate.opsForValue().set(emailSender.getToEmail() + emailSender.getEmailType(), String.valueOf(num), 300, TimeUnit.SECONDS);//随机验证码
			}

			//到期提醒
			if ("applyExpire".equals(emailSender.getEmailType())){
				SimpleDateFormat year = new SimpleDateFormat("yyyy");
				SimpleDateFormat month = new SimpleDateFormat("MM");
				SimpleDateFormat day = new SimpleDateFormat("dd");
				String year1 = year.format(emailSender.getExpireTime());
				String month1 = month.format(emailSender.getExpireTime());
				String day1 = day.format(emailSender.getExpireTime());
				String textContent = "亲爱的"+emailSender.getName()+", 您好！\n" +
						"您在中国科学院昆明植物研究所一体化云服务平台申请的"+ emailSender.getItemType() +"将于"+year1+"年"+month1+"月"+day1+"日到期\n" +
						"为避免到期后业务关停，请尽快前往云服务平台续签协议，谢谢！\n" +
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
		return R.ok("发送成功");
	}

}

