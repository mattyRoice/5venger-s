package org.hub.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.hub.auth.SNSLogin;
import org.hub.auth.SnsValue;
import org.hub.domain.UserVO;
import org.hub.service.UserSerivce;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
@RequiredArgsConstructor
public class UserController {
	
	@NonNull
	@Inject
	private UserSerivce userService;		
	 	
	@Inject
	private SnsValue naverSns;
	// = => servlet-context.xml에서 설정한 빈 naverSns를 SNSLogin이 주입 받아야, 어디로 가고 어떻게 access token 받야야하고 등을 로그인이 알 수 있음 
		
	private UserVO user;
	
	// login() = => 로그인에서 네이버 로그인의 링크를 내려보내줘야 한다.		
	@GetMapping(value= "/login")
	public String login(Model model) throws Exception {
		log.info("= = user social login = = ");
		
		SNSLogin snsLogin = new SNSLogin(naverSns);
		model.addAttribute("naver_url", snsLogin.getNaverAuthURL());
		return "userLogin";
	}
	
	@RequestMapping(value = "/auth/{snsService}/callback")
	public String snsLoginCallback(@PathVariable String snsService, Model model, @RequestParam String code, HttpSession session) throws Exception{
		
		log.info("snsLoginCallback: {service} = " + snsService);
		
		SnsValue sns = null;
		
		if(snsService.equalsIgnoreCase("naver")) { sns=naverSns; }
		
		// 1. code 이용해서 access_token 받기
		// 2. access_token 이용해서 사용자 profile 정보 가져오기
		// = = > 1,2 는 구글 시 사용
		SNSLogin snsLogin = new SNSLogin(naverSns);
		UserVO snsUser = snsLogin.getUserProfile(code);
		System.out.println(" Profile > >" + snsUser);
		snsUser.setUsnsType(snsService);
		// = => "result"는 loginResult.jsp에서 사용할 것
		
		
		// 3. DB에 해당 유저가 존재하는지 체크
		String uidKey = snsUser.getUidKey(); 
		
		user = userService.get(uidKey); //식별키로 DB에서 해당하는 사용자 불러와서 user에 저장
		
		if(user == null) { //참조변수 user가 null이면 해당하는 사용자가 없다는 것. 즉, 미가입자
			/* userService.register(snsUser); */
			snsUser.setUsnsType(snsService);
			
			log.info(" = = = = =신규 유저 정보 담기= = = = = " + snsUser);
			model.addAttribute("newbie", snsUser);
			/*
			 * model.addAttribute("stackRegister",
			 * "닉네임님, 반가워요. 어떤 언어, 프레임워크에 관심이 있는지 알려주세요!");
			 */
			
		    // 존재하지 않으면 회원가입 페이지로
			return "userRegister";
		} else { 
			// 닉네임 받는거 완성하면 수정해
			model.addAttribute("result : user.getUnickName() + 님 반갑습니다."); 			
		}
		// 존재하면 로그인 처리
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
		
		if (user.getAttatchList() != null) {
			user.getAttatchList().forEach(attach->log.info(attach));
		}
		
		// service.register
		// rttr.addFlashAttribute("result", "회원가입 되었습니다.");
		// 회원가입 완료 후 메인 페이지로 이동
		return "redirect:/main";
	}
	
	@GetMapping(value="/interest")
	public String interest() {
		log.info("====== ");
		return "interest";
	}
	
	@GetMapping(value= "/mypage")
	public String mypageSet() {		
		log.info("= = user mypage = = ");
		return "userMypage";
	}
	
	
}
