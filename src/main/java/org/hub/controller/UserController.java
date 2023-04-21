package org.hub.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hub.auth.SNSLogin;
import org.hub.auth.SnsValue;
import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;
import org.hub.domain.PageDTO;
import org.hub.domain.UserAttachVO;
import org.hub.domain.UserStackVO;
import org.hub.domain.UserVO;
import org.hub.service.BoardService;
import org.hub.service.UserSerivce;
import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
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
	
	public static final String LOGIN = "loginUser"; //이름이 loginUser인 세션
	
	@GetMapping(value="/logout")
	public String logout(HttpSession session) throws Exception {
		log.info("logout GET");
		session.removeAttribute(LOGIN);
		session.invalidate(); // 세션에 담아둔 모든 것을 비워 버리겠다
		
		return "redirect:/board/main";
	}
	
	// login() = => 로그인에서 네이버 로그인의 링크를 내려보내줘야 한다.		
	@GetMapping(value= "/login")
	public String login(Model model) throws Exception {
		log.info("= = user social login = = ");
		
		// = => servlet-context.xml에서 설정한 빈 naverSns를 SNSLogin이 주입 받아야, 어디로 가고 어떻게 access token 받야야하고 등을 로그인이 알 수 있음 
		// 네이버
		SNSLogin snsLogin = new SNSLogin(naverSns); 		
		model.addAttribute("naver_url", snsLogin.getAuthURL());
		
		// 카카오 테스트 
		SNSLogin kakaoLogin = new SNSLogin(kakaoSns);
		model.addAttribute("kakao_url", kakaoLogin.getAuthURL());
		// 카카오 테스트 
		
		/* 구글code 발행을 위한 URL 생성 */	
		  OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations(); 
		  String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE,googleOAuth2Parameters);
		  
		  model.addAttribute("google_url", url);		 
		
		return "/user/userLogin";
	}
	
	// 4.20 여기부터 시작
	@PostMapping(value="/loginPost")
	public String loginPOST(HttpServletRequest request, UserVO user, RedirectAttributes rttr) throws Exception {
		log.info("loginPost 메서드 진입");
		log.info("전달된 데이터: " + user);

		HttpSession session = request.getSession();
		
		String uidKey = user.getUidKey();
		
		UserVO uvo = userService.login(uidKey);
		
		if (uvo == null) { // 일치하지 않는 아이디,비밀번호 입력
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/user/login";
		}

		session.setAttribute(LOGIN, uvo); // 일치하는 아이디,비밀번호 (로그인 성공)
		return "redirect:/board/main";
	}
	
	@GetMapping(value="/join")
	public String join(Model model) {
		log.info("join 회원가입 선택 진입");
		
		// = => servlet-context.xml에서 설정한 빈 naverSns를 SNSLogin이 주입 받아야, 어디로 가고 어떻게 access token 받야야하고 등을 로그인이 알 수 있음 
		// 네이버
		SNSLogin snsLogin = new SNSLogin(naverSns); 		
		model.addAttribute("naver_url", snsLogin.getAuthURL());
				
		// 카카오 테스트 
		SNSLogin kakaoLogin = new SNSLogin(kakaoSns);
		model.addAttribute("kakao_url", kakaoLogin.getAuthURL());		
				
		/* 구글code 발행을 위한 URL 생성 */	
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations(); 
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE,googleOAuth2Parameters);				  
		model.addAttribute("google_url", url);
				  
		return "/user/join";
	}
	
	@GetMapping(value="/signin")
	public String signin() {
		log.info("signin 회원가입 화면 진입");
		return "/user/signin";
	}
	
	// 4.20 여기부터 시작
	
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
			
			 // 4.1. 존재하지 않으면 회원가입 페이지로
			return "/user/userRegister";
		} else {
			// 4.2. 존재시 유저정보 세션에 담기 및 메인페이지 이동
			session.setAttribute(LOGIN, user);
			return "redirect:/board/main";
		}
		
	}		
	
	@PostMapping(value= "/register")
	public String register(UserVO user, HttpSession session) throws Exception {
		log.info("= = Post user Register = = ");
		log.info("register: " + user);
		
		if (user.getAttachList() != null) {
			user.getAttachList().forEach(attach->log.info(attach));
		}
		
		if (user.getSnoList() != null) {
			user.getSnoList().forEach(sno->log.info(sno));
		}
		
		userService.register(user);
		// 세션에 가입한 user 객체 담기
		session.setAttribute(LOGIN, user);
		return "redirect:/board/main";
		
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
		// uidkey를 이용해 이미지파일과 관련된 데이터를 json으로 반환하도록 처리 - @ResponseBody 어노테이션 적용
		log.info("getAttachList" + uidKey);
		return new ResponseEntity<>(userService.getAttachList(uidKey), HttpStatus.OK);
	}		

	
	@GetMapping(value= "/mypage")
	public String mypageSet(HttpSession session,Model model) {		
		log.info("= = user mypage = = ");
		
		UserVO user = (UserVO)session.getAttribute(LOGIN);
		String uidKey = user.getUidKey();
		
		model.addAttribute("user", userService.get(uidKey));
		
		return "/user/userMypage";
	}

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
	public String remove(@RequestParam("uidKey") String uidKey, RedirectAttributes rttr, HttpSession session) {
		 //회원탈퇴
		 log.info("remove..." + uidKey);
		 // 회원 탈퇴 전 회원의 이미지 파일 확보
		 List<UserAttachVO> attachList = userService.getAttachList(uidKey);
		 
		 if (userService.remove(uidKey)) { //회원 정보 삭제
			 
			 //delete Attach Files
			 deleteFiles(attachList); //c:upload 밑 복사본 삭제
			 
			 rttr.addFlashAttribute("result", "success");
		 }		 
		 session.removeAttribute(LOGIN);
		 session.invalidate(); // 세션에 담아둔 모든 것을 비워 버리겠다
		 return "redirect:/board/main";
	}
	
	// ==금요일 시작==
	@PostMapping("/modify")
	public String modify(UserVO user, RedirectAttributes rttr) {
		log.info(" = = = = = modify:" + user);
		
		if (user.getAttachList() != null) {
			user.getAttachList().forEach(attach->log.info(attach));
		}
		
		if (user.getSnoList() != null) {
			user.getSnoList().forEach(sno->log.info(sno));
		}
		
		if (userService.modify(user)) {
			rttr.addFlashAttribute("result", "변경이 완료되었어요");
		}

		return "redirect:/board/main";
	}
	
	@GetMapping(value = "/getStackList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<UserStackVO>> getStackList(String uidKey){
		// uidkey를 이용해 관심 스택을 json으로 반환하도록 처리 - @ResponseBody 어노테이션 적용
		log.info("getStackList" + uidKey);
		return new ResponseEntity<>(userService.getStackList(uidKey), HttpStatus.OK);
	}
	
	
	
	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	@GetMapping("/interest")
	public String getMain(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, Model model, HttpSession session, UserVO vo) {
		System.out.println("interest로 이동");
		log.info("intereset 이동");

		List<BoardVO> boardList = service.getList(cri);
		model.addAttribute("board", boardList);

		session.setAttribute(LOGIN, user);
		/* String uidKey = (String) session.getAttribute("uidKey"); */
		int total = service.getTotal(cri);
   
		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		UserVO user = (UserVO)session.getAttribute(LOGIN);
		String uidKey = user.getUidKey();
		model.addAttribute("user", userService.get(uidKey));

		return "interest";
	}

	// 사용자 작성 글 목록
	@GetMapping("/write")
	public String getWrite(@ModelAttribute("board") BoardVO board, @ModelAttribute("cri") Criteria cri, Model model, HttpSession session, UserVO vo) {
		System.out.println("작성 글 목록으로 이동 YJ");
		log.info("작성 글 목록으로 이동 YJ");

		List<BoardVO> boardList = service.getList(cri);
		model.addAttribute("board", boardList);

		session.setAttribute(LOGIN, user);
		/* String uidKey = (String) session.getAttribute("uidKey"); */
		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		UserVO user = (UserVO)session.getAttribute(LOGIN);
		String uidKey = user.getUidKey();
		model.addAttribute("user", userService.get(uidKey));

		return "userWrite";
	}      
	
	
}
