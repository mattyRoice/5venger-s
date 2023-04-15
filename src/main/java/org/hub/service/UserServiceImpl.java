package org.hub.service;

import java.util.List;

import javax.inject.Inject;

import org.hub.domain.UserAttachVO;
import org.hub.domain.UserVO;
import org.hub.mapper.UserAttachMapper;
import org.hub.mapper.UserMapper;
import org.hub.mapper.UserStackMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor  //UserMapper를 주입받는 생성자 생성
public class UserServiceImpl implements UserSerivce {
	
	@NonNull
	@Inject
	private UserMapper mapper;
	
	@Autowired
	private UserAttachMapper attachMapper;		
	
	@Autowired
	private UserStackMapper stackMapper;	
	
	@Override
	public UserVO login(String uidKey) {
		return mapper.login(uidKey);
		
	}
	
	@Override
	public List<UserVO> getList() {
		log.info("getList . . . . . .");
		return mapper.getList();
	}
	
	@Transactional
	@Override
	public void register(UserVO user) {
		// 트랜잭션 하에서 user_tbl에 먼저 유저를 등록하고, 첨부파일/관심스택은 생성된 uidkey를 세팅한 후 DB에 데이터 추가
		log.info("register . . . . . ." + user);
		mapper.insert(user);
		
		if(user.getAttachList() == null || user.getAttachList().size() <=0) {
			return;
		}
		
		if(user.getSnoList() == null || user.getSnoList().size() <=0) {
			return;
		}
		
		user.getAttachList().forEach(attach ->{
			
			attach.setUidkey(user.getUidKey());
			attachMapper.insert(attach);
		});
		
		user.getSnoList().forEach(sno ->{
			
			sno.setUidKey(user.getUidKey());
			stackMapper.insert(sno);
		});
		
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
	
	@Transactional
	@Override
	public boolean remove(String uidKey) {
		// 트랜잭션 하에서 유저가 회원탈퇴 시 이미지 파일 함께 삭제되도록 @Transactional 어노테이션 사용
		log.info("remove . . . . . ." + uidKey);
		
		attachMapper.deleteAll(uidKey);
		
		return mapper.delete(uidKey) == 1;
	}

	@Override
	public UserVO getByNickname(String unickName) {
		log.info("register . . . . . ." + unickName);
		return mapper.readByNickname(unickName);
		
	}

	@Override
	public List<UserAttachVO> getAttachList(String uidKey) {

		log.info("get Attach list by uidKey" + uidKey);
		
		return attachMapper.findByUidKey(uidKey);
	}

}
