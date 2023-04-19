<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>스터디허브</title>
<style>

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
.postRegister_postWrapper__1s7mv {
    max-width: 1040px;
    display: flex;
    flex-direction: column;
    padding: 60px 16px;
    width: 1024px;
    margin: 0 auto;
    color: #333;
    grid-gap: 50px;
    gap: 50px;
    position: relative;
}
.postRegister_postContentWrapper__3BXZ6 {
    display: flex;
    align-items: center;
    padding: 16px;
    margin-bottom: 36px;
    border-bottom: 3px solid #f2f2f2;
}
.postRegister_sequence__nC1Px {
    margin-right: 8px;
    width: 28px;
    height: 28px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    background: #ffcd00;
    font-size: 16px;
    font-weight: 700;
    line-height: 19px;
    color: #fff;
}
.postRegister_text__17jg3 {
    font-weight: 700;
    font-size: 24px;
    line-height: 40px;
    letter-spacing: -.05em;
    margin: 0;
}
.postinfo_inputList__3SKF- {
    margin-top: 40px;
    display: flex;
    grid-gap: 15px;
    gap: 15px;
    list-style: none;
}
.postinfo_listItem__OFhXr {
    flex: 1 1;
}

li {
    padding: 0;
}
li, p {
    margin: 0;
}
.selectbox_labelText__3Q9iz {
    display: inline-block;
    margin-bottom: 5px;
    color: #333;
    font-weight: 500;
}

.css-2b097c-container {
    position: relative;
    box-sizing: border-box;
}
.css-7pg0cj-a11yText {
    z-index: 9999;
    border: 0px;
    clip: rect(1px, 1px, 1px, 1px);
    height: 1px;
    width: 1px;
    position: absolute;
    overflow: hidden;
    padding: 0px;
    white-space: nowrap;
}
.css-1iewm1a-control {
    -webkit-box-align: center;
    align-items: center;
    background-color: rgb(255, 255, 255);
    border-color: rgb(204, 204, 204);
    border-radius: 4px;
    border-style: solid;
    border-width: 1px;
    cursor: default;
    display: flex;
    flex-wrap: wrap;
    -webkit-box-pack: justify;
    justify-content: space-between;
    min-height: 56px;
    position: relative;
    transition: all 100ms ease 0s;
    box-sizing: border-box;
    width: 100%;
    outline: 0px !important;
}
.css-1hwfws3 {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex: 1 1 0%;
    flex-wrap: wrap;
    padding: 2px 8px;
    position: relative;
    overflow: hidden;
    box-sizing: border-box;
}
.css-1wa3eu0-placeholder {
    color: rgb(128, 128, 128);
    margin-left: 2px;
    margin-right: 2px;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    box-sizing: border-box;
}
.css-1g6gooi {
    margin: 2px;
    padding-bottom: 2px;
    padding-top: 2px;
    visibility: visible;
    color: rgb(51, 51, 51);
    box-sizing: border-box;
}
.css-1iewm1a-control {
    -webkit-box-align: center;
    align-items: center;
    background-color: rgb(255, 255, 255);
    border-color: rgb(204, 204, 204);
    border-radius: 4px;
    border-style: solid;
    border-width: 1px;
    cursor: default;
    display: flex;
    flex-wrap: wrap;
    -webkit-box-pack: justify;
    justify-content: space-between;
    min-height: 56px;
    position: relative;
    transition: all 100ms ease 0s;
    box-sizing: border-box;
    width: 100%;
    outline: 0px !important;
}
ul {
    list-style: none;
    margin: 0;
    padding: 0;
}
label {
    cursor: default;
}
.form-select {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='%232596be' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='m2 5 6 6 6-6'/%3e%3c/svg%3e");
    color: rgb(0, 0, 0);
}
.css-hdw1oc {
    float: unset;
    overflow: hidden;
    padding: 0px;
    line-height: 11px;
    transition: width 150ms cubic-bezier(0, 0, 0.2, 1) 0ms;
}
.css-igs3ac {
    text-align: left;
    position: absolute;
    inset: -5px 0px 0px;
    margin: 0px;
    padding: 0px 8px;
    pointer-events: none;
    border-radius: inherit;
    border-style: solid;
    border-width: 1px;
    overflow: hidden;
    min-width: 0%;
    border-color: rgba(0, 0, 0, 0.23);
}
.postRegister_postWrapper__1s7mv {
    max-width: 1040px;
    display: flex;
    flex-direction: column;
    padding: 60px 16px;
    width: 1024px;
    margin: 0 auto;
    color: #333;
    grid-gap: 50px;
    gap: 50px;
    position: relative;
}
.writebutton_buttons__2qW83 {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    margin-top: 1rem;
}
.writebutton_cancelButton__2W7b_, .writebutton_registerButton__n_O2M {
    cursor: pointer;
    outline: none;
    border: none;
    border-radius: 4px;
    padding: 0 1.25rem;
    height: 2rem;
    font-size: 1rem;
}

.writebutton_cancelButton__2W7b_ {
    background: #e9ecef;
    color: #495057;
    margin-right: 1rem;
}
button {
    outline: none;
    border: none;
    background-color: #fff;
    cursor: pointer;
}
.writebutton_registerButton__n_O2M {
    font-weight: 700;
    background-color: #ffb300;
    color: #fff;
}
.css-12jo7m5 {
    border-radius: 2px;
    color: rgb(51, 51, 51);
    font-size: 85%;
    overflow: hidden;
    padding: 3px 3px 3px 6px;
    text-overflow: ellipsis;
    white-space: nowrap;
    box-sizing: border-box;
}
.css-xb97g8 {
    -webkit-box-align: center;
    align-items: center;
    border-radius: 2px;
    display: flex;
    padding-left: 4px;
    padding-right: 4px;
    box-sizing: border-box;
}


</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
   <!--헤더-->
<nav class="navbar_navbar__O41pd"><a href="/">
    <img class="navbar_logo__a5PmC" src="./studyhub_logo.png" alt="logo"></a>
    <div class="navbar_loginElementWrapper__11CeH"><button class="navbar_postRegister__FJnRS">새 글 쓰기</button>
        <div class="notice_notificationWrapper__obnzH"><div class="notice_imageWrapper__1A5dg">
            <img class="notice_notification__1bz33" src="https://holaworld.io/images/info/notification.svg" alt="notification"></div>
        </div><div class="loginUser_userWrapper__1c_jd">
            <img class="loginUser_userImg__1JpxQ" src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG" alt="userImg">
            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                <path d="M7 10l5 5 5-5z"></path>
            </svg>
        </div>
    </div>
</nav> <!--헤더 끝-->

<!--본문 바디시작-->
<div class ="postRegister_postWrapper__1s7mv">
<section>
    <div class="postRegister_postContentWrapper__3BXZ6">
        <span class="postRegister_sequence__nC1Px">1</span>
        <h2 class="postRegister_text__17jg3">프로젝트 기본 정보를 입력해주세요.</h2>
    </div>
    
    <ui class="postinfo_inputList__3SKF-">
    <li class="postinfo_listItem__OFhXr">
        <label class="selectbox_labelText__3Q9iz" for="onoffline">모집인원</label>
        <div class=" css-2b097c-container">
            <span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
            <select class="css-1iewm1a-control" id="members" >
            	<option value="members choice">선택하세요</option>
                <option value="one">1명</option>
                <option value="two">2명</option>
                <option value="three">3명</option>
                <option value="four">4명</option>
                <option value="five">5명</option>
                <option value="six">6명</option>
                <option value="seven">7명</option>
                <option value="eight">8명</option>
                <option value="nine">9명</option>
                <option value="tenover">10명이상</option>
            </select> 
        </div>
    </li>

    <li class="postinfo_listItem__OFhXr">
        <label class="selectbox_labelText__3Q9iz" for="onoffline">진행 방식</label>
        <div class=" css-2b097c-container">
            <span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
            <select class="css-1iewm1a-control" id="way" >
            	<option value="way choice">선택하세요</option>
                <option value="online">온라인</option>
                <option value="offline">오프라인</option>
            </select> 
        </div>
    </li>    
    </ui>
    <ui class="postinfo_inputList__3SKF-">
        <li class="postinfo_listItem__OFhXr">
            <label class="selectbox_labelText__3Q9iz" for="onoffline">진행기간</label>
            <div class=" css-2b097c-container">
                <span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
                <select class="css-1iewm1a-control" id="term" >
                	<option value="term choice">선택하세요</option>
                    <option value="undecided">기간미정</option>
                    <option value="one month">1개월</option>
                    <option value="two month">2개월</option>
                    <option value="three month">3명</option>
                    <option value="four month">4명</option>
                    <option value="five month">5명</option>
                    <option value="six month">6명</option>
                    <option value="long term">장기</option>
                </select> 
            </div>
        </li>
    
        <li class="postinfo_listItem__OFhXr">
            <label class="selectbox_labelText__3Q9iz" for="onoffline">진행 방식</label>
            <div class=" css-2b097c-container">
                <span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
                <select class="css-1iewm1a-control" id="stack" mutiple="mutiple">
                   	<option value="stack choice">선택하세요</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="TypeScript">TypeScript</option>
                    <option value="Vue">Vue</option>
                    <option value="Nodejs">Nodejs</option>
                    <option value="Spring">Spring</option>
                    <option value="Java">Java</option>
                    <option value="Nextjs">Nextjs</option>
                    <option value="Nexsjs">Nexsjs</option>
                    <option value="Express">Express</option>
                    <option value="Go">Go</option>
                    <option value="C">C</option>
                    <option value="Python">Python</option>
                    <option value="Django">Django</option>
                    <option value="Swift">Swift</option>
                    <option value="MySQL">MySQL</option>
                    <option value="Kotlin">Kotlin</option>
                    <option value="MongoDB">MongoDB</option>
                    <option value="Php">php</option>
                    <option value="GraphQL">GraphQL</option>
                    <option value="Firebase">Firebase</option>
                    <option value="ReactNative">ReactNative</option>
                    <option value="Unity">Unity</option>
                    <option value="Unity">Unity</option>
                    <option value="Figma">Figma</option>
                    <option value="Flutter">Flutter</option>
                    <option value="AWS">AWS</option>
                    <option value="Kubernetes">Kubernetes</option>
                    <option value="Docker">Docker</option>
                    <option value="Git">Git</option>
                    <option value="Zeplin">Zeplin</option>
                </select> 
            </div>
        </li>    
        </ui>
	
	 <ui class="postinfo_inputList__3SKF-">
        <li class="postinfo_listItem__OFhXr">
            <label class="selectbox_labelText__3Q9iz" for="onoffline">마감일</label>
            <div class=" css-2b097c-container">
                <span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
                <input type="date" class="css-1iewm1a-control" id="closing date" >
            </div>
        </li>
    
        <li class="postinfo_listItem__OFhXr">
            <label class="selectbox_labelText__3Q9iz" for="onoffline">모집 포지션</label>
            <div class=" css-2b097c-container">
                <span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
                <select class="css-1iewm1a-control" id="position" mutiple="mutiple">
                    <option value="position choice">선택하세요</option>
                    <option value="all">전체</option>
                    <option value="designer">디자이너</option>
                    <option value="frontend">프론트엔드</option>
                    <option value="backend">백엔드</option>
                    <option value="ios">IOS</option>
                    <option value="android">안드로이드</option>
                    <option value="devops">데브옵스</option>
                    <option value="pm">PM</option>
                    
                </select> 
            </div>
        </li>    
     </ui>
     
      <ui class="postinfo_inputList__3SKF-">
        <li class="postinfo_listItem__OFhXr">
            <label class="selectbox_labelText__3Q9iz" for="onoffline">연락 방법</label>
            <div class=" css-2b097c-container">
                <span aria-live="polite" aria-atomic="false" aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
                <select class="css-1iewm1a-control" id="call" >
                <option value="call choice">선택하세요</option>
                    <option value="kakao">카카오톡 오픈채팅</option>
                    <option value="Gogle">구글폼</option>
                    <option value="email">이메일</option>
                </select>
                  <input type ="text" class="css-1iewm1a-control" id="calladr" placeholder="링크 주소를 입력해주세요">
            </div>
        </li>
       
        <li class="postinfo_listItem__OFhXr">
            
                    
           
        </li>    
     </ui>
	
	
	<br>
	<div class="postRegister_postContentWrapper__3BXZ6">
		<span class="postRegister_sequence__nC1Px">2</span>
		<h2 class="postRegister_text__17jg3">프로젝트에 대해 소개해주세요.</h2>
	</div>
		
	<!-- /.row -->
	<div class="row">
	<div class="col-lg-12">
	<div class="panel panel-default">
	<div class="panel-heading">
		
	</div>
	
		<!-- /.panel-heading -->
		<div class="panel-body">
		
		<form role="form" action="/board/register" method="post">
		<div class="form-group">
		<label>제목</label>
		<input class="form-control" name='title'>
		</div>
		<br>
		<div class="form-group">
		<label>프로젝트 내용</label>
		<textarea class="form-control" rows="15" name='content'></textarea>
		</div>
		<section class="writebutton_buttons__2qW83">
		<button class="writebutton_cancelButton__2W7b_">취소</button>
		<button class="writebutton_registerButton__n_O2M">글 등록</button>
		</section>
		</form>
		
		</div> <!-- /.panel-body --> 
		</div>	<!-- /.panel -->
		</div>
		</div>
 </section>
</div>
</body>
</html>
