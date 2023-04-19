<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

			<nav class="navbar_navbar__O41pd">
				<a href="/"> <img class="navbar_logo__a5PmC"
					src="/resources/Images/SHLogo.png" alt="logo">
				</a>
				<div class="navbar_loginElementWrapper__11CeH">
					<button class="navbar_postRegister__FJnRS"
						onclick="location.href='/board/register'">새 글 쓰기</button>
				
			<% if (session.getAttribute("loginUser") != null) { %>
				<!-- 사용자용 드롭다운 메뉴 -->
					<div class="dropdown" style="display: inline-block">
			  			<a class="btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							   <img class="rounded-circle" src="/resources/Images/profileLogo.png" width=60 alt="Profile Image" >
						</a>						
					   <ul class="dropdown-menu">
						  <li><a class="dropdown-item fs-6 fw-bold mb-2" href="#">내 작성글</a></li>
						   <li><a class="dropdown-item fs-6 fw-bold mb-2" href="#">내 관심글</a></li>
						   <li><a class="dropdown-item fs-6 fw-bold mb-2" href="#">설정</a></li>
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
						  <li><a class="dropdown-item fs-6 fw-bold mb-2">${ loginAdmin.aname }</a></li>
						  <li><a class="dropdown-item fs-6 fw-bold" href="/admin/logout">로그아웃</a></li>
						</ul>			  
					</div>
			<% } else { %>
				<!-- 로그인 버튼 -->
				<button class="navbar_login__3Ui--"
							onclick="location.href='/user/login'">로그인</button>
			<% } %>
					</div>
				</nav>
													
