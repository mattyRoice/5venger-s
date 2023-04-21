package org.hub.service;

import java.util.List;

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
public class BoardServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	/*
	 * @Test public void testInterest() { List<Integer> list = service.getInterest();
	 * log.info("Service testInterest(0) " + list.get(0));
	 * log.info("Service testInterest(1) " + list.get(1)); }
	 */
	
	@Test 
	public void testLike() {
		List<Integer> like = service.getLike();
		log.info("Service testInterest" + like);  
	}     
}