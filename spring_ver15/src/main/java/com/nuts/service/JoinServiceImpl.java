package com.nuts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nuts.component.MailComponents;
import com.nuts.domain.JoinVO;
import com.nuts.mapper.JoinMapper;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RequiredArgsConstructor
@Log4j
@Service
public class JoinServiceImpl implements JoinService {
	
	
	private final MailComponents mailComponents;
	
	
	@Setter(onMethod_ = @Autowired)
	private JoinMapper mappers;
	
	@Transactional
	@Override
	public void join(JoinVO join) {

		log.info("join......" + join);

		mappers.insert(join);
		
//		String email = join.getUserid();
//		String uuid = join.getEmail_auth_key();
//		String subject = "wiseNut 사이트 가입을 축하드립니다.";
//		String text = "<p>wiseNut 사이트 가입을 축하드립니다.</p><p>아래 링크를 클릭하셔서 가입을 완료 하세요.</p>"
//				+"<div><a href='http://localhost:8080/email-auth?id=" + uuid + "'>가입완료 </a></div>";
//		mailComponents.sendMail(email, subject, text);
		
		String email = join.getUserid();
		String uuid = join.getEmail_auth_key();
		String subject = "wiseNut 사이트 가입을 축하드립니다.";
		String text = "<div class=\"column\"\r\n" + 
				"	style=\"text-align: left; color: #8f8f8f; font-size: 16px; line-height: 24px; font-family: Open Sans, sans-serif; background-color: #151515\">\r\n" + 
				"\r\n" + 
				"	<div style=\"Margin-left: 20px; Margin-right: 20px; Margin-top: 24px;\">\r\n" + 
				"		<div\r\n" + 
				"			style=\"mso-line-height-rule: exactly; mso-text-raise: 11px; vertical-align: middle;\">\r\n" + 
				"			<h1\r\n" + 
				"				style=\"Margin-top: 0; Margin-bottom: 30px; font-style: normal; font-weight: normal; color: white; font-size: 28px; line-height: 36px; text-align: center;\">WELCOME\r\n" + 
				"				TO <STRONG style='color:#F36100;' >WISENUT</STRONG> GYM</h1>\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div style=\"Margin-left: 20px; Margin-right: 20px;\">\r\n" + 
				"		<div\r\n" + 
				"			style=\"mso-line-height-rule: exactly; line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div\r\n" + 
				"		style=\"font-size: 12px; font-style: normal; font-weight: normal; line-height: 19px;\"\r\n" + 
				"		align=\"center\">\r\n" + 
				"		<img\r\n" + 
				"			style=\"border: 0; display: block; height: auto; width: 100%; max-width: 900px;\"\r\n" + 
				"			alt=\"\" width=\"600\"\r\n" + 
				"			src=\"https://i1.createsend1.com/ei/y/BE/D96/FAD/200949/csfinal/hero-2-9900000000079e3c.jpg\">\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div style=\"Margin-left: 20px; Margin-right: 20px; Margin-top: 20px;\">\r\n" + 
				"		<div\r\n" + 
				"			style=\"mso-line-height-rule: exactly; line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div style=\"Margin-left: 20px; Margin-right: 20px;\">\r\n" + 
				"		<div\r\n" + 
				"			style=\"mso-line-height-rule: exactly; mso-text-raise: 11px; vertical-align: middle;\">\r\n" + 
				"			<h2\r\n" + 
				"				style=\"Margin-top: 0; Margin-bottom: 0; font-style: normal; font-weight: normal; color: #706f70; font-size: 18px; line-height: 26px; font-family: Cabin, Avenir, sans-serif;\">\r\n" + 
				"				<strong>귀화의 회원 가입이 성공적으로 해결되었습니다.</strong>\r\n" + 
				"			</h2>\r\n" + 
				"			<p style=\"Margin-top: 16px; Margin-bottom: 0; color: #706f70\">저희 사이트에 가입을 해주셔서\r\n" + 
				"				감사드립니다. 저희는 여러분의 운동을 도와줄 것입니다.</p>\r\n" + 
				"			<p style=\"Margin-top: 20px; Margin-bottom: 20px; color: #706f70\">회원님의 계정을 활성화하기\r\n" + 
				"				위해서 아래에 버튼을 눌러주시기 바라겠습니다.</p>\r\n" + 
				"		</div>\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div style=\"Margin-left: 20px; Margin-right: 20px;\">\r\n" + 
				"		<div\r\n" + 
				"			style=\"mso-line-height-rule: exactly; line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"	<div\r\n" + 
				"		style=\"Margin-left: 20px; Margin-right: 20px; Margin-bottom: 24px;\">\r\n" + 
				"		<div class=\"btn btn--flat btn--large\" style=\"text-align: center;\">\r\n" + 
				"			<!--[if !mso]-->\r\n" + 
				"			<a " + 
				"				style=\"border-radius: 4px; display: inline-block; font-size: 14px; font-weight: bold; line-height: 24px; padding: 12px 24px; text-align: center; text-decoration: none !important; transition: opacity 0.1s ease-in; color: #ffffff !important; background-color: #e45d6b; font-family: Open Sans, sans-serif;\"\r\n" + 
				"				href='http://localhost:8080/email-auth?id=" + uuid + "'>계정 활성화</a>" + 
				"		</div>" + 
				"	</div>\r\n" + 
				"\r\n" + 
				"</div>";
		
		mailComponents.sendMail(email, subject, text);

//
//		if (board.getAttachList() == null || board.getAttachList().size() <= 0) {
//			return;
//		}

//		board.getAttachList().forEach(attach -> {
//
//			attach.setBno(board.getBno());
//			attachMapper.insert(attach);
//		});
	}

	@Override
	public boolean emailAuth(String uuid) {
		
		mappers.emailAuth(uuid);
		
		
		
		
		return false;
	}

}
