package org.hub.controller;

import javax.servlet.http.HttpSession;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.FieldVO;
import org.hub.domain.PageDTO;
import org.hub.domain.StackVO;
import org.hub.domain.UserVO;
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
public class BoardController {
	
	public static final String LOGIN = "loginUser"; //이름이 loginUser인 세션
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/register")
	public String registerView(HttpSession session) throws Exception {
		UserVO user = (UserVO)session.getAttribute(LOGIN);
		
		log.info("새 글쓰기로 이동");
		return "register";
	}
	
	@PostMapping("/register")
	public String registerProc(BoardVO board, HttpSession session) {
		System.out.println("글 등록 컨트롤러");
		System.out.println();
		System.out.println(session.getId());
		
		UserVO user = (UserVO)session.getAttribute(LOGIN);
		
		String uidkey = user.getUidKey();
		System.out.println(uidkey);
		board.setUidkey(uidkey);
		
		if(board.getFnames() != null) {
			String[] fnameList = board.getFnames().split(",");
			for(String fname : fnameList) {
				log.info(fname);
			}
		}
		
		if(board.getSnames() != null) {
			String[] snameList = board.getSnames().split(",");
			for(String sname : snameList) {
				log.info(sname);
			}
		}
		
		service.register(board);
		return "main";
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
		
		return "redirect:/board/main";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") int bno, Criteria cri, RedirectAttributes rttr) {
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
	public void get(@RequestParam("bno") int bno, @RequestParam("sno") int sno, @RequestParam("fno") int fno ,@ModelAttribute("cri") Criteria cri, Model model) {
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

