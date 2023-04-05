<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>StudyHub</title>
		
		<!-- BootStrap -->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">	          
		
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
	    </style>
	    </head> 	    
    
	</head>
	<!-- end for head -->
	
	<body>
		<!-- 부트스트랩 -->
		<main class="form-signin">
	  		<form action="/loginPost" role="form" method="post">
	    		<img class="mb-3 rounded mx-auto d-block" src="/resources/Images/SHLogo.png" alt="StudyHybLogo" width="400" height="150">
	    		<h1 class="h3 mb-4 text-center fw-bold">StudyHub에 오신 것을 환영합니다!</h1>
			<div class="container text-center">
				<div class="row">
		   			<div class="col">
						<a href ="#"><img width=150 style="border: 1px" src="/resources/Images/btn_google.png" alt="Google Login"></a>
					</div>
				    <div class="col mt-2">
						<a href = "#"><img width=130 src="/resources/Images/btn_naver.png" alt="Naver Login"></a>
					</div>
					<div class="col mt-2">
						<a href ="#"><img style="border-radius:10px" width=130 src="/resources/Images/btn_kakao.png" alt="Kakao Login"></a>
					</div>
				</div>
				<div>
					<p class="mt-5 mb-3 text-muted text-end">&copy; 2023</p>
				</div>
			</div>				    			    
	  		</form>
		</main>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>	
	</body>
</html>