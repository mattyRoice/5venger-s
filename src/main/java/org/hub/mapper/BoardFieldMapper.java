package org.hub.mapper;

import org.hub.domain.BoardFieldVO;
import org.hub.domain.BoardVO;

public interface BoardFieldMapper {
	
	public int getFno(String fname);
	public void insertBoardField(BoardFieldVO vo);	
	public void delete(BoardFieldVO vo);
	
	// 글 수정용, 근데 실제로 xml에서 delete는 bno만 활용하고 있어서 위에 delete 쓰시는 분 없으면 삭제해도될듯
	public void delete(int bno);
}
