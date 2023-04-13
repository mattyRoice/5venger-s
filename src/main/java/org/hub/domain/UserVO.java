package org.hub.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class UserVO {
	
	
	private String uidKey; // 식별키
	private String usnsType; // 네이버, 카카오, 구글 
	private String unickName; // 이름 -> 추후에 닉네임 입력 받아서 닉네임으로 바꿀 것
	private List<UserStackVO> snoList; // 관심 스택
	private List<UserAttachVO> attachList; // 프로필 이미지 (추후에 List가 아닌 타입으로 바꿔보겠음)	
	private Date regDate; //회원가입 일자

}
