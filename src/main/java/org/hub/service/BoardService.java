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
}
