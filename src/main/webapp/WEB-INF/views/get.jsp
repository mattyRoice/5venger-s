<%@page import="org.springframework.ui.Model"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="org.hub.domain.BoardVO" %>

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
	 <!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/css/main.css" type="text/css" />
<script>
	var uidkeys = [];
</script>
<title>스터디허브</title>
<style>
.studyContent_wrapper{
    max-width: 900px;
    width: 100%;
    display: flex;
    flex-direction: column;
    margin: 0 auto;
    padding: 1.5rem 1.5rem 5rem;
}
.studyButtons_buttonWrapper {
    display: flex;
    justify-content: flex-end;
    margin-top: 20px;
}
.studyButtons_buttons {
    font-size: 16px;
    color: #444;
	}
.studyContent_wrapper {
    max-width: 900px;
    width: 100%;
    display: flex;
    flex-direction: column;
    margin: 0 auto;
    padding: 1.5rem 1.5rem 5rem;
}
.studyContent_postHeader {
    display: flex;
    flex-direction: column;
    margin-top: 3rem;
}
.studyContent_title {
    margin-top: 2.5rem;
    font-weight: 800;
    font-size: 3rem;
    line-height: 126.5%;
    letter-spacing: -.005em;
    color: #000;
}
.studyContent_userAndDate {
    margin-top: 32px;
    padding-bottom: 32px;
    border-bottom: 3px solid #f2f2f2;
    display: flex;
    grid-gap: 15px;
    gap: 15px;
    align-items: center;
}
.studyContent_user {
    display: flex;
    align-items: center;
    position: relative;
}
.studyContent_userImg {
    cursor: pointer;
    display: block;
    height: 3rem;
    width: 3rem;
    margin-right: 16px;
    border-radius: 50%;
    object-fit: cover;
}
.studyContent_userName {
    color: #333;
    cursor: pointer;
    font-size: 18px;
    font-weight: 700;
    padding-left : 15px;
    padding-right: 15px; 
    border-right: 2px solid #e1e1e1;
}
.studyContent_registeredDate {
    font-size: 18px;
    color: #717171;
}
.studyInfo_studyGrid {
    display: grid;
    grid-template-columns: repeat(2,3fr);
    grid-row-gap: 24px;
    row-gap: 24px;
    margin-top: 60px;
}
.studyInfo_contentWrapper {
    display: flex;
    position: relative;
    align-items: center;
    font-weight: 700;
    font-size: 20px;
}
.studyInfo_title {
    color: #717171;
    margin-right: 40px;
}
.studyInfo_content {
    color: #333;
}
.contactPoint_contactWrapper, .contactPoint_email {
    position: absolute;
    left: 110px;
    background: #f2f4f8;
    border-radius: 10px;
    color: #4a5e75;
}
.studyInfo_content {
    color: #333;
}
.studyInfo_languageList {
    display: flex;
    grid-gap: 12px;
    gap: 12px;
}
.studyInfo_language, .studyInfo_languageImage {
    width: 30px;
    height: 30px;
}
.studyInfo_positions {
    height: 22px;
    padding: 3px 10px;
    background: #f2f4f8;
    border-radius: 15px;
    font-weight: 700;
    font-size: 13px;
    line-height: 16px;
    text-align: center;
    color: #4a5e75;
}
.contactPoint_link {
    display: flex;
    grid-gap: 8px;
    gap: 8px;
    font-size: 16px;
    padding: 8px 12px;
    -webkit-text-decoration-line: underline;
    text-decoration-line: underline;
    -webkit-text-decoration-color: #4a5e75;
    text-decoration-color: #4a5e75;
}
.contactPoint_linkImg {
    width: 16px;
    height: 16px;
}
img {
    overflow-clip-margin: content-box;
    overflow: clip;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
ul {
    list-style: none;
    margin: 0;
    padding: 0;
}
.studyContent_postContentWrapper {
    margin-top: 132px;
    font-size: 1.125rem;
    word-break: break-all;
    line-height: 1.7;
    letter-spacing: -.004em;
}

* {
    box-sizing: inherit;
}
.studyContent_postInfo {
    margin: 0;
    color: #333;
    font-size: 26px;
    font-weight: 700;
    padding-bottom: 24px;
    border-bottom: 3px solid #f2f2f2;
}
.studyContent_postContent {
    width: 100%;
    margin: 40px auto 0;
}
.studyContent_commentAndViews {
    display: flex;
    flex-direction: column;
    background: #fff;
}
.studyContent_postComment {
    width: 100%;
    margin: 0 auto;
}
.commentInput_commentInput {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    margin-top: 100px;
}
.commentInput_commentCount {
    margin: 0 0 30px;
    font-size: 22px;
}
.commentInput_commentInput textarea {
    font-family: inherit;
    padding: 1rem 1rem 1.5rem;
    outline: none;
    border: 2px solid #e1e1e1;
    border-radius: 16px;
    width: 100%;
    min-height: 100px;
    margin-bottom: 10px;
    resize: none;
}
.commentInput_buttonWrapper {
    display: flex;
    justify-content: flex-end;
    margin: 16px 0 24px;
}
.commentInput_buttonComplete {
    padding: 0px 0px;
    min-width: 120px;
    height: 40px;
    background-color:#ffb300;
    border-radius: 50px;
    font-weight: 700;
    color: #fff;
    font-size: 16px;
}
.commentList_CommentList {
    width: 100%;
}
body {
    margin: 200px;
    margin-top: 0px;
    font-family: "Spoqa Han Sans Neo",-apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue",sans-serif;
    box-sizing: border-box;
    min-height: 100%;
}
.navbar_navbar {
    margin: auto;
    max-width: 1180px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 85px;
    padding: 0 10px;
}
.navbar_logo {
    width: 105px;
    height: 32px;
}
.navbar_loginElementWrapper {
    display: flex;
    grid-gap: 30px;
    gap: 30px;
    align-items: center;
}.navbar_login, .navbar_postRegister {
    font-weight: 600;
    font-size: 1.125rem;
}

button {
    outline: none;
    border: none;
    background-color: #fff;
    cursor: pointer;
}
.notice_notificationWrapper {
    position: relative;
    cursor: pointer;
}
.notice_imageWrapper {
    position: relative;
}
.notice_notification {
    display: block;
}
.loginUser_userWrapper {
    cursor: pointer;
    display: flex;
    align-items: center;
    position: relative;
}
.loginUser_userImg {
    display: block;
    height: 2.5rem;
    width: 2.5rem;
    border-radius: 50%;
    object-fit: cover;
    transition: all .125s ease-in 0s;
}
.loginUser_userWrapper svg {
    font-size: 1.5rem;
    color: #868e96;
    transition: all .125s ease-in 0s;
    margin-right: -.4375rem;
}

.contactPoint_link{
 	color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

.page-link {
  color: #000; 
  background-color: #ff9149;
  border: 1px solid #ccc; 
}

.page-item.active .page-link {
 z-index: 1;
 color: #FFF;
 font-weight:bold;
 background-color: #ff9149;
 border-color: #ff9149;
 text-decoration-line: none;
 
}

.page-link:focus, .page-link:hover {
  color: #000;
  background-color: #ff9149; 
  border-color: #ff9149;
}

.chat {
	width:100%
}
.commentItem_commentContainer{
    display: flex;
    flex-direction: column;
    padding-top: 1.5rem;
    padding-bottom: 1.5rem;
    border-bottom: 2px solid #e1e1e1;
}
.commentItem_commentHeader {
	display: flex;
    justify-content: space-between;
}
.commentItem_avatarWrapper {
	display: flex;
    align-items: center;
    margin-bottom: 18px;
}
.commentItem_userImg{
    display: block;
    width: 52px;
    height: 52px;
    margin-right: 16px;
    border-radius: 50%;
    object-fit: cover;
}
.commentItem_commentInfo, .commentItem_title{
    display: flex;
    flex-direction: column;
}


.commentItem_userNickname {
    color: #333;
    font-weight: 900;
}
.commentItem_registeredDate {
    font-size: 14px;
    line-height: 126.5%;
    letter-spacing: -.005em;
    color: #9f9f9f;
}
.commentItem_commentContent{
    font-family: "Spoqa Han Sans Neo",-apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue",sans-serif;
    list-style: none;
    box-sizing: inherit;
    margin: 0;
    font-size: 1.125rem;
    line-height: 1.7;
    letter-spacing: -.004em;
    word-break: break-all;
    overflow-wrap: break-word;
    font-weight: 700;
}
.commentButtons_buttonWrapper {
    display: flex;
    justify-content: flex-end;
}
.commentButtons_buttons {
    font-size: 16px;
    color: #444;
}
.commentItem_commentInputButton {
    display: flex;
    flex-direction: row;
}
.commentItem_buttonCancel{
	background: #e9ecef;
}
.commentItem_buttonComplete {
    background: #ff914d;
    font-weight: 700;
    color: #fff;
}
.commentItem_commentInputButton button {
    border-radius: 4px;
    width: 70px;
    margin-top: 10px;
    margin-right: 10px;
    height: 1.75rem;
    font-size: 1rem;
}
.commentItem_commentInputButton button {
    border-radius: 4px;
    width: 70px;
    margin-top: 10px;
    margin-right: 10px;
    height: 1.75rem;
    font-size: 1rem;
}
.cancelButton_wrapper {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    position: absolute;
    width: 350px;
    height: 200px;
    left: 50%;
    -webkit-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    margin: 0 auto;
    background-color: #fff;
    border-radius: 4px;
    padding: 2rem 1.5rem;
    box-shadow: 0 2px 12px 0 rgb(0 0 0/20%);
    -webkit-animation: cancelButton_modalAnimation__2D2Vp .5s ease-in-out 0s 1 normal forwards running;
    animation: cancelButton_modalAnimation__2D2Vp .5s ease-in-out 0s 1 normal forwards running;
}
.cancelButton_buttons {
    display: flex;
    align-items: center;
    margin-top: 1rem;
}
.commentItem_modifyInput{
    width: 100%;
    border-radius: 8px;
    padding: 8px 12px;
    border: 1px solid #e1e1e1;
    outline: none;
}

</style>
</head>
<link rel="icon" href="/resources/Images/profileLogo.png">
<body>
	<!--헤더-->
	<!--  nav 태그 -->
	<%@include file="../includes/header.jsp"%>
	<!--헤더 끝-->


 <!--게시글 기본 정보 영역-->
<%--  <c:forEach items="${board}" var="board"> --%>

<input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno }"/>'>
<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
<input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
<div class="studyContent_wrapper">
	<section class="studyContent_postHeader">
	    <!--뒤로가기버튼-->
	    <svg button onclick="goBack()" stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 448 512" color="808080" cursor="pointer" height="30" width="30" xmlns="http://www.w3.org/2000/svg" style="color: rgb(128, 128, 128);" margin-left="0px">
	    	<path d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"></path>
	    	</svg>
	
	
	
	    <!--게시글 제목-->
	    <div class="studyContent_title" name="title" ><c:out value="${board.title }" /></div>
	    <!--사용자 닉네임영역-->
	    <div class="studyContent_userAndDate">
	        <div class="studyContent_user">
			<div id="uploadResult">
			<div class='uploadResult'>
			<ul>
				<li id="photo"></li>
			</ul>													
		</div>
		
		</div>        
	            <div class="studyContent_userName" ><c:out value="${board.uname }" /></div>
	        </div>
	        <div class="studyContent_registeredDate" ><fmt:formatDate value="${board.regdate}" pattern="YYYY-MM-dd"/></div></div>
	   
	      <!-- 사용자 수정,마감,삭제  -->
	    <c:if test="${loginUser.uidKey==board.uidkey}">
	        <section class="studyButtons_buttonWrapper">
	       		<button id="closed" class="studyButtons_buttons" data-bs-toggle="modal" data-bs-target="#deadlineModal">마감</button>	
				<button id="opend" class="studyButtons_buttons" data-bs-toggle="modal" data-bs-target="#resetModal">마감취소</button>
	        	<button onclick="location.href='modify?bno=<c:out value="${board.bno}" />'" class="studyButtons_buttons">수정</button>       
	       		<button class="studyButtons_buttons" data-bs-toggle="modal" data-bs-target="#removeModal">삭제</button>
				
				<!-- 마감 Modal -->
				<div class="modal fade" id="deadlineModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        마감 처리 하시겠어요?
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
				        <button type="button" class="btn btn-primary" data-oper='closed'>네, 마감할게요</button>						     
				      </div>
				    </div>
				  </div>
				</div>

				<!-- 마감취소 Modal -->
				<div class="modal fade" id="resetModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
					   <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					   <div class="modal-body">
					        마감 취소 하시겠어요?
					   </div>
					   <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
					        <button type="button" class="btn btn-primary" data-oper='opend'>네, 취소할게요</button>
					   </div>
					   </div>
					</div>
				</div>		

				<!-- 삭제 Modal -->
				<div class="modal fade" id="removeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        작성하신 글을 삭제 하시겠어요?
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
				        <button type="button" class="btn btn-primary" onclick="location.href='remove?bno=<c:out value="${board.bno}" />'" >네, 삭제할래요</button>
				      </div>
				    </div>
				  </div>
				</div>
			</section>
		</c:if>	   	    
	
	    <!--게시글 기본 정보 영역-->
	    <ul class="studyInfo_studyGrid">
	        <li class="studyInfo_contentWrapper">
	            <span class="studyInfo_title">진행 방식</span>
	            <span class="studyInfo_content" ><c:out value="${board.meet}"/></span>
	        </li>
	        <li class="studyInfo_contentWrapper">
	            <span class="studyInfo_title">모집 인원</span>
	            <span class="studyInfo_content"> <c:out value="${board.memberNum}"/> </span>
	        </li>
	        <li class="studyInfo_contentWrapper">
	            <span class="studyInfo_title">마감 날짜</span>
	            <span class="studyInfo_content" > <c:out value="${board.deadline}"/></span>
	        </li>
	        <li class="studyInfo_contentWrapper">
	            <span class="studyInfo_title">연락 방법</span>
	            <div class="contactPoint_contactWrapper">
	                <a class="contactPoint_link" href='https://<c:out value="${board.contactaddress}"/>' target="_blank" rel="noreferrer">
	                    <span>${board.contact}</span><img class="contactPoint_linkImg" src="https://holaworld.io/images/info/link.svg" alt=""></a>
	                 </div>
	        </li>
	        <li class="studyInfo_contentWrapper">
	            <span class="studyInfo_title">예상 기간</span>
	            <span class="studyInfo_content"><c:out value="${board.period}" /></span>
	        </li>
	            <li class="studyInfo_contentWrapper">
	            <span class="studyInfo_title">사용 언어</span>
	            <ul class="studyInfo_languageList">
	                <c:set var="snamesArr" value="${fn:split(board.snames, ',') }" />
											<c:forEach items="${snamesArr }" var="sname">
												<li class="studyItem_language"><img
													class="studyItem_languageImage" title="${sname }"
													src="https://holaworld.io/images/languages/${sname }.svg"
													alt="language"></li>
											</c:forEach>
	            </ul>
	        </li>
	        <li class="studyInfo_contentWrapper">
	            <span class="studyInfo_title">모집 분야</span>
	            <ul class="studyInfo_languageList">
	            <c:set var="fnamesArr" value="${fn:split(board.fnames, ',') }" />
											<c:forEach items="${fnamesArr}" var="fname">
												<li class="studyItem_position">${fname }</li>
											</c:forEach>
	            </ul>
	        </li>
	    </ul>
	</section>  <!--게시글 기본 정보 영역 끝-->
	
	<!--본문 영역-->
	<div class="studyContent_postContentWrapper">
	    <h2 class="studyContent_postInfo">프로젝트 소개</h2>
	    <div class="studyContent_postContent">
	        <c:out value="${board.content}" />
	    </div>
	</div><!--본문영역 끝-->
	
	<c:out value=""/>
	
	<!--댓글영역-->
	<section class="studyContent_commentAndViews">
	    <div class="studyContent_postComment">
	        <div class="commentInput_commentInput">
	            <h1 class="commentInput_commentCount">${board.replycnt }개의 댓글이 있습니다.</h1>
	            <c:if test="${loginUser.uidKey ne null}">
		            <form>
			            <textarea id="comment" class="commentInput_commentText" placeholder="댓글을 입력하세요."></textarea>
			            <div class="commentInput_buttonWrapper">
			           		<button class="commentInput_buttonComplete" id="addReplyBtn" name="register">댓글 등록</button>
		            	</div>
		            </form>
	            </c:if>
	            <!--  /.panel-heading -->
				<div class="panel-body"> 
				<!--  댓글 시작 -->
					<ul class="chat" id="commentList">
					
					</ul>
					<!--  댓글 끝 -->
				</div>
				<!--  panel-body 끝 -->
				<!--  /.panel-footer -->
				<div class="panel-footer">
	
				</div>
	        </div>
	        <ul class="commentList_CommentList"></ul>
	    </div>
	</section><!--댓글영역 끝-->
</div>
<!-- 삭제 모달 -->
<div class="cancelButton_wrapper" style="display: none">
	<div>댓글을 삭제 하시겠어요?</div>
	<section class="cancelButton_buttons">
		<button class="cancelButton_cancelButton">아니요</button>
		<button class="cancelButton_registerButton">네, 삭제할래요</button>
	</section>
</div>
<!--  reply test -->
<div><c:out value="${reply }"/></div>
</body>

<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous">
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous">
</script>
<script type="text/javascript" src="/resources/js/reply.js"></script>
<script>
uidkeys.push('${board.uidkey}');
var bnoValue = '<c:out value="${board.bno}"/>'; // bno값 불러오기
var unameValue = '<c:out value="${loginUser.unickName}" />'; // uname 값 불러오기
var replyUL = $(".chat"); 
var userImages = {};

$(document).ready(function() {
	
	
	// jsh <nav> 태그 사용자 이미지 불러오기
	(function(){
		
		var uidKey = '<c:out value="${ loginUser.uidKey }"/>';
		console.log(uidKey);
		var targetA = $("#dropImage");
		
		$.getJSON("/user/getAttachList", {uidKey:uidKey}, function(arr){
			console.log(arr);
			if(arr.length == 0){				
				 targetA.html("<img width='30px' height='30px' style='border-radius: 50%' src='/resources/Images/profileLogo.png'>");
			} else {
				$(arr).each(function(i, attach){
					var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
					targetA.html("<img width='40px' height='40px' style='border-radius: 50%' width='40px' src='/display?fileName="+fileCallPath+"'>");
				});
			}			 
		}); //end getjson						
		
	})();//end function	
	
	// jsh 글 작성자 이미지 불러오기
	(function(){
		
		var uidKey = '<c:out value="${ board.uidkey }"/>';
		console.log(uidKey);
		var targetB = $("#photo");
		
		$.getJSON("/user/getAttachList", {uidKey:uidKey}, function(arr){
			console.log(arr);
			if(arr.length == 0){				
				targetB.html("<img width='30px' height='30px' style='border-radius: 50%' src='/resources/Images/profileLogo.png'>");
			} else {
				$(arr).each(function(i, attach){
					var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
					targetB.html("<img width='40px' height='40px' style='border-radius: 50%' width='40px' src='/display?fileName="+fileCallPath+"'>");
				});
			}			 
		}); //end getjson						
						
		
	})();//end function	
	
	// ksh 댓글 사용자 이미지 불러오기
// 	(function() { // 즉시 실행함수
// 		uidKeys.forEach(function(uidkey, index) {
// 			$.getJSON("/user/getAttachList", {uidkey:uidKey}, function(arr) {
// 				console.log(arr);
// 				var str = "";
				
// 				if(arr.length == 0) {
// 					userImages[uidKey] = "/resources/Images/profileLogo.png"; // 기본 이미지 사용					
// 				} else {
// 					$(arr).each(function(i, attach){
// 						userImages[uidKey] = encodeURIComponent(attach.uploadPath+ "/s_" + attach.uuid +"_"+attach.fileName); // 첫 번째 이미지 사용
// 					});
// 				}
// // 				$("?").eq(index).html(str);
				
// 			})// end getJSON
// 		}) // end forEach(function)
// 	}) // end function
}); // end ready	
		
	
</script>
	
<script>
function goBack() {
  window.history.back();
}
</script>
<script>
//수정 눌렀을 때 폼 보여주기 함수 
function showEditCommentForm(rno) {
  var commentItem = document.querySelector("[data-rno='" + rno + "']");
  var commentContent = commentItem.querySelector(".commentItem_commentContent");
  var commentText = commentContent.querySelector("p").textContent;
  var editInput = commentItem.querySelector(".commentItem_modifyInput");
  var commentInputButton = commentItem.querySelector(".commentItem_commentInputButton");

  editInput.value = commentText;
  editInput.setAttribute("type", "text");
  commentInputButton.style.display = "flex";

  // 수정 취소 버튼
  var canBtn = commentItem.querySelector(".commentItem_buttonCancel");
  canBtn.addEventListener("click", function() {
    editInput.style.display = "none";
    commentInputButton.style.display = "none";
  });

  // 수정 완료 버튼
  var sucBtn = commentItem.querySelector(".commentItem_buttonComplete");
  sucBtn.addEventListener("click", function() {
    var editedComment = editInput.value;
    var rno = commentItem.getAttribute("data-rno");
    var updatedReply = { rno: rno, reply: editedComment };
    replyService.update(updatedReply, function (result) {
      alert(result);
      // 수정된 내용으로 화면 갱신
      commentContent.innerHTML = "<p class='commentItem_commentContent'>" + editedComment + "</p>";
      // 댓글 수정 입력 폼과 완료/취소 버튼 숨김
      editInput.style.display = "none";
      commentInputButton.style.display = "none";
    }); // end replyService.update
  });// end function sucBtn.onClick
}

// 댓글 수정 버튼 눌렀을 때
$('.commentItem_buttonModif').on("click", function() {
  var rno = $(this).closest('.commentItem_commentContainer').attr("data-rno");
  showEditCommentForm(rno);
});



	 
	 // kdh 댓글 삭제
	 function deleteReply(rno) {
		// 댓글 항목(li) 선택
	    var commentItem = $(this).closest(".commentItem_commentContainer");
	 	
		// 댓글 삭제 요청
   		replyService.remove(rno, function(result){
   	        
   	      alert(result);
   	   	  location.reload();
   	      
   	  });//end ReplyService
	 }
	 
	$(document).ready(function() {
		showList(1);
		    
		// 목록 보여주는 함수
		function showList(page){ 
			console.log("show list " + page);
		    
			// reply.js에 추가되어있는 replyService함수 호출
		    replyService.getList({bno:bnoValue,page: page|| 1 }, function(replyCnt, list) {
		      
			    console.log("replyCnt: "+ replyCnt );
			    console.log("list: " + list);
			    console.log(list);
			    
			    if(page == -1){
			      pageNum = Math.ceil(replyCnt/10.0);
			      showList(pageNum);
			      return;
			    }
		      
			     var str="";
			     
			     if(list == null || list.length == 0){
			       return;
			     }
			     
				for (var i = 0, len = list.length || 0; i < len; i++) {
					// 각 댓글 항목을 구성하는 HTML 코드 작성
					var commentId = 'comment_' + list[i].rno;
					str +="<li class='commentItem_commentContainer' data-rno='"+list[i].rno+"'>";
					str +="<section class='commentItem_commentHeader'>";
					str +="  <div class='commentItem_avatarWrapper'>"
					// 사용자 이미지 추가 					
					str +="		<div class='commentItem_commentInfo'><div class='commentItem_title'>"
					str +="			<div class='commentItem_userNickname'>"+list[i].replyer+"</div>"
					str +="			<div class='commentItem_registeredDate'>"+replyService.displayTime(list[i].replyDate)+"</div>"
					str +="		</div></div></div>"
					if (unameValue == list[i].replyer) {
						str += "<section class='commentButtons_buttonWrapper'>";
						str += "<button id='modBtn_" + list[i].rno + "' class='commentButtons_buttons' onclick='showEditCommentForm(" + list[i].rno + ")'>수정</button> ";
						str += "<button id='remBtn' class='commentButtons_buttons' onclick='deleteReply("+list[i].rno+")'>삭제</button>";
						str += "</section>";
					}
					str +="</section><section class='commentItem_commentContent'><p class='commentItem_commentContent'>"+list[i].reply+"</p>"
					// 현재 로그인한 사용자와 댓글 작성자가 같은 경우에만 수정/삭제 버튼 추가
					if (unameValue == list[i].replyer) {
						// 댓글 수정 입력 폼 추가
						str += "<div><input class='commentItem_modifyInput' type='hidden' name='contentInput'"
						str += "placeholder='"+list[i].reply+"' value='"+list[i].reply+"' >"
						str += "<div class='commentItem_commentInputButton' style='display: none;'>";
						str += "<button id='canBtn' class='commentItem_buttonCancel' name='cancle'>취소</button>";
						str += "<button class='commentItem_buttonComplete' name='complete'>완료</button>";
						str += "</div></div>";
					}
					str += "</section></li>";
				}// end for 
		    
			     // 0426 댓글 수정부분 추가
			    replyUL.html(str);
				showReplyPage(replyCnt);
			});//end getList
		}//end showList
		
		
		 
		 
	    var pageNum = 1;
	    var replyPageFooter = $(".panel-footer");
	    
	    // 댓글 페이지네이션
	    function showReplyPage(replyCnt){
	      
	      var endNum = Math.ceil(pageNum / 10.0) * 10;  
	      var startNum = endNum - 9; 
	      
	      var prev = startNum != 1;
	      var next = false;
	      
	      if(endNum * 10 >= replyCnt){
	        endNum = Math.ceil(replyCnt/10.0);
	      }
	      
	      if(endNum * 10 < replyCnt){
	        next = true;
	      }
	      
	      var str = "<ul class='pagination pull-right'>";
	      
	      if(prev){
	        str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
	      }
	      
	      for(var i = startNum ; i <= endNum; i++){
	        
	        var active = pageNum == i? "active":"";
	        
	        str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
	      }
	      
	      if(next){
	        str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
	      }
	      
	      str += "</ul></div>";
	      
	      console.log(str);
	      
	      replyPageFooter.html(str);
	    }// end function showReplyPage
	     
	    replyPageFooter.on("click","li a", function(e){
	       e.preventDefault();
	       console.log("page click");
	       
	       var targetPageNum = $(this).attr("href");
	       
	       console.log("targetPageNum: " + targetPageNum);
	       
	       pageNum = targetPageNum;
	       
	       showList(pageNum);
	     }); //end replyPageFooter
   
	    // 4-25 추가
	    var comment = $('#comment');

	    $("#addReplyBtn").on("click",function(e){
	      
	      var reply = {
	            reply: comment.val(),
	            replyer:unameValue,
	            bno:bnoValue
	          };
	      replyService.add(reply, function(result){
	        
	        alert(result);
	        		        
	        showList(1);
	        showList(-1);
	        
	      });//end replyService.add 
	    });//end onClick function
	});
    
</script>

<script type="text/javascript">
$(document).ready(function() {
  
  var operForm = $("#operForm"); 
  
  $("button[data-oper='modify']").on("click", function(e){
    
    operForm.attr("action","/board/modify").submit();
    
  });
  
    
  $("button[data-oper='list']").on("click", function(e){
    
    operForm.find("#bno").remove();
    operForm.attr("action","/board/main")
    operForm.submit();
    
  });
  /* 마감 기능 */
  // '마감' 또는 '마감취소' 버튼 display 기존값으로 초기화
	var status = '<c:out value="${board.status}"/>'; // expireck
	if (status == 'closed') {
	    $("#closed").css("display", "none");
	} else {
		$("#opend").css("display", "none");
	}
	
	// "네, 마감할게요." 버튼 눌렀을 시
	$("button[data-oper='closed']").on("click", function(e){		
		  	var bnoValue = '<c:out value="${board.bno}"/>'; // bno
		  	var data = {bno : bnoValue};
		  	
			$.ajax({
				type : "get",
				url : "/board/upClose",
				data : data,
				success : function(result){
					console.log("성공 여부" + result);
					if(result != 'fail'){
						$("#closed").css("display", "none");
						$("#opend").css("display","inline-block");
					}
				}
			});		
			$("#deadlineModal").modal('hide');
	});
	
	// "마감 취소" 버튼 눌렀을 시
	$("button[data-oper='opend']").on("click", function(e){		
		  	var bnoValue = '<c:out value="${board.bno}"/>'; // bno
		  	var data = {bno : bnoValue};
		  	
			$.ajax({
				type : "get",
				url : "/board/upOpen",
				data : data,
				success : function(result){
					console.log("성공 여부" + result);
					if(result != 'fail'){
						$("#opend").css("display", "none");
						$("#closed").css("display","inline-block");
					}
				}
			});			
			$("#resetModal").modal('hide');
	}); // end 버튼
});
</script>


</html>