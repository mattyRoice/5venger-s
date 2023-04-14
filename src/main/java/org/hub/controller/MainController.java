package org.hub.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.FieldVO;
import org.hub.domain.PageDTO;
import org.hub.domain.StackVO;
import org.hub.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class MainController {

	@Autowired
	private BoardService service;

	@GetMapping("/main")
	public String getMain(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, Model model) {
		System.out.println("main으로 이동");
		log.info("main 이동");

		List<BoardVO> boardList = service.getList(cri);
		model.addAttribute("board", boardList);

		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "main";
	}

//	@GetMapping("/register")
//	public String getRegister() {
//		System.out.println("새 글쓰기로 이동");
//		log.info("새 글쓰기로 이동");
//
//		return "register";
//	}

}
