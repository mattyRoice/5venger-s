package org.hub.auth;

import com.github.scribejava.apis.GoogleApi20;
import com.github.scribejava.core.builder.api.DefaultApi20;

import lombok.Data;

@Data
public class SnsValue implements SnsUrls {
	
	private String service;
	private String clientId;
	private String clientSeceret;
	private String redirectUrl; // Callback url
	private DefaultApi20 api20Instance;
	private String profileUrl; // 소셜 종류에 따라 프로필을 받는 url이 다르다
	
	private boolean isNaver;
	private boolean isGoogle;
	private boolean isKakao;
	
	public SnsValue(String service, String clientId, String clientSeceret, String redirectUrl) {
		this.service = service;
		this.clientId = clientId;
		this.clientSeceret = clientSeceret;
		this.redirectUrl = redirectUrl;
		
		this.isNaver =this.service.equalsIgnoreCase("naver");
		this.isGoogle =this.service.equalsIgnoreCase("google");
		
		if(isNaver) {
			this.api20Instance = NaverAPI20.instance(); //싱글톤이니까 getInstance()			
			this.profileUrl = NAVER_PROFILE_URL;
		}
		
		if(isGoogle) {
			this.api20Instance = GoogleApi20.instance();
			this.profileUrl= GOOGLE_PROFILE_URL;
		}		
		
	}
	
	public SnsValue(String service, String clientId, String redirectUrl) {
		// 카카오는 인자 3개만 전달받을 것
		this.service = service;
		this.clientId = clientId;
		this.redirectUrl = redirectUrl;
		
		this.isKakao =this.service.equalsIgnoreCase("kakao");
		
		if(isKakao) {
			this.api20Instance = KakaoAPI20.instance(); //싱글톤이니까 getInstance()			
			this.profileUrl = KAKAO_PROFILE_URL;
		}
		
	}
	
	
	
}
