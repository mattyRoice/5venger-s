package org.hub.service;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;

public interface BoardService {
	
	public void register(BoardVO board);

	public BoardVO get(int bno);

	public boolean modify(BoardVO board);

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
}
