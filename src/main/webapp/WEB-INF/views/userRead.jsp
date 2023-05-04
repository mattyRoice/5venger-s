<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.util.*"%>

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
<link rel="stylesheet" href="/resources/css/interest.css" type="text/css" />
<script>
	var uidkeys = [];
</script>
<title>스터디허브</title>
</head>
<link rel="icon" href="/resources/Images/profileLogo.png">
<body>
	<!--  전체 바디 태그 root -->
	<div id="root">
	
	<!-- myLike.js 적용을 위한 div 태그 -->
	<div id="read-list">
	
		<!--  메인 게시글 -->
		<main class="mainContent_main">
			
			<div class="container">
				<div class="row">

					<c:forEach items="${board}" var="board">
						<div id="card_${board.bno}" class="col-lg-3 col-md-4 col-sm-6" 
						onmouseover="this.style.transform='scale(1.05)'" 
						onmouseout="this.style.transform='scale(1)'" 
						style="transition: transform 0.3s ease-in-out;">
							<div class="card" style="width: 100%; color: inherit; text-decoration: none;">
								<div class="card-body move" style="color: inherit; text-decoration: none;">
								<a href='/board/get?bno=<c:out value="${board.bno }"/>' style="color: inherit; text-decoration: none;">
									<!-- 마감임박, 따끈따끈 새글 배지-->
									<div class="studyItem_badgeWrapper">
									</div>
									<!--마감일-->
									<div class="studyItem_schedule">
										<p class="studyItem_scheduleTitle">마감일 |</p>
										<p>
											<c:choose>
												<c:when test="${board.deadline ne null }">
													<p>
														<c:out value="${board.deadline }" />
													</p>
												</c:when>

												<c:when test="${board.deadline eq null }">
													<p>기간 미정</p>
												</c:when>
											</c:choose>

										</p>
									</div>
									<!--게시글 제목-->
									<h6 class="studyItem_title">
										<c:out value="${board.title }" />
									</h6>
									<!--분야-->
									<ul class="studyItem_positionList">
										<c:set var="fnamesArr" value="${fn:split(board.fnames, ',') }" />
										<c:forEach items="${fnamesArr}" var="fname">
											<li class="studyItem_position">${fname }</li>
										</c:forEach>
									</ul>


									<!--기술태그-->
									<ul class="studyItem_content">
										<c:set var="snamesArr" value="${fn:split(board.snames, ',') }" />
										<c:forEach items="${snamesArr }" var="sname">
											<li class="studyItem_language"><img
												class="studyItem_languageImage" title="${sname }"
												src="https://holaworld.io/images/languages/${sname }.svg"
												alt="language"></li>
										</c:forEach>
									</ul>

									<!--구분선-->
									<div class="studyItem_border"></div>

									<!-- 메인게시글 하단 -->
									<section class="studyItem_info">
										<!--  user이미지, user 닉네임 -->
										<div class="studyItem_userInfo">
											<div class="avatar_user">
												<div id="uploadResult">
													<div class='uploadResult'>
														<ul>
															<li><img id="photo" class="avatar_userImg" width="30px"
														height="30px" src="/resources/Images/profileLogo.png"
														alt="Profile Image"></li>
														</ul>
														
													</div>
												</div>
												
											</div>
											<div>
												<c:out value="${board.uname }" />
											</div>
										</div>

										<!--  조회수,댓글 -->
										<div class="studyItem_viewsAndComment">
											<!--  조회수 -->
											<div class="studyItem_infoItem">
												<svg stroke="currentColor" fill="currentColor"
													stroke-width="0" viewBox="0 0 1024 1024" color="#999999"
													height="24" width="24" xmlns="http://www.w3.org/2000/svg"
													style="color: rgb(153, 153, 153);">
												<path
														d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z"></path></svg>
												<p>${board.cnt }</p>
											</div>

											<!--  댓글 -->
											<div class="studyItem_infoItem">
												<svg stroke="currentColor" fill="currentColor"
													stroke-width="0" viewBox="0 0 512 512" color="#999999"
													height="18" width="18" xmlns="http://www.w3.org/2000/svg"
													style="color: rgb(153, 153, 153);">
												<path
														d="M256 32C114.6 32 0 125.1 0 240c0 47.6 19.9 91.2 52.9 126.3C38 405.7 7 439.1 6.5 439.5c-6.6 7-8.4 17.2-4.6 26S14.4 480 24 480c61.5 0 110-25.7 139.1-46.3C192 442.8 223.2 448 256 448c141.4 0 256-93.1 256-208S397.4 32 256 32zm0 368c-26.7 0-53.1-4.1-78.4-12.1l-22.7-7.2-19.5 13.8c-14.3 10.1-33.9 21.4-57.5 29 7.3-12.1 14.4-25.7 19.9-40.2l10.6-28.1-20.6-21.8C69.7 314.1 48 282.2 48 240c0-88.2 93.3-160 208-160s208 71.8 208 160-93.3 160-208 160z"></path></svg>
												<p>${board.replycnt }</p>
											</div>
										</div>
									</section>
								</a>
								</div>
								<!-- card-body 끝-->
							</div>
							<!--class="card-->
						</div>
						<!-- col-md4 끝-->
						
						<script>
							uidkeys.push('${board.uidkey}');
						</script>
						<script>
							/* 마감일자 지난 카드 흐리게 만들기 */
							var status = '<c:out value="${board.status}"/>';
							var deadlineStr = '<c:out value="${board.deadline}"/>';
							var postDateStr = '<c:out value="${board.regdate}"/>';
							var postDate = new Date(postDateStr.replace('KST', 'UTC+0900'));
							var deadlineDate = new Date(deadlineStr);
							var today = new Date(); 
							var diffDays = Math.floor((deadlineDate - today) / (1000 * 60 * 60 * 24)); // 현재 시간부터 마감시간까지 남은 날짜(날짜 단위)
							console.log(diffDays);
							if (diffDays < -1 || status =="closed") { // 마감 날짜가 지났거나, status가 'closed'일 경우
								var expireDiv = $("<div>", { id: "expire", class: "move w-50 p-3 text-center fw-semibold rounded-4", href:"<c:out value='${board.bno }'/>", text: "모집마감" });
								expireDiv.css({
									position: "absolute",
									top: "40%",
									left: "25%",
									background: "black",
									color: "white",
									"z-index": 9999,
									cursor: "pointer"
								});
								$("#card_${board.bno}").css("position", "relative");  
								$("#card_${board.bno}").prepend(expireDiv);
								$("#card_${board.bno}").css("opacity", "0.5");
								$("#card_${board.bno} .studyItem_schedule").css("margin-top", "30px");
							} else if (diffDays <= 1) { // kdh 0502 추가 24시간 미만 남았을 경우
								var wrapper = $('#card_${board.bno} .studyItem_badgeWrapper');
								wrapper.append("<div class='badge_badge'><div class='badge_deadline'>🔥 마감코앞</div></div>");
							} else if ((today - postDate) < (24 * 60 * 60 * 1000)) { // 등록한지 하루 이내인 경우
							    var wrapper = $('#card_${board.bno} .studyItem_badgeWrapper');
							    wrapper.append("<div class='badge_badge'><div class='badge_new'>🍞 따끈따끈 새 글</div></div>");
							} else {
								$("#card_${board.bno} .studyItem_schedule").css("margin-top", "20px");
							}
						</script>
					</c:forEach>
					<!--  메인 게시글 반복문 끝 -->
				</div>
				<!--row 끝-->
				<br>
			</div>
			<!--container 끝-->
		</main>
		<!--  main 끝 -->
	
	</div>
	<!-- myLike.js 적용을 위한 div 태그 끝 -->
	
	</div>
	<!-- 전체 바디 태그 root 끝 -->

	<%@ include file="/WEB-INF/includes/footer.jsp"%>
