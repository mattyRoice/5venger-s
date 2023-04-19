package org.hub.mapper;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.Ticket;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.google.gson.Gson;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class BoardMapperTests {

	@Setter(onMethod_ = {@Autowired})
	private BoardMapper mapper;
	
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testConvert() throws Exception {
		Ticket ticket = new Ticket();
		ticket.setTno(123);
		ticket.setOwner("Admin");
		ticket.setGrade("AAA");
		
		String jsonStr = new Gson().toJson(ticket);
		
		log.info(jsonStr);
		
		System.out.println(1);
		
		mockMvc.perform(post("/board/ticket")
			.contentType(MediaType.APPLICATION_JSON)
			.content(jsonStr))
			.andExpect(status().is(200));
		
		System.out.println(2);
	}
	
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
	public void testInsert() {
//		String date = "23-04-19";
		
		BoardVO board = new BoardVO();
		
//		SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");
//		Date format = sdf.parse(date);
//		log.info("date ==================== " + format);
		
		board.setMeet("온라인");
		board.setMemberNum("5명");
		board.setContact("kakao");
		board.setPeriod("6개월");
		board.setTitle("테스트 제목1");
		board.setUidkey("2747264832");
		board.setContent("테스트내용1");
		
		System.out.println("1");
		
		mapper.insert(board);
		
		System.out.println("2");
		
		log.info(board);
	}
	
	  @Test
	  public void testSearch() {

	    Criteria cri = new Criteria();
	    cri.setKeyword("새로");
	    cri.setType("TC");

	    List<BoardVO> list = mapper.getListWithPaging(cri);

	    list.forEach(board -> log.info(board));
	  }
	  
}