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
	    <!-- multiselect -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag/dist/css/multi-select-tag.css">
	    <!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	    
	    
	    <link rel="stylesheet" href="../../../resources/css/userRegister.css" type="text/css"/>			
    	
	</head>
	<!-- end head -->
<link rel="icon" href="/resources/Images/profileLogo.png">	
	<body>									
		
		<!-- 네비게이션&탭  -->
		<form class="form-signin" role="form" action="/user/join"  method="post">				
			<input type='hidden' name='uidKey' value='<c:out value="${newbie.uidKey}"/>'>
			<input type='hidden' name='usnsType' value='<c:out value="${newbie.usnsType}"/>'>

			<img class="mb-3 rounded mx-auto d-block" src="/resources/Images/norabbitlogo.png" alt="StudyHubLogo" width="320" height=auto>
	    	<h1 class="h4 mb-3 text-center fw-bold">StudyHub에 오신 것을 환영합니다!</h1>
			
			<!-- 입력시작 -->
			<div class="form-group">
			
				<div class="mt-3">
				  <input class="form-control form-control-lg p-3 mb-1" type="text" id="unickName" onchange="checkNickname()" name="unickName" placeholder="닉네임" aria-label=".form-control-lg example">
				  <!-- nickName ajax 체크 -->
				  <p id="checkNickname" class="fw-bold fs-5" style="color:#ff914d"></p>
				</div>												  						  	

				<!-- 관심 스택 선택 -->
				 
				  	<select name="sno" id="sno" multiple>
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
					<div>
						<p class="text-start fw-semibold text-muted mt-2">관심 태그를 기반으로 소식을 추천해드려요.</p>
					</div>									  					  	

					<!-- 프로필 이미지 선택 -->
		  			<div class="container text-center">
			  			<div class="row">
							<div class="col-6" id="uploadResult">
								<div class='uploadResult'> 
						          <ul>
						          	<li class="text-end"><img id="photo" src="/resources/Images/profileLogo.png" width=130 alt="Profile Image"></li>
						          </ul>
						        </div>						
								
							</div>
							<div class="col-6 mt-4">
									<div class="form-group uploadDiv mb-1 mt-4">
										<label class="custom-file-input-wrapper" for="customFile">
											<span class="custom-file-input-label">이미지 선택</span>
											<input type="file" class="custom-file-input" id="customFile" name='uploadFile' multiple>
										</label>								 
									</div>						
								 <div class="photoDelete">
								 	<button type="button" data-type="image"  class="btn d-block" id="photoDeleteBtn" style="background-color:#ff914d; color:#fff">이미지 제거</button><i class='fa fa-times'></i>
								 </div>
							</div>
						</div>
					</div>
				  	<div class="text-center">		
					  	<button type="submit" class="btn me-2 mt-4" style="background-color:#ff914d; color:#fff">가입완료</button>
						<button type="button" id="back2step" class="btn btn-outline-secondary mt-4">돌아가기</button>
					</div>				 
				  </div>			  							
			
		</form>	
			
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>			
	<script src="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag/dist/js/multi-select-tag.js"></script>
	<script src="../../../resources/js/userRegister.js"></script>
	<script>
		new MultiSelectTag('sno', {
	        rounded: true,    // default true
	       
	    })
	</script>	
	</body>
</html>