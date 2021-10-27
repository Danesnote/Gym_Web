package com.nuts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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

	
	@GetMapping("/management")
	public void list(Model model) {
		
		log.info("list.....................");
		
		model.addAttribute("list", service.getList());
	}
}
