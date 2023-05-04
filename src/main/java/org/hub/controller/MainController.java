package org.hub.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.PageDTO;
import org.hub.domain.UserVO;
import org.hub.interceptor.SessionNames;
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
	public String getMain(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, Model model, HttpSession session) {

		log.info("main 이동");
		
		// 메인페이지의 기본은 '모집중 on' 상태
		cri.setStatus(true);
		
		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
	
		List<BoardVO> boardList = service.getList(cri);
		
		model.addAttribute("board", boardList);
		
		UserVO user = (UserVO)session.getAttribute(SessionNames.LOGIN);
		if(user != null) {
			String useridKey = user.getUidKey(); 
			List<Integer> interestList = service.getInterest(useridKey);
			model.addAttribute("interestList", interestList);
		}
		
		// 글이 없을 때 ('모집중 on' 이 기본 값이라 넣음)
		if(boardList.size() <= 0) {
			return "mainNone";
		} 
		
		return "main";
	}
	
	// 필터작용
	@GetMapping("/mainWithFilter")
		public String getMainWithFilter(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, @RequestParam(name="filter[]", required=false) String filter, @RequestParam(name="position", required=false) String position, @RequestParam(name="deadline", required=false) boolean deadline, Model model) {
			log.info("mainWithFilter 이동 : " + position);
			
			// 뷰단에서 받은 필터값들을 담을 String 배열
			String[] filters = new String[0];
			
			// positionSelected 값이 '전체'이면 true, '전체 외' 이면 False
			log.info("뷰단에서 넘어오는 position" + position);
			boolean positionFlag = (position == "");
			log.info("positionFlag 값 확인 : " + positionFlag);
			
			// 뷰단에서 넘어오는 deadline은 'true'이면 '모집중인 글만 보기 on', false이면 모든 글 보기 
			log.info("deadline Toggle 값 확인 : " + deadline);
			
			// '모집글만 on' 이라면, cri에 true set하기
			if(deadline) {
				cri.setStatus(true);
			}
			
			// 전제 1) 모집글 on이면, status=opend인 게시글 안에서 filter 2) 모집글 on이 아니면, 모든 게시글 안에서 filter 
			// 기준1(기본세팅) : 1) 선택한 스택이 없음 2) 모집분야가 '전체' 3) 모든 글 보기
			if((filter == null) && positionFlag){
				
				// 페이징
				int total = service.getTotal(cri);
				log.info("기준1 total: " + total);
				model.addAttribute("pageMaker", new PageDTO(cri, total));
				
				// 게시글 불러오기
				List<BoardVO> boardList = service.getList(cri);
				model.addAttribute("board", boardList);
				
			} else if((filter == null) && !positionFlag) {
			// 기준2 : 1) 선택한 스택이 없음 2) 모집 분야가 '전체 외'
				
				// 페이징
				cri.setPosition(position);
				int total = service.getTotal(cri);
				log.info("기준2 total: " + total);
				model.addAttribute("pageMaker", new PageDTO(cri, total));
				
				// 게시글 불러오기
				List<BoardVO> boardList = service.getListWithFilter(cri);
				model.addAttribute("board", boardList);
				
				// 2-1. 관련 글이 있을 때
				if (boardList.size() > 0) {
					model.addAttribute("board", boardList);
					return "mainWithFilter";
				} else {
					// 2-2. 관련 글이 없을 때
					return "mainNone";
				}
				
			} else if ((filter != null) && positionFlag) {
				// 기준3 : 1) 선택한 스택이 있음 2) 모집 분야가 '전체'
				
				// 뷰단에서 받은 필터값
				filter = filter.toLowerCase();
				filters = filter.split(",");
				
				// 페이징
				cri.setFilters(filters);		
				int total = service.getTotalWithFilter(cri);
				log.info("기준3 total: " + total);
				model.addAttribute("pageMaker", new PageDTO(cri, total));
				
				// 게시글 불러오기
				List<BoardVO> boardList = service.getListWithFilter(cri);
				
				// 3-1. 선택한 스택 관련 글이 있을 때
				if(boardList.size()>0) {
					model.addAttribute("board", boardList);				
					return "mainWithFilter";
				} else {
					// 3-2. 선택한 스택 관련 글이 없을 때
					return "mainNone";
				}

			} else if ((filter != null) && !positionFlag) {
				// 기준4 : 1) 선택한 스택이 있음 2) 모집 분야가 '전체 외'
				
				// 뷰단에서 받은 필터값
				filter = filter.toLowerCase();
				filters = filter.split(",");
				
				// 페이징
				cri.setFilters(filters);
				cri.setPosition(position);
				int total = service.getTotalWithFilter(cri);
				log.info("기준total : " + total);
				model.addAttribute("pageMaker", new PageDTO(cri, total));
				
				// 게시글 불러오기
				List<BoardVO> boardList = service.getListWithFilter(cri);
				
				// 4-1. 선택한 스택 관련 글이 있을 때
				if(boardList.size()>0) {
					model.addAttribute("board", boardList);				
					return "mainWithFilter";
				} else {
					// 4-2. 선택한 스택 관련 글이 없을 때
					return "mainNone";
				}

			}	
			
			return "mainWithFilter";
		}

}
