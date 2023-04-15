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
		
	    <link rel="stylesheet" href="../../../resources/css/usermypage.css" type="text/css"/>
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
	  		<form action="/user/mypage" role="form" method="post">
	  			<!-- 이미지 수정 -->
	  			<div class="container text-center mt-5">
		  			<div class="row">
						<div class="col-3" id="uploadResult">
							<div class='uploadResult'> 
					          <ul>
					          	<li><img id="photo" src="/resources/Images/profileLogo.png" width=130 alt="Profile Image"></li>
					          </ul>
					        </div>						
							
						</div>
						<div class="col-9 mt-4">
								<div class="form-group uploadDiv mb-1">
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
					  	<button type="submit" data-oper='modify' class="btn mt-5 me-2" style="background-color:#ff914d; color:#fff">완료</button>
						<button type="submit" data-oper='remove' class="btn btn-outline-danger mt-5">회원탈퇴</button>
				</div>				    			    
	  		</form>
		
	</div>	
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>	
		<!-- 관심 기술 태그용 -->
		<script src="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag/dist/js/multi-select-tag.js"></script>
		
		
		
		 <!-- 아래에 두면 css가 없는 select 영역이 대서 위로올림  -->
		<script>   
		    new MultiSelectTag('stacks', {
		        rounded: true,    // default true		       
		    })
	    </script> 		
	
	</body>
<script>

$(document).ready(function(){
	// 이미지 파일 데이터 가져오는 부분을 즉시 실행 함수를 이용해 처리
	(function(){
		
		var uidKey = '<c:out value="${user.uidKey}"/>';
		
		$.getJSON("/user/getAttachList", {uidKey:uidKey}, function(arr){
			console.log(arr);
			
			 var str = "";
			 
			 var deleteBtn = $("#photoDeleteBtn");  
		       $(arr).each(function(i, attach){
		       
		         //image type
		         if(attach.fileType){
		           var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
		           
		           str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
		           str += "<img id='photo' src='/display?fileName="+fileCallPath+"'>";
		           str += "</div>";
		           str +"</li>";
		           deleteBtn.attr("data-file",fileCallPath);
		         }
		       });
		       
		       $(".uploadResult ul").html(str);
		}); //end getjson
	})();//end function

});

$(document).ready(function(e){
  
  var formObj = $("form[role='form']");
  
  $("button[type='submit']").on("click", function(e){ //submit 버튼 눌렸을 때
    
    e.preventDefault();
    
    var operation = $(this).data("oper");
    
    console.log("submit clicked");
    
    console.log(operation);
    
    var uidKey = '<c:out value="${user.uidKey}"/>';
    
    if(operation === 'remove'){ //삭제버튼일때    	
	    formObj.attr("action", "/user/remove");
    	formObj.append("<input type='hidden' name='uidKey' value='"+uidKey+"'>");
	} else if(operation === 'modify') { //수정하는 완료 버튼일때
    
	    var str = "";
	    
	    $(".uploadResult ul li").each(function(i, obj){
	      
	      var jobj = $(obj);
	      
	      console.dir(jobj);
	      console.log("-------------------------");
	      console.log(jobj.data("filename"));
	      
	      
	      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
	      
	    });
	    
	    console.log(str);
	    
	    formObj.append(str).submit();
	}
    formObj.submit();
  });

  
  var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
  var maxSize = 5242880; //5MB
  
  function checkExtension(fileName, fileSize){
    
    if(fileSize >= maxSize){
      alert("파일 사이즈 초과");
      return false;
    }
    
    if(regex.test(fileName)){
      alert("해당 종류의 파일은 업로드할 수 없습니다.");
      return false;
    }
    return true;
  }
  
  /* 파일 선택이 완료되면 발생하는 이벤트 */
  $("input[type='file']").change(function(e){

    var formData = new FormData();
    
    var inputFile = $("input[name='uploadFile']");
    
    var files = inputFile[0].files;
    
    for(var i = 0; i < files.length; i++){

      if(!checkExtension(files[i].name, files[i].size) ){
        return false;
      }
      formData.append("uploadFile", files[i]);
      
    }
    
    $.ajax({
      url: '/uploadAjaxAction',
      processData: false, 
      contentType: false,
      data: formData,
      type: 'POST',
      dataType:'json',
        success: function(result){
          console.log(result); 
		  showUploadResult(result); //업로드 결과 처리 함수 

      }
    }); //$.ajax
    
  });  
  
  function showUploadResult(uploadResultArr){
	
	/* 업로드된 파일이 없으면 함수를 실행하지 않고 종료 */
    if(!uploadResultArr || uploadResultArr.length == 0){ return; }
    
	/* 업로드된 파일이 있으면, 스터디허브 이미지 삭제 */
	$(".uploadResult ul li #photo").remove();
	$(".uploadResult ul li").remove();
	
    var uploadUL = $(".uploadResult ul");
    
    var str ="";
    
    var deleteBtn = $("#photoDeleteBtn");
    
    $(uploadResultArr).each(function(i, obj){          
		
		if(obj.image){
			var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
			str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
			str +" ><div>";
			str += "<span></span>";
			str += "<img id='photo' src='/display?fileName="+fileCallPath+"' >";
			str += "</div>";
			str +"</li>";
			deleteBtn.attr("data-file",fileCallPath);
		}
		
    });
    
    uploadUL.append(str);
	
	
  }
  
/* x 아이콘을 클릭하면 서버에서 삭제 */
  $(".photoDelete").on("click", "button", function(e){
	/* photoDelete 클래스를 가진 요소 내부에서 button 요소를 클릭할 때 이벤트 핸들러 등록 */
	
    console.log("delete file");
    
	/* 클릭된 삭제 버튼에 설정된 data-file, data-type 속성 값을 읽어 변수에 저장	 */
    var targetFile = $(this).data("file"); 
    var type = $(this).data("type");
    
    /* img 요소를 찾아 변수에 저장    */ 
    var targetLi = $(".uploadResult ul li img");
    
    /* 제이쿼리의 함수를 호출해 ajax 요청을 전송 */
    $.ajax({
      url: '/deleteFile',
      data: {fileName: targetFile, type:type},
      dataType:'text',
      type: 'POST',
        success: function(result){
           alert("선택이 취소되었습니다.");
           /* 업로드된 파일이 삭제되면 기본 이미지로 바꾸기 */
           targetLi.attr("src", "/resources/Images/profileLogo.png");
         }
    }); //$.ajax
    
   });


  
});

</script>

</html>