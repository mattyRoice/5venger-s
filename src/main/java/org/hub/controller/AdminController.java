package org.hub.controller;


import org.hub.domain.AdminVO;
import org.hub.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j

public class AdminController {
	
	@Autowired
	private AdminService adminservice;
	
	// 로그인 화면
	@GetMapping("/login")
	public String loginView() {
		log.info("관리자 로그인 화면");
		return "/adminLogin";
	}
	
	
	// 회원가입 화면
	@GetMapping("/createAccount")
	public String adminJoinView() {
		log.info("관리자 회원가입 화면");
		return "/adminInsert";
	}
	
	// 회원가입
	@PostMapping("/createAccount")
	public String adminJoin(AdminVO admin) throws Exception { 
		log.info("관리자 회원가입 서비스 진입");
	  
		// 회원가입 서비스 실행 
		adminservice.adminJoin(admin);
	  
		log.info("관리자 회원가입 성공");
	  
		return "redirect:/admin/login"; 
		
	}
	 
	
}
