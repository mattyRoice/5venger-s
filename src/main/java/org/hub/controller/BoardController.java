package org.hub.controller;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.PageDTO;
import org.hub.domain.StackVO;
import org.hub.domain.FieldVO;
import org.hub.service.BoardService;
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
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/main")
	public String getMain() {
		System.out.println("main으로 이동");
		log.info("main 이동");
		
		
		
		return "main";
	}
	@GetMapping("/register")
	public String getRegister() {
		System.out.println("새 글쓰기로 이동");
		log.info("새 글쓰기로 이동");
		
		return "register";
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board, StackVO stack, FieldVO field, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);
		log.info("modify:" + stack);
		log.info("modify:" + field);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, Criteria cri, RedirectAttributes rttr) {
		log.info("remove..." + bno);
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
	}
	 
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list: " + cri);
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
	}
	
	@GetMapping({ "/get", "/modify"})
	public void get(@RequestParam("bno") Long bno, @RequestParam("sno") Long sno, @RequestParam("fno") Long fno ,@ModelAttribute("cri") Criteria cri, Model model) {
		log.info("/get or modify");
		model.addAttribute("board", service.get(bno));
		model.addAttribute("stack", service.get(sno));
		model.addAttribute("field", service.get(fno));
	}
	
	@GetMapping("/reply")
	public String getboard() {
		System.out.println("reply으로 이동");
		log.info("reply 이동");

		return "reply";
	}
}

