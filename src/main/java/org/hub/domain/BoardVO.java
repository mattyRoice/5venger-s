package org.hub.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private Long bno;
	private String meet;
	private int memberNum;
	private String contact;
	private Date preiod;
	private String title;
	private String uidkey;
	private String content;
	private Date regdate;
	private Date deadline;
	private int replycnt;
	private String profileImage;
	
	private String fnames;	// 모집 분야
	private String snames;	// 기술 스택
	
}
