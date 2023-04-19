package org.hub.mapper;

import org.hub.domain.BoardFieldVO;
import org.hub.domain.BoardVO;

public interface BoardFieldMapper {
	
	public int getFno(String fname);
	public void insertBoardField(BoardFieldVO vo);
	
	public void delete(BoardFieldVO vo);
}
