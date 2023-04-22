 package org.hub.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hub.domain.Criteria;
import org.hub.domain.ReplyVO;

public interface ReplyMapper {
	//kdh 4-21 작업시작 댓글 등록 
	public int insert(ReplyVO vo);
	// 특정 댓글 읽기
	public ReplyVO read(int rno); 
	// 삭제
	public int delete(int rno);
	// 수정
	public int update(ReplyVO reply);
	
	public List<ReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") int bno);
	
	public int getCountByBno(int bno);
			
	
}
