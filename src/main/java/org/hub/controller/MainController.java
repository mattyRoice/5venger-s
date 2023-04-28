package org.hub.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.PageDTO;
import org.hub.domain.UserVO;
import org.hub.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class MainController {
	
	@Autowired
	private BoardService service;
	
	// 일반메인
	@GetMapping("/main")
	public String getMain(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("main 이동");
		
		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
	
		List<BoardVO> boardList = service.getList(cri);
		model.addAttribute("board", boardList);
		
		return "main";
	}
	
	// 필터작용
	@GetMapping("/mainWithFilter")
	public String getMainWithFilter(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, @RequestParam(name="filter[]", required=false) String filter, Model model) {
		log.info("mainWithFilter 이동");
		
		String[] filters = new String[0];
		
		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		// 1. 선택한 스택이 없을 때
		if(filter == null){
			List<BoardVO> boardList = service.getList(cri);
			model.addAttribute("board", boardList);
		} else if (filter != null) {
			// 2. 선택한 스택이 있을 때
			filter = filter.toLowerCase();
			filters = filter.split(",");
			
			System.out.println(Arrays.toString(filters));
			
			cri.setFilters(filters);
			
			List<BoardVO> boardList = service.getListWithFilter(cri);
			// 2-1. 선택한 스택 관련 글이 있을 때
			if(boardList.size()>0) {
				model.addAttribute("board", boardList);				
				return "mainWithFilter";
			} else {
				// 2-2. 선택한 스택 관련 글이 없을 때
				return "mainNone";
			}

		}		
		
		return "mainWithFilter";
	}

}
