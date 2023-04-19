package org.hub.mapper;

import org.hub.domain.BoardStackVO;

public interface BoardStackMapper {
	public int getSno(String sname);
	
	public void insertBoardStack(BoardStackVO vo);
	
	public void delete(BoardStackVO vo);
}
