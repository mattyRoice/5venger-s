 // 다음, 돌아가기, 가입완료 버튼 관련 함수   
    const firstTab = $("#pills-home-tab"); 
    const secondTab = $("#pills-profile-tab");
    const thirdTab = $("#pills-contact-tab");
    	
    const firstContent = $("#pills-home"); 
    const secondContent = $("#pills-profile");
    const thirdContent = $("#pills-contact");
    
    $(document).ready(function () {    	
    	
    	firstTab.addClass("active");
    	secondTab.addClass("disabled");
    	thirdTab.addClass("disabled");
    	
    	$("#to2step").click(function(){
    		
    		var result = checkNickNull();
    		
    		if(result == false){
    			alert('닉네임을 입력해주세요.');
    			$('#unickName').val('');
    			return;
    		} else {
    		
    	    console.log("to2step"); 
			
    	    secondTab.removeClass("disabled");
    	    secondTab.addClass("active");
    	    
    	    firstTab.addClass("disabled"); 	    			   	       	    
    	    
    	    secondContent.addClass("show active");
    	    firstContent.removeClass("show active");
    	    
    		}
    		
    	});
    	
    	$("#to3step").click(function(){
    		
    		thirdTab.removeClass("disabled");
    		thirdTab.addClass("active");    		 
    		 
    		secondTab.addClass("disabled");
    		 
    		thirdContent.addClass("show active");
    		secondContent.removeClass("show active");
    		 
    	});
    	
    	$("#back2step").click(function(){
    		
    		thirdTab.removeClass("active");
    		thirdTab.addClass("disabled");
    		thirdContent.removeClass("show active");
    		
    		secondTab.removeClass("disabled");
    		secondTab.addClass("active");  		 		
    		secondContent.addClass("show active"); 		 		   		 
   		 
   		});
    	
		$("#back1step").click(function(){
    		
			secondTab.removeClass("active");
			secondTab.addClass("disabled");
			secondContent.removeClass("show active");
    		
			firstTab.removeClass("disabled");
			firstTab.addClass("active");  		 		
			firstContent.addClass("show active");							 		   		 
    		
   		});
		
		$("#backuserLogin").click(function(){
			 window.location.replace("http://localhost:8080/user/login");
		});     	
    	
    	
    });
    
    // 닉네임 빈칸 확인
    function checkNickNull(){
		var unickName = $('#unickName').val();
    	
    	if(unickName == null || unickName.trim() == ''){
    		$('#checkNickname').css('color','#ff914d');	
    		$('#checkNickname').html('닉네임을 입력해주세요.');
    		return false;
    	} else {
    		$('#checkNickname').html('');
    	}
    	
    }
    // 닉네임 중복 확인
    function checkNickname(){
    	
    	var unickName = $('#unickName').val();    	    	
    	
    	$.ajax({    		
    		url: '/user/unickNameCheck',
    		data: {unickName : unickName},
    		type: 'POST',
    		dataType:'text',
    		success : function(result){
 						
    			if(result == 'success'){ // 사용 가능한 아이디
    				$('#checkNickname').css('color','#ff914d');				
    				$('#checkNickname').html('사용 가능한 닉네임입니다.'); 			   				
    			} else { // 이미 존재하는 닉네임
    				$('#checkNickname').css('color','red');
    				$('#checkNickname').html('이미 존재하는 닉네임입니다.');
    				
    				// alert("닉네임을 다시 입력해주세요");
    				$('#unickName').val('');
    			} 
    		},
    		error:function(request,error){
    			alert("message:" + request.responseText);
    		}
    	}); //$.ajax
    };
    
	// 프로필 이미지 선택 관련 함수
	$(document).ready(function(e){
  
  	var formObj = $("form[role='form']");
  
 	 $("button[type='submit']").on("click", function(e){
    
	    e.preventDefault();
	    
	 	console.log("submit clicked");	    	 		 	
	 	
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
	  
	    $('#sno option').filter(':selected').each(function(index) {
	    	str += "<input type='hidden' name='snoList["+index+"].sno' value='"+$(this).val()+"'>";
	    
	    });
	    
	    formObj.append(str).submit();
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
			str += "<li class='text-end' data-path='"+obj.uploadPath+"'";
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