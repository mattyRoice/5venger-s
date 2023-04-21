<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>스터디허브</title>
		
<!-- BootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">	          
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>		
<!-- multiselect -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag/dist/css/multi-select-tag.css">
<!-- css 파일 -->
<link rel="stylesheet" href="../../../resources/css/userRegister.css" type="text/css"/>
	    
	    <style>
	    html,
		body {
		  height: 100%;
		}
		
		body {
		  display: flex;
		  align-items: center;
		  padding-top: 40px;
		  padding-bottom: 40px;
		  background-color: #ffffff;
		}
		
		.form-signin {
		  width: 100%;
		  max-width: 600px;
		  padding: 15px;
		  margin: auto;
		}
		
		#join{		
   		  text-decoration: none;
   		  color:black;
		}
		
		#join:hover {
   	 		cursor: pointer;
  		}
  		
  		a{
			text-decoration: none;
			color:black;
		}
		
		a:hover{
			color:black;
		}
		
		#google-login{		
			border: rgba(100, 100, 111, 0.2) solid;
			border-width: 1px;
			box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;		
		}
		
		#naver-login{
			background-color:#03C75A; 			
		}
		
		#kakao-login{
			background-color:#FAE100;
		}
		
		.icon{
			margin-right: 30px;
		}
		
		.gicon{
			margin-right: 40px;
		}
		
		/* 중복아이디 존재하는 경우 */
		.id_input_re {
			display : none;
			color: #e06034;
			font-weight : bold;
			font-size:15px;
		}
		
		/* 비밀번호 확인 일치하지 않는 경우 */
		.pwck_input_re {
			display : none;
			color: #e06034;
			font-weight : bold;
			font-size: 15px;
		}
	    </style>
	    </head> 	    
    
	</head>
	<!-- end for head -->
<link rel="icon" href="/resources/Images/profileLogo.png">	
	<body>
		<!-- 부트스트랩 -->
		<main class="form-signin">  		
	    	<img class="mb-3 rounded mx-auto d-block" src="/resources/Images/norabbitlogo.png" alt="StudyHubLogo" width="320" height=auto>
	    	<h1 class="h3 mb-3 text-center fw-bold">StudyHub에 오신 것을 환영합니다!</h1>
	    	
			<div class="container text-center">								
				<!-- 회원가입 정보 입력 -->
			<div class="form-floating">
			  <input type="text" class="form-control id_input" name="adminId" id="floatingId" placeholder="관리자아이디">
			  <label for="floatingPassword">사용자아이디</label>
			</div>
			
			<span class="id_input_re mt-1">아이디가 중복 되었어요!</span>
			
			<div class="form-floating mt-3">
			  <input type="password" class="form-control pw_input" name="adminPw" id="floatingPassword" placeholder="비밀번호">
			  <label for="floatingPassword">비밀번호</label>
			</div>
			
			<div class="form-floating mt-3">
			  <input type="password" class="form-control pwck_input" id="floatingPassword" placeholder="비밀번호">
			  <label for="floatingPassword">비밀번호 확인</label>
			</div>
			
			<span class="pwck_input_re mt-1">비밀번호가 일치하지 않아요!</span>
			
			<div class="form-floating mt-3">
			  <input type="text" class="form-control name_input" name="aname" id="floatingName" placeholder="이룸">
			  <label for="floatingPassword">닉네임</label>
			</div>
			
			<div class="form-floating mt-3">
			  <input type="email" class="form-control email_input" name="email" id="floatingInput" placeholder="name@example.com">
			  <label for="floatingInput">이메일</label>
			</div>
			
			<!-- <div class="text-center fs-6 fw-bolder mb-5">관심 태그를 기반으로 소식을 추천해드려요.</div> -->
			<div class="mt-4">
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
			</div>
				<!-- <div class="text-center fs-6 fw-bolder mb-4">미 업로드시 기본 이미지로 자동 설정됩니다.</div> -->
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
										
			<div class="d-grid gap-2 mt-4">			
				<button type="submit" class="btn btn-primary p-3 fs-6 fw-semibold" style="background-color: #ff914d;  border:none;">회원가입 하기</button>
			</div>
			
				<hr>					
		   			<div id="google-login">
						<a class="fw-semibold" href ="${ google_url }">
						<span class="gicon">
						<img src="/resources/Images/googleIcon.png" alt="Google Login">
						</span>
						구글 로그인						
						</a>						
					</div>
				    <div class="mt-2" id="naver-login">
						<a class="fw-semibold" style="color:#fff" href = "${ naver_url }">
						<span class="icon">
						<img width= 60px height=60px src="/resources/Images/naverIcon.png" alt="Naver Login">
						</span>
						네이버 로그인
						</a>
					</div>
					<div class="mt-2" id="kakao-login">
						<a class="fw-semibold" href ="${ kakao_url }">
						<span class="icon">
						<img src="/resources/Images/kakaoIcon.png" alt="Kakao Login">
						</span>
						카카오 로그인
						</a>
					</div>
			</div>
				
		</main>		
		<!-- 부트스트랩 js -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>	
		<!-- 멀티셀렉트 -->
		<script src="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag/dist/js/multi-select-tag.js"></script>
	</body>
	
<!-- 회원가입 기능 작동을 위한 jquery -->
	<script>
	/* 멀티셀렉트 */
	new MultiSelectTag('sno', {
        rounded: true,    // default true
       
    })
	
	/* 유효성 검사 통과유무 변수 */
	var idCheck = false;            // 아이디
	var idckCheck = false;          // 아이디 중복 검사
	var pwCheck = false;            // 비번
	var pwckCheck = false;          // 비번 확인
	var pwckcorCheck = false;       // 비번 확인 일치 확인
	var nameCheck = false;          // 이름
	var emailCheck = false;         // 이메일
	 
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".btn-primary").click(function(){
			
			/* 입력값 변수 */
			var id = $('.id_input').val();                // id 입력란
			var pw = $('.pw_input').val();                // 비밀번호 입력란
			var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
			var name = $('.name_input').val();            // 이름 입력란
			var email = $('.email_input').val();           // 이메일 입력란
			
			/* 이메일 유효성 검사 */
	        if(email == ""){
	        	toastr.options = {
	        			closeButton: true,
		    			"progressBar": true,
		    			"timeOut": 4000
		    			};
	        	toastr.warning('이메일을 입력해 주세요!');
	            emailCheck = false;
	        }else{
	            emailCheck = true;
	        }
			
	        /* 이름 유효성 검사 */
	        if(name == ""){
	        	toastr.options = {
	        			closeButton: true,
		    			"progressBar": true,
			    		"timeOut": 4000
			    		};
	        	toastr.warning('이름을 입력해 주세요!');
	            nameCheck = false;
	        }else{
	            nameCheck = true;
	        }
	        
	        /* 비밀번호 확인 유효성 검사 */
	        if(pwck == ""){
	        	toastr.options = {
	        			closeButton: true,
		    			"progressBar": true,
		    			"timeOut": 4000
		    			};
	        	toastr.warning('비밀번호 확인을 입력해 주세요!');
	            pwckCheck = false;
	        }else{
	            pwckCheck = true;
	        }
			
	        /* 비밀번호 유효성 검사 */
	        if(pw == ""){
	        	toastr.options = {
	        			closeButton: true,
		    			"progressBar": true,
		    			"timeOut": 4000
		    			};
	        	toastr.warning('비밀번호를 입력해 주세요!');
	            pwCheck = false;
	        }else{
	            pwCheck = true;
	        }
	        
	        /* 아이디 유효성검사 */
	        if(id == ""){
	        	toastr.options = {
	        			closeButton: true,
		    			"progressBar": true,
		    			"timeOut": 4000
		    			};
	        	toastr.warning('관리자아이디를 입력해 주세요!');
	            idCheck = false;
	        }else{
	            idCheck = true;
	        }
 
	        /* 최종 유효성 검사 */
			$("#form-join").attr("action", "/admin/createAccount");
			$("#form-join").submit();

		});
	});
	
	/* 아이디 중복검사 */
	$('.id_input').on("propertychange change keyup paste input", function(){  // input 변화 실시간 감지
		console.log("keyup 테스트");
		
		var adminId = $('.id_input').val();	// .id_input에 입력되는 값
		var data = {adminId : adminId};		// '컨트롤에 넘길 데이터 이름':'데이터(.id_input에 입력되는 값)'
		
		$.ajax({
			type : "post",
			url : "/admin/adminIdChk",
			data : data,
			success : function(result){
				console.log("성공 여부" + result);
				if(result != 'fail'){
					$('.id_input_re').css("display", "none");
					idckCheck = true;  // 아이디 중복이 없는 경우
				} else {
					$('.id_input_re').css("display","inline-block");
					idckCheck = false;  // 아이디 중복된 경우
				}
			}
		});
	});
	
	/* 비밀번호 확인 일치 검사 */
	$('.pwck_input').focusout(function(){  // 해당 엘리먼트를 벗어나는 경우 이벤트 발생
		
		var pw = $('.pw_input').val();
		var pwck = $('.pwck_input').val();
		
		if(pw == pwck){
			$('.pwck_input_re').css('display','none');
			pwckcorCheck = true;
		}else{
			$('.pwck_input_re').css('display','block');
			pwckcorCheck = false;
		}
		
	});
	
	</script>
	
	<!-- 부트스트랩 js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</html>