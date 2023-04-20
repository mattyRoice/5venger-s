<%@page import="org.springframework.ui.Model"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" href="/resources/css/main.css" type="text/css" />
<script>
	var uidkeys = [];
</script>
<title>스터디허브</title>
<style>
.studyContent_wrapper__VVyNH {
    max-width: 900px;
    width: 100%;
    display: flex;
    flex-direction: column;
    margin: 0 auto;
    padding: 1.5rem 1.5rem 5rem;
}
.studyContent_postHeader__2Qu_y {
    display: flex;
    flex-direction: column;
    margin-top: 3rem;
}
.studyContent_title__3680o {
    margin-top: 2.5rem;
    font-weight: 800;
    font-size: 3rem;
    line-height: 126.5%;
    letter-spacing: -.005em;
    color: #000;
}
.studyContent_userAndDate__1iYDv {
    margin-top: 32px;
    padding-bottom: 32px;
    border-bottom: 3px solid #f2f2f2;
    display: flex;
    grid-gap: 15px;
    gap: 15px;
    align-items: center;
}
.studyContent_user__1XYmH {
    display: flex;
    align-items: center;
    position: relative;
}
.studyContent_userImg__3gyI- {
    cursor: pointer;
    display: block;
    height: 3rem;
    width: 3rem;
    margin-right: 16px;
    border-radius: 50%;
    object-fit: cover;
}
.studyContent_userName__1GBr8 {
    color: #333;
    cursor: pointer;
    font-size: 18px;
    font-weight: 700;
    padding-right: 15px;
    border-right: 2px solid #e1e1e1;
}
.studyContent_registeredDate__3lybC {
    font-size: 18px;
    color: #717171;
}
.studyInfo_studyGrid__38Lfj {
    display: grid;
    grid-template-columns: repeat(2,3fr);
    grid-row-gap: 24px;
    row-gap: 24px;
    margin-top: 60px;
}
.studyInfo_contentWrapper__KkSUP {
    display: flex;
    position: relative;
    align-items: center;
    font-weight: 700;
    font-size: 20px;
}
.studyInfo_title__3jXRE {
    color: #717171;
    margin-right: 40px;
}
.studyInfo_content__eqtqC {
    color: #333;
}
.contactPoint_contactWrapper__2T_GC, .contactPoint_email__1a-aY {
    position: absolute;
    left: 110px;
    background: #f2f4f8;
    border-radius: 10px;
    color: #4a5e75;
}
.studyInfo_content__eqtqC {
    color: #333;
}
.studyInfo_languageList__1usTa {
    display: flex;
    grid-gap: 12px;
    gap: 12px;
}
.studyInfo_language__3A3Vi, .studyInfo_languageImage__2b-u9 {
    width: 30px;
    height: 30px;
}
.studyInfo_positions__3JIxy {
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
.contactPoint_link__2MqRR {
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
.contactPoint_linkImg__2_927 {
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
.studyContent_postContentWrapper__187Zh {
    margin-top: 132px;
    font-size: 1.125rem;
    word-break: break-all;
    line-height: 1.7;
    letter-spacing: -.004em;
}

* {
    box-sizing: inherit;
}
.studyContent_postInfo__3zpYu {
    margin: 0;
    color: #333;
    font-size: 26px;
    font-weight: 700;
    padding-bottom: 24px;
    border-bottom: 3px solid #f2f2f2;
}
.studyContent_postContent__2c-FO {
    width: 100%;
    margin: 40px auto 0;
}
.studyContent_commentAndViews__LrV6X {
    display: flex;
    flex-direction: column;
    background: #fff;
}
.studyContent_postComment__2lpJV {
    width: 100%;
    margin: 0 auto;
}
.commentInput_commentInput__39H41 {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    margin-top: 100px;
}
.commentInput_commentCount__2dHvH {
    margin: 0 0 30px;
    font-size: 22px;
}
.commentInput_commentInput__39H41 textarea {
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
.commentInput_buttonWrapper__2f_l9 {
    display: flex;
    justify-content: flex-end;
    margin: 16px 0 24px;
}
.commentInput_buttonComplete__24z4R {
    padding: 0px 0px;
    min-width: 120px;
    height: 40px;
    background-color:#ffb300;
    border-radius: 50px;
    font-weight: 700;
    color: #fff;
    font-size: 16px;
}
.commentList_CommentList__30HUh {
    width: 100%;
}
body {
    margin: 200px;
    margin-top: 0px;
    font-family: "Spoqa Han Sans Neo",-apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue",sans-serif;
    box-sizing: border-box;
    min-height: 100%;
}
.navbar_navbar__O41pd {
    margin: auto;
    max-width: 1180px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 85px;
    padding: 0 10px;
}
.navbar_logo__a5PmC {
    width: 105px;
    height: 32px;
}
.navbar_loginElementWrapper__11CeH {
    display: flex;
    grid-gap: 30px;
    gap: 30px;
    align-items: center;
}.navbar_login__3Ui--, .navbar_postRegister__FJnRS {
    font-weight: 600;
    font-size: 1.125rem;
}

button {
    outline: none;
    border: none;
    background-color: #fff;
    cursor: pointer;
}
.notice_notificationWrapper__obnzH {
    position: relative;
    cursor: pointer;
}
.notice_imageWrapper__1A5dg {
    position: relative;
}
.notice_notification__1bz33 {
    display: block;
}
.loginUser_userWrapper__1c_jd {
    cursor: pointer;
    display: flex;
    align-items: center;
    position: relative;
}
.loginUser_userImg__1JpxQ {
    display: block;
    height: 2.5rem;
    width: 2.5rem;
    border-radius: 50%;
    object-fit: cover;
    transition: all .125s ease-in 0s;
}
.loginUser_userWrapper__1c_jd svg {
    font-size: 1.5rem;
    color: #868e96;
    transition: all .125s ease-in 0s;
    margin-right: -.4375rem;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
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
<section class="studyContent_postHeader__2Qu_y">
    <!--뒤로가기버튼-->
    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 448 512" color="808080" cursor="pointer" height="30" width="30" xmlns="http://www.w3.org/2000/svg" style="color: rgb(128, 128, 128);">
    <path d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"></path>
    </svg>


    <!--게시글 제목-->
    <div class="studyContent_title__3680o" name="title" ><c:out value="${board.title }" /></div>
    <!--사용자 닉네임영역-->
    <div class="studyContent_userAndDate__1iYDv">
        <div class="studyContent_user__1XYmH">
	<div id="uploadResult">
	<div class='uploadResult'>
		<ul>
	<li><img id="photo" class="avatar_userImg__hogPI" width="30px"
	height="30px" src="/resources/Images/profileLogo.png" alt="Profile Image"></li>
	</ul>
														
	</div>
<%-- 	<% --%>
<!--   	   SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
 	   BoardVO board = (BoardVO) Model.getAttribute("board");
 	   String formattedDate = dateFormat.format(board.getRegdate()); -->
<%-- 	%> --%>
	
	</div>        
            <img class="studyContent_userImg__3gyI-">
            <div class="studyContent_userName__1GBr8" ><c:out value="${board.uidkey }" /></div></div>
        </div><div class="studyContent_registeredDate__3lybC" ><c:out value="${board.regdate}"/></div>
    </div>
    

    <!--게시글 기본 정보 영역-->
    <ul class="studyInfo_studyGrid__38Lfj">
        <li class="studyInfo_contentWrapper__KkSUP">
            <span class="studyInfo_title__3jXRE">진행 방식</span>
            <span class="studyInfo_content__eqtqC" ><c:out value="${board.meet}"/></span>
        </li>
        <li class="studyInfo_contentWrapper__KkSUP">
            <span class="studyInfo_title__3jXRE">모집 인원</span>
            <span class="studyInfo_content__eqtqC" <c:out value="${board.memberNum}"/> readonly="readonly"></span>
        </li>
        <li class="studyInfo_contentWrapper__KkSUP">
            <span class="studyInfo_title__3jXRE">시작 예정</span>
            <span class="studyInfo_content__eqtqC" > <c:out value="${board.regdate}"/></span>
        </li>
        <li class="studyInfo_contentWrapper__KkSUP">
            <span class="studyInfo_title__3jXRE">연락 방법</span>
            <div class="contactPoint_contactWrapper__2T_GC">
                <a class="contactPoint_link__2MqRR" href="https://open.kakao.com/o/sirqtbdf" target="_blank" rel="noreferrer">
                    <span>카카오톡 오픈채팅</span><img class="contactPoint_linkImg__2_927" src="https://holaworld.io/images/info/link.svg" alt=""></a>
                </div>
        </li>
        <li class="studyInfo_contentWrapper__KkSUP">
            <span class="studyInfo_title__3jXRE">예상 기간</span>
            <span class="studyInfo_content__eqtqC"><c:out value="${board.period}" /></span>
        </li>
        <li class="studyInfo_contentWrapper__KkSUP">
            <span class="studyInfo_title__3jXRE">사용 언어</span>
            <ul class="studyItem_content__1mJ9M">
										<c:set var="snamesArr" value="${fn:split(board.snames, ',') }" />
										<c:forEach items="${snamesArr }" var="sname">
											<li class="studyItem_language__20yqw"><img
												class="studyItem_languageImage__1AfGa" title="${sname }"
												src="https://holaworld.io/images/languages/${sname }.svg"
												alt="language"></li>
										</c:forEach>
									</ul>
        </li>
        <li class="studyInfo_contentWrapper__KkSUP">
            <span class="studyInfo_title__3jXRE">모집 분야</span>
            <ul class="studyInfo_languageList__1usTa"><li class="studyInfo_positions__3JIxy">
            	
            <c:set var="fnamesArr" value="${fn:split(board.fnames, ',') }" />
										<c:forEach items="${fnamesArr}" var="fname">
											<li class="studyItem_position__2sRRD">${fname }</li>
										</c:forEach>
            
            </li></ul>
        </li>
         <li class="studyInfo_contentWrapper__KkSUP"></li>
    </ul>
</section>  <!--게시글 기본 정보 영역 끝-->

<!--본문 영역-->
<div class="studyContent_postContentWrapper__187Zh">
    <h2 class="studyContent_postInfo__3zpYu">프로젝트 소개</h2>
    <div class="studyContent_postContent__2c-FO">
        <c:out value="${board.content}" />
    </div>
</div><!--본문영역 끝-->

<!--댓글영역-->
<section class="studyContent_commentAndViews__LrV6X">
    <div class="studyContent_postComment__2lpJV">
        <div class="commentInput_commentInput__39H41">
            <h1 class="commentInput_commentCount__2dHvH">0개의 댓글이 있습니다.</h1>
            <textarea class="commentInput_commentText__2er8t" placeholder="댓글을 입력하세요."></textarea>
            <div class="commentInput_buttonWrapper__2f_l9">
                <button class="commentInput_buttonComplete__24z4R" name="register">댓글 등록</button>
            </div>
        </div>
        <ul class="commentList_CommentList__30HUh"></ul>
    </div>
</section><!--댓글영역 끝-->

<button data-oper='main'
	class="btn btn-info" style="color: #ff9149"
	onclick="location.href='/board/main'">
	Main으로 이동
</button>
<%-- </c:forEach> --%>
<script>
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
	</script>
<script>
							uidkeys.push('${board.uidkey}');
						</script>
						<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous">
</script>
<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
</body>

</html>