package org.hub.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hub.domain.AdminVO;
import org.hub.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j

public class AdminController {
	
	@Autowired
	private AdminService adminservice;
	
	public static final String LOGINADMIN = "loginAdmin";
	
	// 로그인 화면
	@GetMapping("/login")
	public String loginView() {
		log.info("관리자 로그인 화면");
		return "/adminLogin";
	}
	
	// 로그인
	@PostMapping("/login")
    public String loginPOST(HttpServletRequest request, AdminVO admin, RedirectAttributes rttr) throws Exception{
        log.info("login 메서드 진입");
        log.info("전달된 데이터: " + admin);
        
        HttpSession session = request.getSession();
        AdminVO avo = adminservice.adminLogin(admin);
        
        if(avo == null) {					  // 일치하지 않는 아이디,비밀번호 입력
            int result = 0;
            rttr.addFlashAttribute("result", result);
            return "redirect:/admin/login";
        }
        
        session.setAttribute(LOGINADMIN, avo);  // 일치하는 아이디,비밀번호 (로그인 성공)
        return "redirect:/board/main";
    }
	
	// 로그아웃
	@GetMapping("/logout")
    public String logout(HttpSession session) throws Exception{
	 	log.info("logout 메서드 진입");
	 	session.removeAttribute(LOGINADMIN);
        session.invalidate();
        
        return "redirect:/board/main";
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
			return "fail";		// 중복 아이디가 존재
		} else {
			return "success";	// 중복 아이디 x
		}
	}
	
}
