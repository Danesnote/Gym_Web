package com.nuts.component;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
public class MailComponents {
	
	private final JavaMailSender sender;
	
	@RequestMapping("/mail/send")
	public String sendMail() {
		
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo("fe26ming@gmail.com");
		msg.setSubject("hi");
		msg.setText("이것은 메일 내용");
		msg.setFrom("pcm072@gmail.com");
		
		sender.send(msg);
		return "send OK";
	}
	
	public boolean sendMail(String mail, String subject, String text) {
		
		boolean result = false;
		
		MimeMessagePreparator msg = new MimeMessagePreparator() {
			
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true,"UTF-8");
				mimeMessageHelper.setTo(mail);
				mimeMessageHelper.setSubject(subject);
				mimeMessageHelper.setText(text, true);
			}
		};
		
		
		try {
			sender.send(msg);
			result = true;
		}catch( Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}
}

