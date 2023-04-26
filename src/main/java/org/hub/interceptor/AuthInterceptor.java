package org.hub.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.lang.Nullable;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter implements SessionNames{
// 자바는 다중 상속이 안되니, SessionNames는 Interface로 만들어 implements 해 사용한다.
// 로그인이 안되어있으면 동작하는 것이니, preHandle(Controller 작동 전 활동)만 있으면 된다.
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("AuthInterceptor.pre > > >");
		
		HttpSession session = request.getSession(); //세션은 브라우저(크롬,IE 등) 단위로 생긴다
		
		// 1. LOGIN 세션이 비어있음 = 로그인 안함
		if(session.getAttribute(LOGIN) == null) {
			
			// 2. LOGIN으로 보내기 전, 사용자가 이동하려던 url 세션에 저장
			String uri = request.getRequestURI(); // ex) board/register
			System.out.println("AuthInterceptor.pre > > >" + uri);
			String query = request.getQueryString(); // ex) bno=9 ...
			
			if(!(StringUtils.isEmpty(query))) {
				uri += "?" + query;			
			}
			
			session.setAttribute(ATTEMPTED, uri);
			response.sendRedirect("/user/login");
		}
		return true;
	}

	
}
