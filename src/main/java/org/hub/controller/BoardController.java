package org.hub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class BoardController {
		
	@GetMapping("/main")
	public String getMain() {
		System.out.println("main으로 이동");
		log.info("main 이동");
		
		return "main";
	}
}
