package org.hub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jdk.internal.org.jline.utils.Log;

@Controller
public class BoardController {
		
	@GetMapping("/main")
	public void getMain() {
		System.out.println("main으로 이동");
		Log.info("main 이동");
	}
}
