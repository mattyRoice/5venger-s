package org.hub.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class UserReadVO {

	private int urno; // user read 번호
	private String uidkey; 
	private int bno; // 글 번호
	private Timestamp readtime; // 글 조회 시간

}
