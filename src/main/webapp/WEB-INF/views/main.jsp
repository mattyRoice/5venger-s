<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/main.css" type="text/css" />
<script>
	var uidkeys = [];
</script>
<title>스터디허브</title>
</head>
<link rel="icon" href="/resources/Images/profileLogo.png">
<body>
	<!--  전체 바디 태그 root -->
	<div id="root">z
		<!--  nav 태그 -->
		<%@include file="../includes/header.jsp"%>

		<!--  상단 배너 태그 -->
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<!--  첫 번째 배너 -->
				<div class="carousel-item active">
					<div class="firstBanner_containerWrapper__1QH6h">
						<div class="firstBanner_container__1M3Ft">
							<div class="firstBanner_leftCover__1KzCe">
								<h2 class="firstBanner_title__3ov1t">스터디를 찾는 가장 쉬운 방법</h2>
								<div class="firstBanner_subContainer__2lho6">
									<span class="firstBanner_subText__1pOla">스터디허브에서 함께할 팀원을
										찾으세요 🔍</span>
								</div>
							</div>
							<div class="firstBanner_rightCover__3Olog">
								<img class="firstBanner_coverImage__1yB1-"
									src="https://holaworld.io/images/banner/11.png"
									alt="firstBanner">
							</div>
						</div>
					</div>
				</div>
				<!--  두 번째 배너 -->
				<div class="carousel-item">
					<div class="secondBanner_containerWrapper__1N-i4">
						<div class="secondBanner_container__1Nu6b">
							<div class="secondBanner_leftCover__1y4GQ">
								<button class="secondBanner_promotion__3s4jx">NOTICE</button>
								<div></div>
								<h2 class="secondBanner_title__pzIWX">StudyHub!는 봄맞이 새단장 완료</h2>
								<span class="secondBanner_subText__rl70c">더 편해진 스터디허브!
									모르는 사람 없게 해주세요 🙏</span>
							</div>

							<div class="secondBanner_rightCover__3Xm1n">
								<img class="secondBanner_coverImage__1psJQ"
									src="https://holaworld.io/images/banner/22.png"
									alt="second banner">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  배너 좌우 컨트롤 버튼 -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<!--  필터  -->
		<section class="desktopFilter_filterWrapper__1gwsT">
			<!--  인기, 프론트엔드, 백엔드, 모바일, 기타 필터 -->
			<ul class="Category_categories__3bwPA">
				<li class="Category_categoryItem__1ko8V Category_selectedCategory__1J7es">인기</li>
				<li class="Category_categoryItem__1ko8V ">프론트엔드</li>
				<li class="Category_categoryItem__1ko8V ">백엔드</li>
				<li class="Category_categoryItem__1ko8V ">모바일</li>
				<li class="Category_categoryItem__1ko8V ">기타</li>
				<li
					class="Category_categoryItem__1ko8V ">모두보기</li>
			</ul>
			<ul class="LanguageBar_languages__2Ilqf">
				<!-- 0 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/javascript.svg"
					alt="JavaScript"><span>JavaScript</span></li>
				<!-- 1-->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/typescript.svg"
					alt="TypeScript"><span>TypeScript</span></li>
				<!-- 2 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/react.svg" alt="React"><span>React</span></li>
				<!-- 3 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/vue.svg" alt="Vue"><span>Vue</span></li>
				<!-- 4 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/svelte.svg" alt="Svelte"><span>Svelte</span></li>
				<!-- 5 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/nextjs.svg" alt="Nextjs"><span>Nextjs</span></li>
				<!-- 6 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/nodejs.svg" alt="Nodejs"><span>Nodejs</span></li>
				<!-- 7 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/java.svg" alt="Java"><span>Java</span></li>
				<!-- 8 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/spring.svg" alt="Spring"><span>Spring</span></li>
				<!-- 9 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/go.svg" alt="Go"><span>Go</span></li>
				<!-- 10 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/nestjs.svg" alt="Nestjs"><span>Nestjs</span></li>
				<!-- 11 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/kotlin.svg" alt="Kotlin"><span>Kotlin</span></li>
				<!-- 12 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/express.svg"
					alt="Express"><span>Express</span></li>
				<!-- 13 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/mysql.svg" alt="MySQL"><span>MySQL</span></li>
				<!-- 14 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/mongodb.svg"
					alt="MongoDB"><span>MongoDB</span></li>
				<!-- 15 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/python.svg" alt="Python"><span>Python</span></li>
				<!-- 16 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/django.svg" alt="Django"><span>Django</span></li>
				<!-- 17 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/php.svg" alt="php"><span>php</span></li>
				<!-- 18 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/graphql.svg"
					alt="GraphQL"><span>GraphQL</span></li>
				<!-- 19 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/firebase.svg"
					alt="Firebase"><span>Firebase</span></li>
				<!-- 20 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/flutter.svg"
					alt="Flutter"><span>Flutter</span></li>
				<!-- 21 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/swift.svg" alt="Swift"><span>Swift</span></li>
				<!-- 22 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/reactnative.svg"
					alt="ReactNative"><span>ReactNative</span></li>
				<!-- 23 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/unity.svg" alt="Unity"><span>Unity</span></li>
				<!-- 24 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/aws.svg" alt="AWS"><span>AWS</span></li>
				<!-- 25 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/kubernetes.svg"
					alt="Kubernetes"><span>Kubernetes</span></li>
				<!-- 26 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/docker.svg" alt="Docker"><span>Docker</span></li>
				<!-- 27 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/git.svg" alt="Git"><span>Git</span></li>
				<!-- 28 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/figma.svg" alt="Figma"><span>Figma</span></li>
				<!-- 29 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/zeplin.svg" alt="Zeplin"><span>Zeplin</span></li>
				<!-- 30 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/jest.svg" alt="Jest"><span>Jest</span></li>
				<!-- 31 -->
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN" src="https://holaworld.io/images/languages/c.svg"
					alt="C"><span>C</span></li>
			</ul>
			<div class="SelectedLanguage_selectedWrapper__2StUQ">
				<ul class="SelectedLanguage_selectedLanguages__DYJjl">
					<li class="SelectedLanguage_selectedLanguage__3AUIy"
						style="display: none;"><span
						class="SelectedLanguage_resetFilter__2EZuH">필터 초기화</span></li>
				</ul>
			</div>

			<!--  검색 화면 -->
			<div class="search_container__2ExFE">
				<div class='row'>
					<div class="col-lg-12">
						<form id='searchForm' action="/board/main" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>검색타입</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
								<option value="TC"
									<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/> selected>제목
									or 내용</option>
							</select> <input type='text' name='keyword'
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
			<!--  게시글 카테고리 -->
			<div class="mainContent_categoryWrapper__1n063">
				<div class="findMyPosition_selectWrapper__23xHq">
					<div class=" css-2b097c-container">
						<span aria-live="polite" aria-atomic="false"
							aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>

						<select class="form-select form-select-lg mb-3"
							aria-label=".form-select-lg example">
							<option selected>내 포지션 찾기</option>
							<option value="all">전체</option>
							<option value="front">프론트엔드</option>
							<option value="back">백엔드</option>
							<option value="ios">IOS</option>
							<option value="android">안드로이드</option>
							<option value="devops">DevOps</option>
							<option value="designer">디자이너</option>
							<option value="pm">PM</option>
						</select>
					</div>
				</div>
				<div class="toggleSwitch_switch__hglrb">
					<span class="toggleSwitch_switchTitle__1g_TJ">모집 중만 보기</span>
					<div class="form-check form-switch">
						<input class="form-check-input" type="checkbox" role="switch"
							id="flexSwitchCheckChecked" checked>
					</div>
					</label>
				</div>
			</div>

			<div class="container">
				<div class="row">

					<c:forEach items="${board}" var="board">
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

	<!-- 전체 바디 태그 root 끝 -->

	<!-- 맨 위로 올라가기 버튼 -->
	<div class="Topbutton_topButton__35AKX">
		<img class="Topbutton_topButtonImage__2Klzb"
			src="/resources/Images/TOP.png" alt="default">
	</div>

	<!--  하단 footer -->
	<footer class="footer_footer__31o2n">
		<div class="footer_leftCover__2lNes">
			<img class="footer_footerImg__1iADK"
				src="/resources/Images/norabbitlogo.png" alt="footer logo">
			<div class="footer_contactInfo__LUbVV">
				<div class="footer_title__3M399">Contact</div>
				<div class="footer_mail__3bYNn">team.studyhub.official@gmail.com</div>
			</div>
			<div class="footer_copyright__CqZaX">Copyright Studyhub. All
				rights reserved</div>
		</div>
		<div class="footer_rightCover__1Lgjb">
			<a
				href="https://www.notion.so/5venger-s-Project-2f126e2c4d6f4f46b4c273a31802fbf1"
				target="_blank" rel="noreferrer">프로젝트 노션</a> <a
				href="https://www.notion.so/8304498cf0d04f6899c6cc9d048691d7"
				target="_blank" rel="noreferrer">만든 사람들</a> <a 
				href="https://www.notion.so/StudyHub-1599dc0e2aea42ccab197b49c6651c0b"
				target="_blank" rel="noreferrer">서비스 소개	</a> 
				
		</div>
	</footer>

	<%@ include file="/WEB-INF/includes/footer.jsp"%>