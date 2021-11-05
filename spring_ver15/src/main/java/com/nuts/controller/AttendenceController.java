package com.nuts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nuts.domain.AttendenceVO;
import com.nuts.domain.BoardVO;
import com.nuts.service.AttendenceService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/attendence/*")
@AllArgsConstructor
public class AttendenceController {
	
	private AttendenceService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		
		model.addAttribute("list", service.getAttendenceList());
		
	}
	
	@PostMapping("/list")
	public String list(AttendenceVO avo, RedirectAttributes rttr) {
		service.insert(avo);

		rttr.addFlashAttribute("result");
		return "redirect:/attendence/list";
	}
	

	// @GetMapping({ "/get", "/modify" })
	// public void get(@RequestParam("bno") Long bno, Model model) {
	//
	// log.info("/get or modify ");
	// model.addAttribute("board", service.get(bno));
	// }
	
	@GetMapping("/listId")
	public void listId(Model model, String userId) {
		
		model.addAttribute("list", service.getAttendenceListbyId(userId));
		//model.addAttribute("list", service.getAttendenceListbyId(usid);
		
	}
	
}
