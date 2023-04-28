package org.hub.service;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.UserReadVO;

public interface BoardService {
	
	public void register(BoardVO board);

	public BoardVO get(int bno);

	public boolean modify(BoardVO board);
	
	// 버튼 클릭 시 모집 마감
	public boolean updateStatus(int bno);
	
	// 마감 처리 취소하기
	public boolean resetStatus(int bno);
	
	// 게시물 삭제
	public boolean remove(int bno);

	// public List<BoardVO> getList();
	
	public List<BoardVO> getList(Criteria cri);

	public int getTotal(Criteria cri);

	List<BoardVO> getListWithFilter(Criteria cri);
	
	//추천목록 가져오기
	public List<Integer> getRecommend(String uidkey);
	
	//관심목록 가져오기
	public List<Integer> getInterest(String uidkey);
	
	// 스택 가져오기
	public String[] getStack(int bno);
	
	// 작성글 목록 가져오기
	public List<BoardVO> getListUserWrite(String uidkey);
	
	// 읽은글 목록 가져오기
	public List<BoardVO> getUserRead(String uidkey);
	
	// 읽은 글 DB 등록
	public void saveUserRead(UserReadVO userread);
	
	// 관심글 등록
	public void insertInterest(String uidkey, int bno);
	
	// 관심글 삭제
	public void deleteInterest(String uidkey, int bno); 
}
