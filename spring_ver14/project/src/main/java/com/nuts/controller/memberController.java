package com.nuts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/member/*")
@Controller
@Log4j
@RequiredArgsConstructor
public class memberController {

	
	@GetMapping("/home")
	public void main() {
		
		log.info("------------member home page-----------");
	}
}
