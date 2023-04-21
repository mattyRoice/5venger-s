<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	<nav class="navbar_navbar__O41pd">
			<a href="/"> <img class="navbar_logo"
				src="/resources/Images/SHLogo.png" alt="logo" width=200 height=50>
			</a>
			<div class="navbar_loginElementWrapper__11CeH">
				<button class="navbar_postRegister__FJnRS"
					onclick="location.href='/board/register'">새 글 쓰기</button>
			
			
			<% if (session.getAttribute("loginUser") != null) { %>
				<!-- 사용자용 드롭다운 메뉴 -->
						<button class="navbar_login__3Ui--" onclick="location.href='/board/register'">내 작성글</button>
						<button class="navbar_login__3Ui--" onclick="location.href='/interest'">내 관심글</button>
						
					<div class="dropdown" style="display: inline-block">
			  			<a class="btn dropdown-toggle" id="dropImage" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			  			
						</a>						
					   <ul class="dropdown-menu">						  
						   <li><a class="dropdown-item fs-6 fw-bold mb-2" href="/user/mypage">마이페이지</a></li>
						   <li><a class="dropdown-item fs-6 fw-bold" href="/user/logout">로그아웃</a></li>
						</ul>			  
					</div>
					
					<%-- <h1>${ loginUser.unickName }</h1> --%>
					
			<% } else if (session.getAttribute("loginAdmin") != null) { %>
				<!-- 관리자용 드롭다운 메뉴 -->
					<div class="dropdown" style="display: inline-block">
			  			<a class="btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<img class="rounded-circle" src="/resources/Images/adminProfileLogo.png" width=60 alt="Profile Image" >
						</a>						
						<ul class="dropdown-menu">
						  <li><span class="dropdown-item fs-6 fw-bold mb-2">관리자 ${ loginAdmin.aname }님</span></li>
						  <li><a class="dropdown-item fs-6 fw-bold" href="/admin/logout">로그아웃</a></li>
						</ul>			  
					</div>
			<% } else { %>
				<!-- 로그인 버튼 -->
				<button class="navbar_login__3Ui--"
							onclick="location.href='/user/login'">로그인</button>
				<button class="navbar_login__3Ui--"
							onclick="location.href='/user/join'">회원가입</button>
			<% } %>
			
					</div>
				</nav>
													
