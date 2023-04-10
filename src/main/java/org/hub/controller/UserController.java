package org.hub.controller;

import org.hub.domain.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class UserController {
	
	@GetMapping(value= "/login")
	public String login() throws Exception {
		log.info("= = user login = = ");
		return "userLogin";
	}
	
	@GetMapping(value= "/register")
	public String register() {		
		log.info("= = Get user Register = = ");
		return "userRegister";
	}
	
	@PostMapping(value= "/register")
	public String register(UserVO user, RedirectAttributes rttr) {
		log.info("= = Post user Register = = ");
		log.info("register: " + user);
		
		if (user.getAttatchList() != null) {
			user.getAttatchList().forEach(attach->log.info(attach));
		}
		
		// service.register
		// rttr.addFlashAttribute("result", "회원가입 되었습니다.");
		// 회원가입 완료 후 메인 페이지로 이동
		return "redirect:/main";
	}
	
	@GetMapping(value="/interest")
	public String interest() {
		log.info("====== ");
		return "interest";
	}
	
	@GetMapping(value= "/mypage")
	public String mypageSet() {		
		log.info("= = user mypage = = ");
		return "userMypage";
	}
	
	
}
