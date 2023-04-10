<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>스터디허브</title>
<style>
li {
	padding: 0;
}

.studyItem_badgeWrapper__3AW7k {
	display: flex;
	align-items: center;
	grid-gap: 3px;
	gap: 3px;
}

.badge_badge__ZfNyB {
	height: 28px;
	font-weight: 800;
	font-size: 12px;
	line-height: 16px;
	letter-spacing: -.04em;
}

.badge_study__39LDm {
	border-radius: 20px;
	padding: 4px 12px;
	background: #efefef;
	color: #656565;
}

.studyItem_schedule__3oAnA {
	display: flex;
	font-size: 14px;
	grid-gap: 8px;
	gap: 8px;
	color: #999;
	font-weight: 500;
	margin-top: 20px;
}

.studyItem_scheduleTitle__1KN_9 {
	letter-spacing: -4%;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.studyItem_schedule__3oAnA {
	display: flex;
	font-size: 14px;
	grid-gap: 8px;
	gap: 8px;
	color: #999;
	font-weight: 500;
	margin-top: 20px;
}

.studyItem_title__2B_2o {
	font-size: 17px;
	min-height: 50px;
	line-height: 28px;
	font-weight: 500;
	letter-spacing: -.05em;
	margin: 7px 0 10px;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;
	word-break: break-all;
	overflow: hidden;
}

.studyItem_positionList__1jzi_ {
	height: 22px;
	display: flex;
	margin-bottom: 20px;
	grid-gap: 3px;
	gap: 3px;
}

.studyItem_position__2sRRD {
	padding: 3px 10px;
	grid-gap: 5px;
	gap: 5px;
	height: 22px;
	background: #f2f4f8;
	border-radius: 15px;
	font-weight: 700;
	font-size: 13px;
	line-height: 16px;
	color: #3e86f5;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

.studyItem_content__1mJ9M {
	margin-bottom: 24px;
	padding: 0;
	display: flex;
	grid-gap: 8px;
	gap: 8px;
	list-style: none;
}

.studyItem_border__2zAjs {
	border-top: 2px solid #f2f2f2;
}

.studyItem_bookmark__2YtKX {
	display: block;
	width: 28px;
	height: 28px;
	position: absolute;
	top: 40px;
	right: 20px;
}

.studyItem_content__1mJ9M {
	margin-bottom: 24px;
	padding: 0;
	display: flex;
	grid-gap: 8px;
	gap: 8px;
	list-style: none;
}

.studyItem_language__20yqw, .studyItem_languageImage__1AfGa {
	width: 60px;
	height: 60px;
}

.studyItem_userInfo__1KkGa, .studyItem_viewsAndComment__1Bxpj {
	display: flex;
	grid-gap: 10px;
	gap: 10px;
}

.studyItem_info__OFIQU {
	display: flex;
	font-size: 14px;
	font-weight: 500;
	justify-content: space-between;
	letter-spacing: -.04em;
	margin-top: 8px;
}

.avatar_user__1Pgut {
	display: flex;
	align-items: center;
	position: relative;
}

.avatar_userImg__hogPI {
	display: block;
	border-radius: 50%;
	object-fit: cover;
}
</style>
</head>
<body>
	<!--  전체 바디 태그 root -->
	<div id="root">
		<!--  nav 태그 -->
		<nav class="navbar_navbar__O41pd">
			<a href="/"> <img class="navbar_logo__a5PmC"
				src="/resources/Images/SHLogo.png" alt="logo">
			</a>
			<div class="navbar_loginElementWrapper__11CeH">
				<button class="navbar_postRegister__FJnRS">새 글 쓰기</button>
				<button class="navbar_login__3Ui--">로그인</button>
			</div>
		</nav>

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
				<li class="Category_categoryItem__1ko8V ">인기</li>
				<li class="Category_categoryItem__1ko8V ">프론트엔드</li>
				<li class="Category_categoryItem__1ko8V ">백엔드</li>
				<li class="Category_categoryItem__1ko8V ">모바일</li>
				<li class="Category_categoryItem__1ko8V ">기타</li>
				<li
					class="Category_categoryItem__1ko8V Category_selectedCategory__1J7es">모두보기</li>
			</ul>
			<ul class="LanguageBar_languages__2Ilqf">
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/javascript.svg"
					alt="JavaScript"><span>JavaScript</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/typescript.svg"
					alt="TypeScript"><span>TypeScript</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/react.svg" alt="React"><span>React</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/vue.svg" alt="Vue"><span>Vue</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/svelte.svg" alt="Svelte"><span>Svelte</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/nextjs.svg" alt="Nextjs"><span>Nextjs</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/nodejs.svg" alt="Nodejs"><span>Nodejs</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/java.svg" alt="Java"><span>Java</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/spring.svg" alt="Spring"><span>Spring</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/go.svg" alt="Go"><span>Go</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/nestjs.svg" alt="Nestjs"><span>Nestjs</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/kotlin.svg" alt="Kotlin"><span>Kotlin</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/express.svg"
					alt="Express"><span>Express</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/mysql.svg" alt="MySQL"><span>MySQL</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/mongodb.svg"
					alt="MongoDB"><span>MongoDB</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/python.svg" alt="Python"><span>Python</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/django.svg" alt="Django"><span>Django</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/php.svg" alt="php"><span>php</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/graphql.svg"
					alt="GraphQL"><span>GraphQL</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/firebase.svg"
					alt="Firebase"><span>Firebase</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/flutter.svg"
					alt="Flutter"><span>Flutter</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/swift.svg" alt="Swift"><span>Swift</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/reactnative.svg" alt="ReactNative"><span>ReactNative</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/unity.svg" alt="Unity"><span>Unity</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/aws.svg" alt="AWS"><span>AWS</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/kubernetes.svg" alt="Kubernetes"><span>Kubernetes</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/docker.svg" alt="Docker"><span>Docker</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/git.svg" alt="Git"><span>Git</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/figma.svg" alt="Figma"><span>Figma</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/zeplin.svg" alt="Zeplin"><span>Zeplin</span></li>
				<li class="LanguageBar_languageIcon__Um7GQ LanguageBar_full__3qQet"><img
					class="LanguageBar_logo__332tN"
					src="https://holaworld.io/images/languages/jest.svg" alt="Jest"><span>Jest</span></li>
			</ul>
			<div class="SelectedLanguage_selectedWrapper__2StUQ">
				<ul class="SelectedLanguage_selectedLanguages__DYJjl"></ul>
			</div>
			<div class="search_container__2ExFE">
				<img class="search_searchImg__2ia6h"
					src="https://holaworld.io/images/info/search.png" alt="sub logo"><input
					placeholder="제목, 게시글 검색" class="search_searchInput__1BF6g" value="">
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
						<div class=" css-1n44zxc-control">
							<div class=" css-1wfrg0q">
								<div class=" css-1uccc91-singleValue">전체</div>
								<input id="react-select-3-input" readonly="" tabindex="0"
									aria-autocomplete="list" class="css-62g3xt-dummyInput" value="">
							</div>
							<div class=" css-1wy0on6">
								<span class=" css-43ykx9-indicatorSeparator"></span>
								<div class=" css-tlfecz-indicatorContainer" aria-hidden="true">
									<svg height="20" width="20" viewBox="0 0 20 20"
										aria-hidden="true" focusable="false" class="css-8mmkcg">
										<path
											d="M4.516 7.548c0.436-0.446 1.043-0.481 1.576 0l3.908 3.747 3.908-3.747c0.533-0.481 1.141-0.446 1.574 0 0.436 0.445 0.408 1.197 0 1.615-0.406 0.418-4.695 4.502-4.695 4.502-0.217 0.223-0.502 0.335-0.787 0.335s-0.57-0.112-0.789-0.335c0 0-4.287-4.084-4.695-4.502s-0.436-1.17 0-1.615z"></path></svg>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="toggleSwitch_switch__hglrb">
					<span class="toggleSwitch_switchTitle__1g_TJ">모집 중만 보기</span><label
						class="toggleSwitch_switchLabel__2oz0J toggleSwitch_switchChecked__SrqJl"
						for="switchInput"><input type="checkbox"
						class="toggleSwitch_switchCheckbox__3lrfj" id="switchInput"
						checked="">
					<div class="toggleSwitch_ball__3F55h"></div></label>
				</div>
			</div>



			<%
			for (int i = 0; i < 5; i++) {
			%>
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="card" style="width: 100%">
							<div class="card-body">
								<!-- 프로젝트-->
								<div class="studyItem_badgeWrapper__3AW7k">
									<div class="badge_badge__ZfNyB">
										<div class="badge_study__39LDm">프로젝트</div>
									</div>
								</div>
								<!--마감일-->
								<div class="studyItem_schedule__3oAnA">
									<p class="studyItem_scheduleTitle__1KN_9">마감일 |</p>
									<p>2023.04.07</p>
								</div>
								<!--게시글 제목-->

								<h6 class="studyItem_title__2B_2o">웹 제작 프로젝트 같이할 디자이너 모집합니다</h6>
								<!--분야-->
								<ul class="studyItem_positionList__1jzi_">
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
								</ul>


								<!--기술태그-->
								<ul class="studyItem_content__1mJ9M">
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
								</ul>

								<!--구분선-->
								<div class="studyItem_border__2zAjs"></div>

								<!-- user, 조회수 댓글-->
								<div class="studyItem_userInfo__1KkGa">
									<div class="avatar_user__1Pgut">
										<img class="avatar_userImg__hogPI" width="30px" height="30px"
											src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
											alt="avatar">
									</div>
									<div>닉네임</div>
								</div>
								<!--관심등록 이미지 영역-->
								<img class="studyItem_bookmark__2YtKX"
									src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
									alt="marker" />


							</div>
							<!-- card-body 끝-->
						</div>
						<!--class="card-->
					</div>
					<!-- col-md4 끝-->
					<div class="col">
						<div class="card" style="width: 100%">
							<div class="card-body">
								<!-- 프로젝트-->
								<div class="studyItem_badgeWrapper__3AW7k">
									<div class="badge_badge__ZfNyB">
										<div class="badge_study__39LDm">프로젝트</div>
									</div>
								</div>
								<!--마감일-->
								<div class="studyItem_schedule__3oAnA">
									<p class="studyItem_scheduleTitle__1KN_9">마감일 |</p>
									<p>2023.04.07</p>
								</div>
								<!--게시글 제목-->

								<h6 class="studyItem_title__2B_2o">웹 제작 프로젝트 같이할 디자이너 모집합니다</h6>
								<!--분야-->
								<ul class="studyItem_positionList__1jzi_">
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
								</ul>


								<!--기술태그-->
								<ul class="studyItem_content__1mJ9M">
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
								</ul>

								<!--구분선-->
								<div class="studyItem_border__2zAjs"></div>

								<!-- user, 조회수 댓글-->
								<div class="studyItem_userInfo__1KkGa">
									<div class="avatar_user__1Pgut">
										<img class="avatar_userImg__hogPI" width="30px" height="30px"
											src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
											alt="avatar">
									</div>
									<div>닉네임</div>
								</div>
								<!--관심등록 이미지 영역-->
								<img class="studyItem_bookmark__2YtKX"
									src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
									alt="marker" />


							</div>
							<!-- card-body 끝-->
						</div>
						<!--class="card-->
					</div>
					<!-- col-md4 끝-->
					<div class="col">
						<div class="card" style="width: 100%">
							<div class="card-body">
								<!-- 프로젝트-->
								<div class="studyItem_badgeWrapper__3AW7k">
									<div class="badge_badge__ZfNyB">
										<div class="badge_study__39LDm">프로젝트</div>
									</div>
								</div>
								<!--마감일-->
								<div class="studyItem_schedule__3oAnA">
									<p class="studyItem_scheduleTitle__1KN_9">마감일 |</p>
									<p>2023.04.07</p>
								</div>
								<!--게시글 제목-->

								<h6 class="studyItem_title__2B_2o">웹 제작 프로젝트 같이할 디자이너 모집합니다</h6>
								<!--분야-->
								<ul class="studyItem_positionList__1jzi_">
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
								</ul>


								<!--기술태그-->
								<ul class="studyItem_content__1mJ9M">
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
								</ul>

								<!--구분선-->
								<div class="studyItem_border__2zAjs"></div>

								<!-- user, 조회수 댓글-->
								<div class="studyItem_userInfo__1KkGa">
									<div class="avatar_user__1Pgut">
										<img class="avatar_userImg__hogPI" width="30px" height="30px"
											src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
											alt="avatar">
									</div>
									<div>닉네임</div>
								</div>
								<!--관심등록 이미지 영역-->
								<img class="studyItem_bookmark__2YtKX"
									src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
									alt="marker" />


							</div>
							<!-- card-body 끝-->
						</div>
						<!--class="card-->
					</div>
					<!-- col-md4 끝-->
					<div class="col">
						<div class="card" style="width: 100%">
							<div class="card-body">
								<!-- 프로젝트-->
								<div class="studyItem_badgeWrapper__3AW7k">
									<div class="badge_badge__ZfNyB">
										<div class="badge_study__39LDm">프로젝트</div>
									</div>
								</div>
								<!--마감일-->
								<div class="studyItem_schedule__3oAnA">
									<p class="studyItem_scheduleTitle__1KN_9">마감일 |</p>
									<p>2023.04.07</p>
								</div>
								<!--게시글 제목-->

								<h6 class="studyItem_title__2B_2o">웹 제작 프로젝트 같이할 디자이너 모집합니다</h6>
								<!--분야-->
								<ul class="studyItem_positionList__1jzi_">
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">디자이너</li>
								</ul>


								<!--기술태그-->
								<ul class="studyItem_content__1mJ9M">
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="java"
										src="https://pngimg.com/uploads/letter_c/letter_c_PNG22.png"
										alt="language"></li>
								</ul>

								<!--구분선-->
								<div class="studyItem_border__2zAjs"></div>

								<!-- user, 조회수 댓글-->
								<div class="studyItem_userInfo__1KkGa">
									<div class="avatar_user__1Pgut">
										<img class="avatar_userImg__hogPI" width="30px" height="30px"
											src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
											alt="avatar">
									</div>
									<div>닉네임</div>
								</div>
								<!--관심등록 이미지 영역-->
								<img class="studyItem_bookmark__2YtKX"
									src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
									alt="marker" />


							</div>
							<!-- card-body 끝-->
						</div>
						<!--class="card-->
					</div>
					<!-- col-md4 끝-->
				</div>
				<!--row 끝-->
				<br>
			</div>
			<!--container 끝-->
			<%
			}
			%>
		</main>
		<!--  main 끝 -->
	</div>
	<!-- 전체 바디 태그 root 끝 -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">		
	</script>
	<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
	<script>
// 		const searchContainer = document.querySelector('.search-container');
// 		const searchBox = document.querySelector('.search-box');
	
// 		searchContainer.addEventListener('click', () => {
// 		  searchBox.style.right = '0';
// 		});
 
		$(document).ready(function() {
		  // 선택한 <li> 태그를 클릭할 때마다 실행되는 함수
		  $('.LanguageBar_languageIcon__Um7GQ.LanguageBar_full__3qQet').click(function() {
		    // 선택한 <li> 태그의 텍스트를 가져옴
		    var text = $(this).text();

		    // 새로운 <li> 태그와 <img> 태그 생성
		    var newLi = $('<li>').text(text);
		    var newImg = $('<img>').attr('src', 'https://holaworld.io/images/info/delete.svg');
 
		    // 다른 <ul> 태그에 <li>와 <img> 추가
		    $('.SelectedLanguage_selectedLanguages__DYJjl').append(newLi);
		    $('.SelectedLanguage_selectedLanguages__DYJjl').append(newImg);
		  });
		  
		  var selectedClass = 'LanguageBar_selected__1R9Jv';
		  var otherClasses = '.LanguageBar_languageIcon__Um7GQ:not(.' + selectedClass + ')';

		  $('li').click(function() {
		    // 이전에 선택된 <li> 요소의 클래스를 삭제
		    $('.' + selectedClass).removeClass(selectedClass);

		    // 현재 선택된 <li> 요소에 클래스 추가
		    $(this).addClass(selectedClass);

		    // 다른 <li> 요소의 클래스를 변경
		    $(otherClasses).removeClass('LanguageBar_full__3qQet').addClass('LanguageBar_transparent__3wlZf');
		    $(this).removeClass('LanguageBar_transparent__3wlZf').addClass('LanguageBar_full__3qQet');
		  });
		  
		 
		  
		  $('.LanguageBar_languageIcon__Um7GQ.LanguageBar_full__3qQet').click(function() {
		    // 다른 ul 요소 안에 새로운 li 요소 추가
		    var targetUl = $(this).closest('.other-ul');
		    targetUl.append('<li>New Item</li>');

		    // 새로 추가된 li 요소의 뒤쪽에 span 태그 추가
		    var targetLi = targetUl.find('li:last-child');
		    if (targetLi.nextAll('.SelectedLanguage_resetFilter__2EZuH').length === 0) {
		      targetLi.after('<span class="SelectedLanguage_resetFilter__2EZuH">X</span>');
		    }

		    // span 태그 클릭 시 페이지 새로고침
		    targetLi.nextAll('.SelectedLanguage_resetFilter__2EZuH').click(function(e) {
		      e.stopPropagation();
		      location.reload();
		    });
		  });

		  
		});
		
	</script>

</body>
</html>