package org.hub.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Setter(onMethod_ = {@Autowired })
	private BoardService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	/*
	 * @Test public void testRegister() { /// 등록 BoardVO board = new BoardVO();
	 * board.setTitle("Service 새로 작성하는 글"); board.setContent("Service 새로 작성하는 내용");
	 * board.setWriter("newbie"); service.register(board);
	 * 
	 * log.info("생성된 게시글의 번호 : " + board.getBno()); }
	 */
	
	@Test
	public void testGetlist() {
//		service.getList().forEach(board->log.info(board));
		service.getList(new Criteria(2,10)).forEach(board -> log.info(board));
	}
		
//	@Test
//	public void testGet() {
//		log.info(service.get(1L));
//	}
//	
//	@Test
//	public void testDelete() {
//		
//		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
//		log.info("REMOVE RESULT: " + service.remove(33L));
//		
//	}
//	
//	@Test
//	public void testUpdate() {
//		
//		BoardVO board = service.get(1L);
//		
//		if(board == null) {
//			return;
//		}
//		
//		board.setTitle("제목 수정합니다");
//		log.info("MODIFY RESULT: " + service.modify(board));
//	}
//	
	// 추천목록 bno 가져오기
	@Test 
	public void testGetRecommend() {
		String uidkey = "2746970236";
		List<Integer> interest = service.getRecommend(uidkey);
		log.info("Service testRecommend" + interest);
	}  
	
	// 관심목록 bno 가져오기
	@Test 
	public void testGetInterest() {
		String uidkey = "2746970236";
		List<Integer> interest = service.getInterest(uidkey);
		log.info("Service testInterest" + interest);  
	}  
	//향상된 for문, list뽑아오는거 리스트 받아와서 > 하나씩 bno로 뽑아와서 향상for문으로 mapper에 넣어서 가져옴. 
	
}
