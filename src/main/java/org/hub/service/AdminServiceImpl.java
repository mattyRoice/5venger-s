package org.hub.service;

import org.hub.domain.AdminVO;
import org.hub.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {

	@Setter(onMethod_ = @Autowired)
	AdminMapper adminmapper;

	/* 회원가입 */
	@Override
	public void adminJoin(AdminVO admin) throws Exception {
		adminmapper.adminJoin(admin);
	}

	/* 아이디 중복 검사 */
	@Override
	public int idCheck(String adminId) throws Exception {
		return adminmapper.idCheck(adminId);
	}
	
	/* 로그인 */
	@Override
	public AdminVO adminLogin(AdminVO admin) throws Exception {
		return adminmapper.adminLogin(admin);
	}

}
