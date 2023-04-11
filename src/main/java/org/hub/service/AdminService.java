package org.hub.service;

import org.hub.domain.AdminVO;

public interface AdminService {

	//회원가입
	public void adminJoin(AdminVO admin) throws Exception;
	
}
