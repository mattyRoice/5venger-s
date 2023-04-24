package org.hub.mapper;

import org.hub.domain.BoardStackVO;

public interface BoardStackMapper {
	public int getSno(String sname);
	
	public void insertBoardStack(BoardStackVO vo);
	
	public void delete(BoardStackVO vo);
	
	// 글 수정용, 근데 실제로 xml에서 delete는 bno만 활용하고 있음, 위에 delete 메소드 사용하는 분 안계시면 삭제해도될듯
	public void delete(int bno);
}
