package org.hub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		log.info("= = user Register = = ");
		return "userRegister";
	}
	
	@GetMapping(value="/interst")
	public String interest() {
		log.info("====== ");
		return "interest";
	}
}
