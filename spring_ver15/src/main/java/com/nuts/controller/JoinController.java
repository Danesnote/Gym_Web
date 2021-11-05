package com.nuts.controller;


import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.nuts.domain.JoinVO;


import com.nuts.service.JoinService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor
public class JoinController {
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	private JoinService service;

	@GetMapping("/join")
//	@PreAuthorize("isAuthenticated()")
	public void join() {

	}
	
	@PostMapping("/join")
//	@PreAuthorize("isAuthenticated()")
	public String join(JoinVO join) {

		log.info("==========================");

		log.info("join: " + join); 

//		if (vo.getAttachList() != null) {
//
//			vo.getAttachList().forEach(attach -> log.info(attach));
//
//		} // 어태치 리스트는 업로드 부분

		log.info("==========================");
		
		// 회원가입 암호화 쿼리 
		
		String rawPw = ""; // 인코딩 전
		String encodePw = ""; // 후
		
		rawPw = join.getPassword(); // 비밀번호 얻음
		encodePw = pwEncoder.encode(rawPw); // 인코딩
		join.setPassword(encodePw); // 인코딩 후 저장
		join.setEmail_auth_key(UUID.randomUUID().toString());
		
		service.join(join);
//		//		rttr.addFlashAttribute("result", vo.getBno());

		return "redirect:/member/list";
	}
	
	@GetMapping("/email-auth")
	public String emailAuth(Model model, HttpServletRequest request) {
		
		String uuid = request.getParameter("id");
		System.out.println(uuid);
		
		boolean result = service.emailAuth(uuid);
		System.out.println(result);
		model.addAttribute("result", result);
		
		return "/email_auth";
	}
	
}
