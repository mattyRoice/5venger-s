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

.card-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.card {
  width: calc(33.33% - 10px);
  margin-bottom: 20px;
}

footer {
  background-color: #f5f5f5;
}

footer {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100px;
}

</style>
</head>
<body>
	<div id="root">
		<nav class="navbar_navbar__O41pd">
			<a href="/"> <img class="navbar_logo__a5PmC"
				src="/resources/Images/SHLogo.png" alt="logo">
			</a>
			<div class="navbar_loginElementWrapper__11CeH">
				<button class="navbar_postRegister__FJnRS">새 글 쓰기</button>
				<button class="navbar_login__3Ui--">로그인</button>
			</div>
		</nav>

		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
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
			<hr>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#carouselExampleControls" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#carouselExampleControls" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
	
	
	
	
	</div>
	<nav class="navbar navbar-expand-lg bg-light">

		<a class="nav-link dropdown-toggle" href="#" role="button"
			data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#">Action</a></li>
			<li><a class="dropdown-item" href="#">Another action</a></li>
			<li><hr class="dropdown-divider"></li>
			<li><a class="dropdown-item" href="#">Something else here</a></li>
		</ul>
	</nav>



	<%
	for (int i = 0; i < 5; i++) {
	%>
	<div class="container">
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<div class="col">
				<div class="card" style="width: 70%">
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
				<div class="card" style="width: 70%">
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
				<div class="card" style="width: 70%">
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
	</div>
	<%
	}
	%>


	
	<hr>
	<footer>
	<br><br>
		<div class="container text-center">
			<div class="row">
				<div class="col-sm-3">
					<a href="/"> <img class="navbar_logo__a5PmC" src="/resources/Images/SHLogo.png" alt="logo"> </a><br><br>
					 Team-5vengers ABC@naver.com
				</div>
				<div class="col-sm-9">
					<div class="row">
						<div class="col-8 col-sm-6">이용약관</div>
						<div class="col-4 col-sm-6">개인정보처리방침</div>
					</div>
				</div>
			</div>
		</div>
		
			
	
	
	</footer>
	

</body>
</html>