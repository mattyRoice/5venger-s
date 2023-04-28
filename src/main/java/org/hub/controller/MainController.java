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
	
	@GetMapping("/main")
	public String getMain(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, @RequestParam(name="filter[]", required=false) String filter, Model model) {
		System.out.println("main으로 이동");
		log.info("main 이동");
		
		String[] filters = new String[0];
		
		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		if(filter == null){
			List<BoardVO> boardList = service.getList(cri);
			model.addAttribute("board", boardList);
		} else if (filter != null) {
			
			filter = filter.toLowerCase();
			filters = filter.split(",");
			
			System.out.println(Arrays.toString(filters));
			
			cri.setFilters(filters);
			
			List<BoardVO> boardList = service.getListWithFilter(cri);
			
			model.addAttribute("board", boardList);
			
			return "mainWithFilter";
		}		
		
		return "main";
	}

}
