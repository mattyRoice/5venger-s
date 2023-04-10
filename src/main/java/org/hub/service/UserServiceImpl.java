package org.hub.service;

import java.util.List;

import org.hub.domain.UserVO;
import org.hub.mapper.UserMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor  //UserMapper를 주입받는 생성자 생성
public class UserServiceImpl implements UserSerivce {
	
	private UserMapper mapper;
	
	@Override
	public UserVO login(String uidKey) {
		return mapper.login(uidKey);
		
	}
	
	@Override
	public List<UserVO> getList() {
		log.info("getList . . . . . .");
		return mapper.getList();
	}

	@Override
	public void register(UserVO user) {
		log.info("register . . . . . ." + user);
		mapper.insert(user);
		
	}

	@Override
	public UserVO get(String uidKey) {
		log.info("register . . . . . ." + uidKey);
		return mapper.read(uidKey);
	}

	@Override
	public boolean modify(UserVO user) {
		log.info("modify . . . . . ." + user);
		return mapper.update(user) == 1;
	}

	@Override
	public boolean remove(String uidKey) {
		log.info("remove . . . . . ." + uidKey);
		return mapper.delete(uidKey) == 1;
	}

}
