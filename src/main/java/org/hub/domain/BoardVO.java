package org.hub.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int bno; // 글 번호
	private String meet; // 온,오프라인 
	private String memberNum; // 모집인원
	private String contact; // 연락방법
	private String contactaddress;//연락방법주소입력
	private String period; // 스터디 진행 기간
	private String title; // 글 제목
	private String uidkey; // 유저 식별키
	private String content; // 글 내용
	private Date regdate; // 글 작성 날짜
	private String deadline; // 마감기간
	private int replycnt; // 댓글 수
	private int cnt; // 조회수
	public String status;// 마감 오픈,클로즈
	
	private String profileImage; // 사용자 프로필 이미지
	private String uname; // 유저 이름
	private String fnames;	// 모집 분야
	private String snames;	// 기술 스택
	
	private String[] fnameList; // 모집 분야
	private String[] SnameList; // 기술 스택
}
