package org.hub.task;

import org.hub.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j;

@Log4j
@Component
public class BoardStatusCheckTask {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Scheduled(cron="0 0 0 * * *")
	private void checkBoardStatus() throws Exception {
		// 매일 오전 0시에 작동
		log.warn("Board Status Check Task run  . . . . . ");
		log.warn("= = = = = = = = = = = = = = = = ");			
		
		// 마감일자 지난 게시글의 status 값을 'closed'로 변경
		boardMapper.updateBoardStatus();
	}		
	
	
}
