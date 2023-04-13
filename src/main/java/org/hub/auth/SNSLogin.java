package org.hub.auth;

import org.hub.domain.UserVO;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

public class SNSLogin {
	
	private OAuth20Service oauthService; //scribe java가 갖고있는 서비스, 토큰 및 프로필 등 가져오는 건 얘가 다 해줌
	private SnsValue sns;
	
	public SNSLogin(SnsValue sns) { //네이버, 구글 등 올 수 있음		
		
		if(sns.getService().equalsIgnoreCase("kakao")) {
			
			this.oauthService = new ServiceBuilder(sns.getClientId())
					.callback(sns.getRedirectUrl())
					.build(sns.getApi20Instance()); //빌드할 때 어떤 형태로 만들 것인지를 적는것
			this.sns = sns;
			
		} else {
			
			this.oauthService = new ServiceBuilder(sns.getClientId())
					.apiSecret(sns.getClientSeceret())
					.callback(sns.getRedirectUrl())
					.scope("profile") //가져올 정보의 범위 지정
					.build(sns.getApi20Instance()); //빌드할 때 어떤 형태로 만들 것인지를 적는것
			
			this.sns = sns;
			
		}
	}		
	
	public String getAuthURL() {
		// 이 서비스를 통해서 해야해, 아니면 우리가 네이버 서버 갖다오는 처리까지 직접 다 해야해
		return this.oauthService.getAuthorizationUrl();
	}
	
	public UserVO getUserProfile(String code) throws Exception {
			
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		
		OAuthRequest request = new OAuthRequest(Verb.GET, this.sns.getProfileUrl());
		oauthService.signRequest(accessToken, request); //access_token을 request에 심어라
		
		Response response = oauthService.execute(request); //응답 시 json이 body에 담겨져 올 것임						
		
		return parseJson(response.getBody()); 
		
	}
	
	public UserVO getKakaoUserProfile(String code) throws Exception {
		// 카카오는 access_token 얻으려면 반드시 POST 요청이어야 해서 메소드 따로 둠
		// 1. code로 access_token 요청
		
		// HttpHeader 오브젝트 생성
		RestTemplate rt = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				
		// HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "7e0290062cfde4629b0fd236688bc298");
		params.add("redirect_uri", "http://localhost:8080/user/auth/kakao/callback");
		params.add("code", code);
				
		//HttpHeader + HttpBody 를 하나의 오브젝트에 담기
		// 왜 HttpEntity에 하나로 담냐??? RestTemplate의 exchange 메서드가 HttpEntity를 받도록 되어있어서
		HttpEntity<MultiValueMap<String,String>> kakaoTokenRequest = new HttpEntity<>(params,headers);
				
		//실제요청 (Http 요청하기 - post 방식으로, response 변수 응답받음)
		ResponseEntity<String> response = rt.exchange(
				"Https://kauth.kakao.com/oauth/token", //토큰발급요청주소
				HttpMethod.POST, //요청방식
				kakaoTokenRequest, //데이터(바디와 헤더값)
				String.class //응답받을 타입
		);
				
		// 2. 파싱해서 access_token 만 얻기
				
		// jackson 라이브러리가 json을 object로 바꿔준다
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(response.getBody());
				
		String accessToken = rootNode.get("access_token").asText();
				
		//OAuth2AccessToken 
		
		OAuthRequest request = new OAuthRequest(Verb.GET, this.sns.getProfileUrl());
		oauthService.signRequest(accessToken, request); //access_token을 request에 심어라
		
		Response profileResponse = oauthService.execute(request); //응답 시 json이 body에 담겨져 올 것임						
		
		return parseJson(profileResponse.getBody());
	}

	private UserVO parseJson(String body) throws Exception {
		System.out.println("======================\n" + body + "\n======================");
		
		UserVO user = new UserVO();
		
		// jackson 라이브러리가 json을 object로 바꿔준다
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);
		
		// 구글,카카오와 네이버 파싱은 다르다
		// 1. 네이버
		if(this.sns.isNaver()) {
			JsonNode resNode = rootNode.get("response");
			// 네이버 식별키
			String id = resNode.get("id").asText(); 
			user.setUidKey(id);
			
		}
		
		// 2. 구글 or 카카오
		if(this.sns.isGoogle() || this.sns.isKakao()) {
			 String id = rootNode.get("id").asText();
			 user.setUidKey(id);
		}		 		  		 				
		
		return user;
	}
}
