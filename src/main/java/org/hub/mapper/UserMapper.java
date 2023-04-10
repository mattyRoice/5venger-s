package org.hub.mapper;

import java.util.List;

import org.hub.domain.UserVO;

public interface UserMapper {
	
	public UserVO login(String uidKey);
	
	public List<UserVO> getList();
	
	public void insert(UserVO user);
	
	public UserVO read(String uidKey);
	
	public int delete(String uidKey);
	// 삭제된 행의 개수를 받환 받아, if(1==1)이 true이면 회원탈퇴되었다는 모달창 띄우기 
	
	public int update(UserVO user);
}
