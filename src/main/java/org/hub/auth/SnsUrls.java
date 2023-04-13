package org.hub.auth;

public interface SnsUrls {	
	// url 관련해서 변하지 않는 값 여기에 담아서 전역변수로 쓸 것, 이 url이 필요한 클래스는 이 인터페이스를 구현하면 됨
	
	// 네이버 - 코드받기 = 로그인 버튼 클릭 후 이동할 '네이버 로그인' url => 완료되면 콜백 url에 code값과 state 값이 url 문자열로 전송된다
	static final String NAVER_AUTH = "https://nid.naver.com/oauth2.0/authorize";
	// 네이버 - code로 접근 토근 발급 요청
	static final String NAVER_ACCESS_TOKEN = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code";	
	// 네이버 - 사용자 정보 가져오기	
	static final String NAVER_PROFILE_URL = "https://openapi.naver.com/v1/nid/me";				
	
	// 구글
	static final String GOOGLE_PROFILE_URL ="https://www.googleapis.com/userinfo/v2/me";
	 
	// 카카오	- 코드받기
	static final String KAKAO_AUTH = "https://kauth.kakao.com/oauth/authorize?response_type=code";
	// 카카오 - 토큰 받기
	static final String KAKAO_ACCESS_TOKEN = "https://kauth.kakao.com/oauth/token";
	// 카카오 - 사용자 정보 가져오기
	static final String KAKAO_PROFILE_URL = "https://kapi.kakao.com/v2/user/me";
}
