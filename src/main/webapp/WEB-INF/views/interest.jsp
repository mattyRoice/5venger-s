<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>   
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Enumeration" %>                

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/interest.css" type="text/css" />
<script>
	var uidkeys = [];
</script>

<title>스터디허브</title>
</head>
<link rel="icon" href="/resources/Images/profileLogo.png">
<body>
<!-- 사용자 좋아요 목록(관심목록) 필터구현중 -->
    <ul>
        <c:forEach items="${interestList}" var="interest">
            <li>${interest}</li>
        </c:forEach>
    </ul>

	<!--  전체 바디 태그 root -->
	<div id="root">
		<!--  nav 태그 -->
		<nav class="navbar_navbar__O41pd">
			<a href="/board/main"> <img class="navbar_logo"
				src="/resources/Images/SHLogo.png" alt="logo" width=200 height=56>
			</a>
			<div class="navbar_loginElementWrapper__11CeH">
				<button class="navbar_postRegister__FJnRS"
					onclick="location.href='/board/register'">새 글 쓰기</button>
				<button class="navbar_login__3Ui--"
					onclick="location.href='/user/mypage'">마이 페이지</button>
			</div>
		</nav>

		<!--  필터  -->
		<section class="desktopFilter_filterWrapper__1gwsT">
			<!--  인기, 프론트엔드, 백엔드, 모바일, 기타 필터 -->
			<ul class="Category_categories__3bwPA">
				<li class="Category_categoryItem__1ko8V Category_selectedCategory__1J7es"><button id="searchBtn" class="Category_categoryItem__1ko8V ">관심글 목록</button></li>
				<li class="Category_categoryItem__1ko8V "><button id="searchBtn" class="Category_categoryItem__1ko8V ">읽은글 목록</button></li>
			</ul>
			
			<!--  검색 화면 -->
			<div class="search_container__2ExFE">
				<div class='row'>
					<div class="col-lg-12">
						<form id='searchForm' action="/board/main" method='get'>
							<select name='type'>
								<option value="B"
									<c:out value="${pageMaker.cri.type eq 'B'?'selected':''}"/>>bno검색</option>
							</select>
							 <input type='text' name='keyword'
								value='<c:out value="${pageMaker.cri.keyword }"/>'> <input
								type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.cri.pageNum }"/>'> <input
								type='hidden' name='amount'
								value='<c:out value="${pageMaker.cri.amount }"/>'>
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
				</div>
			</div>
		</section>
		
		<!--  메인 게시글 -->
		<main class="mainContent_main_F2EU9">
			<div class="container">
				<div class="row">

					<c:forEach items="${board}" var="board">
						<c:if test="${interestList.contains(board.bno)}"> <!-- only extract the ones with bno in interestList -->
						<div class="col-lg-3">
							<div class="card" style="width: 100%">
								<div class="card-body move" href='<c:out value="${board.bno }"/>'>
									<!-- 스터디-->
									<div class="studyItem_badgeWrapper__3AW7k">
										<div class="badge_badge__ZfNyB">
											<div class="badge_study__39LDm">스터디</div>
										</div>
									</div>
									<!--마감일-->
									<div class="studyItem_schedule__3oAnA">
										<p class="studyItem_scheduleTitle__1KN_9">마감일 |</p>
										<p>
											<c:choose>
												<c:when test="${board.deadline ne null }">
													<p>
														<c:out value="${board.deadline }" />
													</p>
												</c:when>

												<c:when test="${board.deadline eq null }">
													<p>기간 미정</p>
												</c:when>
											</c:choose>

										</p>
									</div>
									<!--게시글 제목-->

									<h6 class="studyItem_title__2B_2o">
										<c:out value="${board.title }" />
									</h6>
									<!--분야-->
									<ul class="studyItem_positionList__1jzi_">
										<c:set var="fnamesArr" value="${fn:split(board.fnames, ',') }" />
										<c:forEach items="${fnamesArr}" var="fname">
											<li class="studyItem_position__2sRRD">${fname }</li>
										</c:forEach>
									</ul>


									<!--기술태그-->
									<ul class="studyItem_content__1mJ9M">
										<c:set var="snamesArr" value="${fn:split(board.snames, ',') }" />
										<c:forEach items="${snamesArr }" var="sname">
											<li class="studyItem_language__20yqw"><img
												class="studyItem_languageImage__1AfGa" title="${sname }"
												src="https://holaworld.io/images/languages/${sname }.svg"
												alt="language"></li>
										</c:forEach>
									</ul>

									<!--구분선-->
									<div class="studyItem_border__2zAjs"></div>

									<!-- 메인게시글 하단 -->
									<section class="studyItem_info__OFIQU">
										<!--  user이미지, user 닉네임 -->
										<div class="studyItem_userInfo__1KkGa">
											<div class="avatar_user__1Pgut">
												<div id="uploadResult">
													<div class='uploadResult'>
														<ul>
															<li><img id="photo" class="avatar_userImg__hogPI" width="30px"
														height="30px" src="/resources/Images/profileLogo.png"
														alt="Profile Image"></li>
														</ul>
														
													</div>
												</div>
												
											</div>
											<div>
												<c:out value="${board.uname }" />
											</div>
										</div>

										<!--  조회수,댓글 -->
										<div class="studyItem_viewsAndComment__1Bxpj">
											<!--  조회수 -->
											<div class="studyItem_infoItem__3vxSf">
												<svg stroke="currentColor" fill="currentColor"
													stroke-width="0" viewBox="0 0 1024 1024" color="#999999"
													height="24" width="24" xmlns="http://www.w3.org/2000/svg"
													style="color: rgb(153, 153, 153);">
												<path
														d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z"></path></svg>
												<p>${board.cnt }</p>
											</div>

											<!--  댓글 -->
											<div class="studyItem_infoItem__3vxSf">
												<svg stroke="currentColor" fill="currentColor"
													stroke-width="0" viewBox="0 0 512 512" color="#999999"
													height="18" width="18" xmlns="http://www.w3.org/2000/svg"
													style="color: rgb(153, 153, 153);">
												<path
														d="M256 32C114.6 32 0 125.1 0 240c0 47.6 19.9 91.2 52.9 126.3C38 405.7 7 439.1 6.5 439.5c-6.6 7-8.4 17.2-4.6 26S14.4 480 24 480c61.5 0 110-25.7 139.1-46.3C192 442.8 223.2 448 256 448c141.4 0 256-93.1 256-208S397.4 32 256 32zm0 368c-26.7 0-53.1-4.1-78.4-12.1l-22.7-7.2-19.5 13.8c-14.3 10.1-33.9 21.4-57.5 29 7.3-12.1 14.4-25.7 19.9-40.2l10.6-28.1-20.6-21.8C69.7 314.1 48 282.2 48 240c0-88.2 93.3-160 208-160s208 71.8 208 160-93.3 160-208 160z"></path></svg>
												<p>${board.replycnt }</p>
											</div>
										</div>
									</section>
								</div>
								<!-- card-body 끝-->
							</div>
							<!--class="card-->
						</div>
						<!-- col-md4 끝-->
						
						<script>
							uidkeys.push('${board.uidkey}');
						</script>
						</c:if>
					</c:forEach>
					<!--  메인 게시글 반복문 끝 -->
				</div>
				<!--row 끝-->
				<br>
			</div>
			<!--container 끝-->
		</main>
		<!--  main 끝 -->
	</div>

	

	<!-- 전체 바디 태그 root 끝 -->

	<!--  pageNation -->
	<nav aria-label="Page navigation">
		<ul class="pagination  justify-content-center">
			<c:if test="${pageMaker.prev }">
				<li class="page-item"><a class="page-link"
					href="${pageMaker.startPage-1 }">Previous</a></li>
			</c:if>

			<c:forEach var="num" begin="${pageMaker.startPage}"
				end="${pageMaker.endPage}">
				<li
					class="page-item  ${pageMaker.cri.pageNum == num ? 'active':''} ">
					<a class="page-link" href="${num}">${num}</a>
				</li>
			</c:forEach>


			<c:if test="${pageMaker.next }">
				<li class="page-item"><a class="page-link"
					href="${pageMaker.endPage+1 }">Next</a></li>
			</c:if>
		</ul>

		<form id='actionForm' action="/board/main" method='get'>
			<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
			<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
			<input type='hidden' name='type'
				value='<c:out value="${ pageMaker.cri.type }"/>'> <input
				type='hidden' name='keyword'
				value='<c:out value="${ pageMaker.cri.keyword }"/>'>
		</form>
	</nav>

	<!-- 맨 위로 올라가기 버튼 -->
	<div class="Topbutton_topButton__35AKX">
		<img class="Topbutton_topButtonImage__2Klzb"
			src="/resources/Images/TOP.png" alt="default">
	</div>

	

	<%@ include file="/WEB-INF/includes/footer.jsp"%>