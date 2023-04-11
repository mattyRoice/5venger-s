package org.hub.auth;

public interface SnsUrls {
	
	// url 관련해서 변하지 않는 값 여기에 담아서 전역변수로 쓸 것, 이 url이 필요한 클래스는 이 인터페이스를 구현하면 됨
		
	static final String NAVER_ACCESS_TOKEN = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";
	static final String NAVER_AUTH = "https://nid.naver.com/oauth2.0/authorize";
		
	static final String NAVER_PROFILE_URL = "https://openapi.naver.com/v1/nid/me";
		
		
	/*
	 * static final String GOOGLE_PROFILE_URL =
	 * "https://www.googleapis.com/plus/v1/people/me";
	 */
		 
	

}
