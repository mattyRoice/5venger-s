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
 <!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- toastr -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- toastr js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>			
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
		  max-width: 500px;
		  padding: 15px;
		  margin: auto;
		}
		.login-warn {
	    text-align: center;
	    color: red;
	    font-size: 15px;
	    font-weight: bold;
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
		
	    </style>
	    </head>
<link rel="icon" href="/resources/Images/profileLogo.png">	    
<body>
		<!-- 부트스트랩 -->
		<main class="form-signin">  		
	    	<p class="text-center fs-2 fw-bold">비밀번호 찾기</p>
	    	<div>
	    		<p class="text-center">회원가입 시 입력한 이메일 주소 입력 후 <br> 인증번호를 발송해 드립니다.</p>
	    	</div>	    	
			<div class="container text-center mt-4">								
						<!-- 아이디,이메일 입력 -->
						<div>
							<input type="text" id="id_input" class="form-control id_input p-3 mb-1 " name="uidKey" placeholder="사용자아이디">
							<input type="email" id="email_input" class="form-control email_input p-3" name="uemail" placeholder="이메일"> 
						</div>
						<div class="d-grid gap-2 mt-2">
							<button id="mail-check-btn" class="btn btn-primary p-3 fw-semibold" style="background-color: #ff914d;  border:none;">인증번호 발송</button>
						</div>
						<hr>		
						<!-- 인증번호 입력 -->
						<div class="mt-4">
							<input class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
						</div>

						<div class="d-grid gap-2 mt-2">
							<button type="submit" id="number-check-btn" class="btn btn-primary p-3 fw-semibold" style="background-color: #ff914d;  border:none;">확인</button>
						</div>																									    			    	  			
	  		</div>
		</main>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>	
</body>
<script>
$(document).ready(function(e){	
	/* 인증번호 발송 버튼 누르면 */
	$('#mail-check-btn').click(function() {
		
		/* 유효성 검사 통과유무 변수 */
		var idCheck = false;            // 아이디 빈칸 확인
		var emailCheck = false;            // 이메일 빈칸 확인
		
		/* 입력값 변수 */
		var uidKey = $('#id_input').val();              // id 입력란
		console.log(uidKey);
		var uemail = $('#email_input').val();          // 이메일 입력란
		console.log(uemail);
		
		// 1. 아이디 빈칸 확인
        if(uidKey == ""){
        	toastr.options = {
        			closeButton: true,
	    			"progressBar": true,
	    			"timeOut": 4000
	    			};
        	toastr.warning('사용자아이디를 입력해 주세요!');
            idCheck = false;
        }else{
            idCheck = true;
        }
		
		// 2. 이메일 빈칸 확인
        if(uemail == ""){
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
		
		// 3. 입력한 아이디, 이메일 DB 존재 여부 확인
		var data = {uidKey : uidKey, uemail : uemail}; 	// '컨트롤에 넘길 데이터 이름':'데이터(.id_input에 입력되는 값)' */
		
		$.ajax({
			type : "post",
			url : "/user/userEmailChk",
			data : data,
			success : function(result){
				if(result == 'success'){ // 해당 아이디,이메일로 가입한 사용자가 존재하는 경우
					
					// 아이디, 이메일 입력칸의 빈칸 여부 확인 후,
					if(idCheck && emailCheck){

						const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
						// 인증번호 이메일 전송
						$.ajax({
							type : 'get',
							url : '<c:url value ="/user/mailcheck?email="/>'+uemail, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
							success : function (data) {
								console.log("data : " +  data);								
								code =data;								
								checkInput.attr('disabled',false);
								alert('인증번호가 전송되었습니다.');
							}			
						}); // 이메일 전송 ajax 끝

					} 
				
				} else { // 존재하지 않는 경우(=가입 이력 없음)					
					alert('일치하는 아이디 또는 이메일이 존재하지 않습니다.');				
				}
				console.log("성공 여부 " + result);

			}
		});
		
		//4. 인증번호 비교 
		$('#number-check-btn').click(function() {
			// <form> 태그 생성
			var formObj = $('<form></form>');
			
			// <form> 태그 속성 설정
			formObj.attr('method', 'get');			  			
			
			var inputCode = $('.mail-check-input').val();
			
			if(inputCode === code){
				formObj.append("<input type='hidden' name='uidKey' value='"+uidKey+"'>");
				formObj.attr("action", "/user/resetpw");
				alert('인증번호가 일치합니다. 비밀번호 변경 페이지로 이동합니다.');
				// <form> 태그를 DOM에 추가
				formObj.appendTo('body');
				formObj.submit();
			}else{				
				alert('인증번호가 불일치 합니다. 다시 확인해주세요!');
			}
		});
	}); /* 인증번호 발송 버튼 함수 끝 */
	
}); //end ready function

</script>
</html>