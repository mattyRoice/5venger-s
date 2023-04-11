package org.hub.auth;

import org.hub.domain.UserVO;

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
	
	public SNSLogin(SnsValue sns) {
		
		this.oauthService = new ServiceBuilder(sns.getClientId())
				.apiSecret(sns.getClientSeceret())
				.callback(sns.getRedirectUrl())
				.scope("profile") //가져올 정보의 범위 지정
				.build(sns.getApi20Instance()); //빌드할 때 어떤 형태로 만들 것인지를 적는것
		
		this.sns = sns;
		
	}

	public String getNaverAuthURL() {
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

	private UserVO parseJson(String body) throws Exception {
		System.out.println("======================\n" + body + "\n======================");
		
		UserVO user = new UserVO();
		
		// jackson 라이브러리가 json을 object로 바꿔준다
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);
		
		// 구글과 네이버 파싱은 다르다
		// 1. 네이버
		if(this.sns.isNaver()) {
			JsonNode resNode = rootNode.get("response");
			// 네이버 식별키
			String id = resNode.get("id").asText(); 
			user.setUidKey(id);
			
		}
		
		/*
		 * // 2. 구글 String id = rootNode.get("id").asText(); 
		 * 
		 * user.setSns_id(id); String name = rootNode.get("name").asText();
		 * user.setSns_name(name);
		 */
		
		
		return user;
	}
}
