package org.hub.auth;

import com.github.scribejava.core.builder.api.DefaultApi20;

public class KakaoAPI20 extends DefaultApi20 implements SnsUrls{
	// 항상 싱글톤으로 만들어야 한다. 왜냐하면 jvm에 object가 1개만 생기게 하는 것
	
	private KakaoAPI20() {}
	
	private static class InstanceHolder {
		// final이니까 INSTANCE는 1번밖에 안만들어진다. 상수는 한번 값 정하면 못바꾸니까
		// 그리고 InstanceHolder는 private 클래스니까 여기(KakaoAPI20)에서밖에 호출 못한다
		private static final KakaoAPI20 INSTANCE = new KakaoAPI20();
	}
	
	public static KakaoAPI20 instance() {
		return InstanceHolder.INSTANCE;
	}
	
	// DefaultApi20에 추상 메서드로 있는 것 구현해야함
	// 아래 url을 가지고 뭘하고 뭘하는 것은 scribejava를 하는거고, 그것들을 가지고 실제로 돌리는 것은 우리가 snsLogin클래스에서 작성할 것
	
	@Override
	public String getAccessTokenEndpoint() {
		//네이버 api의 endpoint이다
		
		return KAKAO_ACCESS_TOKEN;
	}

	@Override
	protected String getAuthorizationBaseUrl() {		
		return KAKAO_AUTH;
	}
}
