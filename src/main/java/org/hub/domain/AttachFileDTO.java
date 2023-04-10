package org.hub.domain;

import lombok.Data;

@Data
public class AttachFileDTO { //브라우저로 전송해야하는 데이터를 별도의 객체를 생성해 처리
	
	private String fileName; //원본파일이름
	private String uploadPath; //업로드경로
	private String uuid; //uuid값
	private boolean image; //이미지여부
	
}
