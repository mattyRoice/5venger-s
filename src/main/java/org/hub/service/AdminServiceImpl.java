package org.hub.service;

import org.hub.domain.AdminVO;
import org.hub.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminmapper;

	@Override
	public void adminJoin(AdminVO admin) throws Exception {
		adminmapper.adminJoin(admin);
		
	}

}
