package org.hub.mapper;

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
// Java Config
// @ContextConfiguration(classes = {org.hub.config.RootConfig.class} )
@Log4j
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testPaging() {

		Criteria cri = new Criteria();
		
		// 10개씩 3페이지
		cri.setPageNum(3);
		cri.setAmount(10);

		List<BoardVO> list = mapper.getListWithPaging(cri);

		list.forEach(board -> log.info(board));
	}
	
	  @Test
	  public void testSearch() {

	    Criteria cri = new Criteria();
	    cri.setKeyword("새로");
	    cri.setType("TC");

	    List<BoardVO> list = mapper.getListWithPaging(cri);

	    list.forEach(board -> log.info(board));
	  }
	  
	  // 게시글 목록 보기 테스트 
	  @Test
	  public void testgetList() {
		  List<BoardVO> list = mapper.getList();
		  list.forEach(board-> log.info(board));
	  }


}