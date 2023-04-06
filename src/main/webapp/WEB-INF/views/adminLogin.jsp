<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>스터디허브 관리자 로그인</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- css -->
<style>
body {
	padding-top: 90px;
	padding-bottom: 40px;
	background-color: white;
}

.form-login {
	max-width: 400px;
	margin: 0 auto;
}

.welcome {
	margin-top: 30px;
	margin-bottom: 50px;
}
</style>
</head>
<body>
	
	
	<!-- 부트스트랩 https://getbootstrap.kr/docs/5.2/getting-started/introduction/ -->
	<div class="container">
		<form class="form-login">
		
			<img class="mb-5 rounded mx-auto d-block" src="/resources/Images/SHLogo.png" alt="StudyHybLogo" width="350" height=auto>
		
			<!-- <h3 class="welcome text-center fs-4 fw-bold">StudyHub에 오신 것을 환영합니다!</h3> -->
			
			<input type="text" id="inputId" class="form-control p-3 mt-5" placeholder="관리자아이디"> 
			<input type="password" id="inputPassword" class="form-control p-3 mt-1" placeholder="비밀번호">
			
			<div class="form-check mt-3 mb-3">
			  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			  <label class="form-check-label" for="flexCheckDefault">로그인 상태 유지</label>
			</div>
			 
			<div class="d-grid gap-2">
				<button type="button" class="btn btn-primary p-3 fw-semibold" style="background-color: #ff914d;  border:none;">관리자 로그인</button>
			</div>
			
			<div class="text-center mt-4" style="color:#b4b4b4; font-size:15px;">
				<a href="#" class="text-decoration-none" style="color:#3c3c3c; font-weight:semibold">아이디찾기</a><a> | </a>
				<a href="#" class="text-decoration-none" style="color:#3c3c3c;">비밀번호 찾기</a><a> | </a>
				<a href="#" class="text-decoration-none" style="color:#3c3c3c;">회원가입</a>
			</div>
			
		</form>
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>