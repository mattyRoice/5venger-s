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
	
	<body>									
		
		<!-- 네비게이션&탭  -->
		<form class="form-signin" role="form" action="/user/register"  method="post">				
			<input type='hidden' name='uidKey' value='<c:out value="${newbie.uidKey}"/>'>
			<input type='hidden' name='usnsType' value='<c:out value="${newbie.usnsType}"/>'>

			<img class="mb-3 rounded mx-auto d-block" src="/resources/Images/SHLogo.png" alt="StudyHybLogo" width="400" height="150">
			
			<div class="form-group">
			
				<ul class="nav nav-pills nav-fill mb-3" id="pills-tab" role="tablist">
				  <li class="nav-item" role="presentation">
				    <button class="btn nav-link" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">1단계</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="btn nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">2단계</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="btn nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">3단계</button>
				  </li>	  
				</ul>
				
				<div class="tab-content" id="pills-tabContent">
				  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">				  	
				  	<div class="text-center fs-4 fw-bolder mt-5 mb-5">StudyHub에 처음 오셨군요!<br>우선, 사용하실 닉네임을 설정해 볼까요?</div>
				  	<input class="form-control form-control-lg mb-1" type="text" id="unickName" onchange="checkNickname()" name="unickName" placeholder="닉네임을 입력하세요." aria-label=".form-control-lg example">
				  	<!-- nickName ajax 체크 -->
				  	<p id="checkNickname" class="fw-bold fs-5" style="color:#ff914d"></p>
				  	<div class="text-center mt-5">	
					  	<button type="button" id="to2step" class="btn me-2" style="border-color:#ff914d; color:#ff914d">다음</button>
						<button type="button" id="backuserLogin"class="btn btn-outline-secondary">돌아가기</button>
					</div>				  				  											
				  </div>
				  
				  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
				  	<div class="text-center fs-4 fw-bolder mt-5 mb-3">닉네임님, 반가워요.<br>어떤 언어, 프레임워크에 관심이 있는지 알려주세요!</div>
				  	<div class="text-center fs-6 fw-bolder mb-5">관심 태그를 기반으로 소식을 추천해드려요.</div>
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
					<div class="text-center mt-5">		
					  	<button type="button" id="to3step" class="btn me-2" style="border-color:#ff914d; color:#ff914d">다음</button>
						<button type="button" id="back1step" class="btn btn-outline-secondary">돌아가기</button>
					</div>				  					  	
				  </div>
				  
				  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">
				  	<div class="text-center fs-4 fw-bolder mt-5 mb-3">닉네임님만의 특별한 이미지를 설정해 보세요.<br>물론, 언제든지 변경할 수 있어요!</div>
				  	<div class="text-center fs-6 fw-bolder mb-4">미 업로드시 기본 이미지로 자동 설정됩니다.</div>
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
					  	<button type="submit" class="btn mt-5 me-2" style="border-color:#ff914d; color:#ff914d">가입완료</button>
						<button type="button" id="back2step" class="btn btn-outline-secondary mt-5">돌아가기</button>
					</div>				 
				  </div>
				  
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