package org.hub.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.hub.auth.SNSLogin;
import org.hub.auth.SnsValue;
import org.hub.domain.UserAttachVO;
import org.hub.domain.UserStackVO;
import org.hub.domain.UserVO;
import org.hub.service.UserSerivce;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
@RequiredArgsConstructor
public class UserController {
	//마무리
	
	@NonNull
	@Inject
	private UserSerivce userService;		
	 	
	@Inject
	private SnsValue naverSns;	
	
	@Inject
	private SnsValue googleSns;
	
	@Inject
	private SnsValue kakaoSns;
	
	@Inject
	private GoogleConnectionFactory googleConnectionFactory;	
	
	@Inject
	private OAuth2Parameters googleOAuth2Parameters;
	
	private UserVO user;
	
	// login() = => 로그인에서 네이버 로그인의 링크를 내려보내줘야 한다.		
	@GetMapping(value= "/login")
	public String login(Model model) throws Exception {
		log.info("= = user social login = = ");
		
		// = => servlet-context.xml에서 설정한 빈 naverSns를 SNSLogin이 주입 받아야, 어디로 가고 어떻게 access token 받야야하고 등을 로그인이 알 수 있음 
		// 네이버
		SNSLogin snsLogin = new SNSLogin(naverSns); 		
		model.addAttribute("naver_url", snsLogin.getAuthURL());
		
		// 카카오 
		SNSLogin kakaoLogin = new SNSLogin(kakaoSns);
		model.addAttribute("kakao_url", kakaoLogin.getAuthURL()); 
		
		/* 구글code 발행을 위한 URL 생성 */	
		  OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations(); 
		  String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE,googleOAuth2Parameters);
		  
		  model.addAttribute("google_url", url);		 
		
		return "userLogin";
	}
	
	@RequestMapping(value = "/auth/{snsService}/callback")
	public String snsLoginCallback(@PathVariable String snsService, Model model, @RequestParam String code, HttpSession session) throws Exception{
		
		log.info("snsLoginCallback: {service} = " + snsService);
		
		SnsValue sns = null;		
		
		UserVO snsUser = null;
		
		boolean flag = snsService.equalsIgnoreCase("kakao");
		
		if(!flag) { //카카오가 아니면
			if(snsService.equalsIgnoreCase("naver")) { sns=naverSns; }
			if(snsService.equalsIgnoreCase("google")) { sns=googleSns; }
			// 1. code 이용해서 access_token 받기
			// 2. access_token 이용해서 사용자 profile 정보 가져오기
			SNSLogin snsLogin = new SNSLogin(sns);
			log.info("code: " + code + " = = = = =");
			
			snsUser = snsLogin.getUserProfile(code);
			
		} else { //카카오면
			sns=kakaoSns;
			// 1. code 이용해서 access_token 받기
			// 2. access_token 이용해서 사용자 profile 정보 가져오기
			SNSLogin snsLogin = new SNSLogin(sns);
			log.info("code: " + code + " = = = = =");
			
			snsUser = snsLogin.getKakaoUserProfile(code);
		}						
		
		System.out.println(" Profile > > " + snsUser);	

		snsUser.setUsnsType(snsService); // 네이버,구글,카카오 구분해 담기				
		
		// 3. DB에 해당 유저가 존재하는지 체크
		String uidKey = snsUser.getUidKey(); 
		
		user = userService.get(uidKey); //식별키로 DB에서 해당하는 사용자 불러와서 user에 저장
		
		if(user == null) { //참조변수 user가 null이면 해당하는 사용자가 없다는 것. 즉, 미가입자
			
			log.info(" = = = = =신규 유저 정보 담기= = = = = " + snsUser);
			
			model.addAttribute("newbie", snsUser);			
			
		    //존재하지 않으면 회원가입 페이지로
			return "userRegister";
		}  			
		
		//존재하면 로그인 처리 후 메인페이지로 이동
		return "redirect:/main";
		
	}		
	
	@GetMapping(value= "/register")
	public String register() {		
		log.info("= = Get user Register = = ");
		return "userRegister";
	}	
	
	@PostMapping(value= "/register")
	public String register(UserVO user, RedirectAttributes rttr) {
		log.info("= = Post user Register = = ");
		log.info("register: " + user);
		
		if (user.getAttachList() != null) {
			user.getAttachList().forEach(attach->log.info(attach));
		}
		
		if (user.getSnoList() != null) {
			user.getSnoList().forEach(sno->log.info(sno));
		}
		
		userService.register(user);
		
		// 회원가입 완료 후 메인 페이지로 이동
		return "redirect:/main";
	}
	
	@PostMapping(value= "/unickNameCheck")
	@ResponseBody
	public String unickNameCheck(String unickName) {
		UserVO user= userService.getByNickname(unickName);
		log.info("닉네임 user : " + user);
		if(user == null) {
			return "success";
		}
		return "";
				
	}
	
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<UserAttachVO>> getAttachList(String uidKey){
		log.info("getAttachList" + uidKey);
		return new ResponseEntity<>(userService.getAttachList(uidKey), HttpStatus.OK);
	}

	
	@GetMapping(value= "/mypage")
	public String mypageSet(String uidKey, Model model) {		
		log.info("= = user mypage = = ");
		
		model.addAttribute("user", userService.get(uidKey));
		
		return "userMypage";
	}
	// = = = = 마무리
	// = = = = 또시작
	private void deleteFiles(List<UserAttachVO> attachList) {
			
		if (attachList == null || attachList.size() == 0) {
			return;
		}

		log.info("delete attach files...................");
		log.info(attachList);

		attachList.forEach(attach -> {
			try {
				Path file = Paths.get(
						"C:\\upload\\" + attach.getUploadPath() + "\\" + attach.getUuid() + "_" + attach.getFileName());

				Files.deleteIfExists(file);

				if (Files.probeContentType(file).startsWith("image")) {

					Path thumbNail = Paths.get("C:\\upload\\" + attach.getUploadPath() + "\\s_" + attach.getUuid() + "_"
							+ attach.getFileName());

					Files.delete(thumbNail);
				}

			} catch (Exception e) {
				log.error("delete file error" + e.getMessage());
			} // end catch
		});// end foreachd
	}
		
	@PostMapping("/remove")
	public String remove(@RequestParam("uidKey") String uidKey, RedirectAttributes rttr) {
			//회원탈퇴
			log.info("remove..." + uidKey);
			// 회원 탈퇴 전 회원의 이미지 파일 확보
			List<UserAttachVO> attachList = userService.getAttachList(uidKey);
			 
			if (userService.remove(uidKey)) { //회원 정보 삭제
				 
				//delete Attach Files
				 deleteFiles(attachList); //c:upload 밑 복사본 삭제
				 
				 rttr.addFlashAttribute("result", "success");
			 }		 
			
			 return "redirect:/main";
	}
	
	@GetMapping(value="/interest")
	public String interest() {
		log.info("====== ");
		return "interest";
	}

	
	
}
