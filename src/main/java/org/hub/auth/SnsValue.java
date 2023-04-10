package org.hub.auth;

import com.github.scribejava.core.builder.api.DefaultApi20;

import lombok.Data;

@Data
public class SnsValue {
	
	private String service;
	private String clientId;
	private String clientSeceret;
	private String redirectUrl; // Callback url
	private DefaultApi20 api20Instance;
	private String profileUrl; // 소셜 종류에 따라 프로필을 받는 url이 다르다
	
	private boolean isNaver;
	
	
	public SnsValue(String service, String clientId, String clientSeceret, String redirectUrl) {
		this.service = service;
		this.clientId = clientId;
		this.clientSeceret = clientSeceret;
		this.redirectUrl = redirectUrl;
		
		this.isNaver =this.service.equalsIgnoreCase("naver");
		
		if(isNaver) {
			this.api20Instance = NaverAPI20.getInstance(); //싱글톤이니까 getInstance()
			
			this.profileUrl = SnsUrls.NAVER_PROFILE_URL;
		} 
	}
	
	
	
}
