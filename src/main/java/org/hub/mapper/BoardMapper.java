package org.hub.mapper;
     
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.UserReadVO;

public interface BoardMapper {

	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public List<BoardVO> getListWithPagingWithFilter(Criteria cri);
	
	public void insert(BoardVO board);

	public Integer insertSelectKey(BoardVO board);

	public BoardVO read(int bno);

	public int delete(int bno);
	
	
	// 게시글 수정하기 - 수정한 행 수 반환
	public int update(BoardVO board);

	public int getTotalCount(Criteria cri);

	// 추천목록 가져오기
	public List<Integer> getRecommend(String uidkey);
	
	// 관심목록 가져오기
	public List<Integer> getInterest(String uidkey); 
	
	// 조회수 증가시키기
	public void updateViewCnt(int bno);
	
	// 작성글 목록 가져오기
	public List<BoardVO> getListUserWrite(String uidkey);
	
	//kdh 0426 댓글수 업데이트
	public void updateReplyCnt(@Param("bno") int bno, @Param("amount") int amount);

	// 읽은글 목록 가져오기
	public List<BoardVO> getUserRead(String uidkey);
	
	// 읽은 글 DB 등록
	public void saveUserRead(UserReadVO userread);
	
	//버튼 클릭시 모집 마감
	public BoardVO updateClose(int bno);
}
