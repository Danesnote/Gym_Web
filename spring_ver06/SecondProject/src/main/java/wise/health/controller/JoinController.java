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

	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	@Inject
	JoinService service;
	
	// 회원가입 폼으로 이동할 떄는 get 메서드
	@RequestMapping(value = "/join", method = {RequestMethod.GET})
	public void getRegister() throws Exception {
		logger.info("get join");
		
	}
	
	// 회원가입 버튼을 누르면 post 메서드
	@RequestMapping(value = "/join", method = {RequestMethod.POST})
	public String postRegister(JoinVO vo) throws Exception {
		logger.info("post join");
		
		service.join(vo);
		
		return "customLogin";
	}
}
