<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>StudyHub</title>
		
		<!-- BootStrap -->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">	          
		<!-- multi-select(관심기술태그) -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag/dist/css/multi-select-tag.css">
	     <!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
	    <style>
	    html,
		body {
		  height: 100%;
		}
		
		body {
		  display: flex;
		  align-items: center;
		  /* padding-top: 40px;
		  padding-bottom: 40px; */
		  background-color: #ffffff;
		}
		
		.form-mypage {
		  width: 100%;
		  max-width: 700px;
		  padding: 15px;
		  margin: auto;
		}
		nav {
			margin-left:500px;
			margin-right:500px;
		}
		h3 {
			 font-weight: bold;
		}
		
		#newBoard {
		  text-decoration: none;
		  color: black;
		}
		
	    </style>
	    </head> 	    
    
	</head>
	<!-- end for head -->
	
	<body>
		<!-- 상단에 고정시키기 -->
		<nav class="navbar fixed-top"> 
		  <div class="container-fluid">
		    <!-- 로고 -->
		    <div>				
				<a href="#"><img class="mb-3 rounded" src="/resources/Images/SHLogo.png" alt="StudyHybLogo" width="150"></a>
			</div>
			
			<!-- 새글쓰기, 드롭다운 묶음 -->				
			<div>
				<div style="display: inline-block">
					<a href="#" id="newBoard" class="fs-5 fw-bolder me-2">새 글 쓰기</a>
				</div>
				<div class="dropdown" style="display: inline-block">
		  			<a class="btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						   <img class="rounded-circle" src="/resources/Images/profileLogo.png" width=60 alt="Profile Image" >
					</a>						
					   <ul class="dropdown-menu">
						  <li><a class="dropdown-item fs-6 fw-bold mb-2" href="#">내 작성글</a></li>
						   <li><a class="dropdown-item fs-6 fw-bold mb-2" href="#">내 관심글</a></li>
						   <li><a class="dropdown-item fs-6 fw-bold mb-2" href="#">설정</a></li>
						   <li><a class="dropdown-item fs-6 fw-bold" href="#">로그아웃</a></li>
						</ul>						  
				</div>
			</div>				
			</div>									
		</nav>
		
								
		<div class="form-mypage">															
			<div class="text-start"><h3>내 정보 수정</h3></div>
	  		<form action="#" role="form" method="post">
	  			<!-- 이미지 수정 -->
	  			<div class="container text-center mt-5">
		  			<div class="row">
						<div class="col-4" id="profile">
							<img class="rounded-circle border border-4 shadow p-3" src="/resources/Images/profileLogo.png" width=130 alt="Profile Image" >
						</div>
						<div class="col-8 mt-4">
							<div><button class="btn d-block mb-2" style="background-color:#ff914d; color:#fff" type="submit">이미지 선택</button></div>
							 <div><button class="btn d-block" style="background-color:#ff914d; color:#fff" type="submit">이미지 제거</button></div>
						</div>
					</div>
				</div>
								
		    	<!-- 닉네임 수정 -->	
				<div class="container text-center mt-5">
					<div class="row">
			   			<div class="col-5 text-start">
							<p class="fs-5 fw-bolder mt-2">닉네임</p>
						</div>
					    <div class="col-7 text-start">
							<input class="form-control" type="text" aria-label="default input example">
						</div>					
					</div>
					<div class="mt-2">
						<p class="text-start fw-semibold text-muted">StudyHub에서 사용되는 이름입니다.</p><hr>
					</div>						
				</div>
				<!-- 관심 기술 선택 -->
				<div class="container text-center mt-5">
					<div class="row">
			   			<div class="col-4 text-start">
							<p class="fs-5 fw-bolder mt-2">관심 기술 태그</p>
						</div>
					    <div class="col-8 mt-2">
							<select name="stacks" id="stacks" multiple>
							    <option value="1">JavaScript</option>
							    <option value="2">TypeScript</option>
							    <option value="3">React</option>
							    <option value="4">Vue</option>
							    <option value="5">Nodejs</option>
							    <option value="6">Spring</option>
							    <option value="7">Java</option>
							    <option value="8">Nextjs</option>
							    <option value="9">Nestjs</option>
							    <option value="10">Express</option>
							    <option value="11">Go</option>
							    <option value="12">C</option>
							    <option value="13">Python</option>
							    <option value="14">Django</option>
							    <option value="15">Swift</option>
							    <option value="16">Kotlin</option>
							    <option value="17">MySQL</option>
							    <option value="18">MongoDB</option>
							    <option value="19">php</option>
							    <option value="20">GraphQL</option>
							    <option value="21">Firebase</option>
							    <option value="22">ReactNative</option>
							    <option value="23">Unity</option>
							    <option value="24">Flutter</option>
							    <option value="25">AWS</option>
							    <option value="26">Kubernetes</option>
							    <option value="27">Docker</option>
							    <option value="28">Git</option>
							    <option value="29">Figma</option>
							    <option value="30">Zeplin</option>					    
							</select>
						</div>						
					</div>
					<div class="col mt-2">
						<p class="text-start fw-semibold text-muted">관심 있는 기술 태그를 등록해주세요.</p><hr>
					</div>						
				</div> <!-- 관심 기술 선택 끝 -->
				<!-- 버튼 -->
				<div class="text-end">		
					  	<button type="button" class="btn mt-5 me-2" style="background-color:#ff914d; color:#fff">완료</button>
						<button type="button" class="btn btn-outline-danger mt-5">회원탈퇴</button>
				</div>				    			    
	  		</form>
		
	</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>	
		<!-- 관심 기술 태그용 -->
		<script src="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag/dist/js/multi-select-tag.js"></script>
	</body>
<script>
    
    new MultiSelectTag('stacks', {
        rounded: true,    // default true
       
    })         
  
</script>
</html>