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

	@Override
	public void adminJoin(AdminVO admin) throws Exception {
		adminmapper.adminJoin(admin);
	}

	@Override
	public int idCheck(String adminId) throws Exception {
		return adminmapper.idCheck(adminId);
	}

}
