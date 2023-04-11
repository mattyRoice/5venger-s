package org.hub.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminVO {

	// 관리자 식별번호
	private Long ano;
	
	// 관리자 아이디
	private String adminId;
	
	// 관리자 비밀번호
	private String adminPw;
	
	// 관리자 이름
	private String aname;
	
	// 이메일
	private String email;
	
	// 등록일자
	private Date regDate;
	
}
