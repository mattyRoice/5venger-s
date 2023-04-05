package org.hub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j

public class AdminUserCotroller {
	
	@GetMapping("/login")
	public String adminLogin() {
		log.info("관리자 로그인 테스트");		
		return "/adminLogin";
	}
	
	@GetMapping("/createAccount")
	public String adminInsert() {
		log.info("관리자 회원가입 테스트");
		return "/adminInsert";
	}
	
}
