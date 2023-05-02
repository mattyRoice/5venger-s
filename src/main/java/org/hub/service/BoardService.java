package org.hub.service;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.UserReadVO;

public interface BoardService {
	
	// 글등록
	public void register(BoardVO board);
	
	// 상세보기
	public BoardVO get(int bno);
	
	// 글 수정하기
	public boolean modify(BoardVO board);
	
	// 버튼 클릭 시 모집 마감
	public boolean updateStatus(int bno);
	
	// 마감 처리 취소하기
	public boolean resetStatus(int bno);
	
	// 게시물 삭제
	public boolean remove(int bno);

	// 일반 메인
	public List<BoardVO> getList(Criteria cri);
	
	// 일반 메인 게시글 총 개수
	public int getTotal(Criteria cri);
	
	// 메인 with 필터
	List<BoardVO> getListWithFilter(Criteria cri);
	
	// 메인 with 필터 게시글 총 개수
	public int getTotalWithFilter(Criteria cri);
	
	// 메인 with position
	List<BoardVO> getListWithPosition(Criteria cri);
	
	// 메인 with Position 게시글 총 개수
	public int getTotalWithPosition(Criteria cri);

	
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
	
	// 읽은글 중복 체크
	public int bnoCheck(UserReadVO userread);
	
	// 관심글 등록
	public void insertInterest(String uidkey, int bno);
	
	// 관심글 삭제
	public void deleteInterest(String uidkey, int bno); 
}
