package org.hub.controller;


import org.hub.domain.AdminVO;
import org.hub.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// 아이디 중복 검사
	@PostMapping("/adminIdChk")
	@ResponseBody
	public String memberIdChkPOST(String adminId) throws Exception{
		log.info("adminIdChk() 진입");
		int result = adminservice.idCheck(adminId);
		log.info("결과값 = " + result);
		if(result != 0) {
			return "fail";	// 중복 아이디가 존재
		} else {
			return "success";	// 중복 아이디 x
		}
	}
	
}
