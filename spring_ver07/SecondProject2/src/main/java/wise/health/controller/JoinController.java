package wise.health.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import wise.health.domain.BoardAttachVO;
import wise.health.domain.BoardVO;
import wise.health.domain.Criteria;
import wise.health.domain.JoinVO;
import wise.health.domain.PageDTO;
import wise.health.service.BoardService;
import wise.health.service.JoinService;

@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor
public class JoinController {

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

		service.join(join);

//		rttr.addFlashAttribute("result", vo.getBno());

		return "redirect:/board/list";
	}
	
}
