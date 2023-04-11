package org.hub.service;

import java.util.List;

import org.hub.domain.UserVO;

public interface UserSerivce {
	
	public UserVO login(String uidKey); // 세션 구워야하니까 유저 리턴
	
	public List<UserVO> getList();
	
	public void register(UserVO user);
	
	public UserVO get(String uidKey);
	
	public boolean modify(UserVO user);
	
	public boolean remove(String uidKey);
	
}
