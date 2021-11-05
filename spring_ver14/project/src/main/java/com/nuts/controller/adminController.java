package com.nuts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nuts.domain.AdminVO;
import com.nuts.domain.JoinVO;
import com.nuts.service.AdminService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/admin/*")
@Controller
@Log4j
@RequiredArgsConstructor
public class adminController {
	private final AdminService service;
	
	@GetMapping("/home")
	public void main() {
		
		log.info("------------admin home page-----------");
	}
	
	@GetMapping("/exile")
	public void exile() {
		
		log.info("------------exile page-----------");
	}
	
	@PostMapping("/exile")
	public String exile(@RequestParam("userid") String userid, RedirectAttributes rttr) {
			
		log.info("==========================");

		log.info("exile: " + userid); 

		log.info("==========================");
		
		if (service.exile(userid)) {
			rttr.addFlashAttribute("result", "success");
		} //삭제 후 페이지 이동을 위해 
		return "redirect:/admin/management";
	}
	
	@GetMapping("/management")
	public void list(Model model) {
		
		log.info("list.....................");
		
		model.addAttribute("list", service.getList());
	}
}
