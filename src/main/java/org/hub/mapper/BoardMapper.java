package org.hub.mapper;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getListWithPaging(Criteria cri);
	public List<BoardVO> getListWithPagingWithFilter(Criteria cri);
	
	public void insert(BoardVO board);

	public Integer insertSelectKey(BoardVO board);

	public BoardVO read(int bno);

	public int delete(int bno);

	public int update(BoardVO board);

	public int getTotalCount(Criteria cri);

	public List<Integer> getInterest();
	
	public List<Integer> getLike();   
}
