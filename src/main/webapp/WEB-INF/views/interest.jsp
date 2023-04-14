<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="java.sql.*" %>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/interest.css" type="text/css" />
<title>관심글 목록</title>
</head>
<body>
	<%
		// DB 연결 정보 설정
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "studyhub";
		String password = "1234";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			// JDBC 드라이버 로딩
			Class.forName(driver);
			// DB 연결 생성
			conn = DriverManager.getConnection(url, user, password);
			// 쿼리문 작성
			String sql = "SELECT board_tbl.*, user_tbl.unickname FROM board_tbl JOIN user_tbl ON board_tbl.uidkey = user_tbl.uidkey ORDER BY bno ASC";
			// PreparedStatement 객체 생성
			pstmt = conn.prepareStatement(sql);
			// 쿼리문 실행 및 결과 저장
			rs = pstmt.executeQuery();


			
			// 결과 출력
			while (rs.next()) {
				out.println("게시글 번호: " + rs.getInt("BNO") + "<br>");
				out.println("모임 유형: " + rs.getString("MEET") + "<br>");
				out.println("참여 인원 수: " + rs.getInt("MEMBERNUM") + "<br>");
				out.println("연락처: " + rs.getString("CONTACT") + "<br>");
				out.println("기간: " + rs.getString("PERIOD") + "<br>");
				out.println("제목: " + rs.getString("TITLE") + "<br>");
				out.println("작성자: " + rs.getString("UNICKNAME") + "<br>");
				out.println("내용: " + rs.getString("CONTENT") + "<br>");
				out.println("조회수: " + rs.getInt("CNT") + "<br>");
				out.println("등록일: " + rs.getDate("REGDATE") + "<br>");
				out.println("마감일: " + rs.getDate("DEADLINE") + "<br>");
				out.println("댓글 수: " + rs.getInt("REPLYCNT") + "<br><br>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 리소스 반환
			if (rs != null) try { rs.close(); } catch (SQLException e) {}
			if (pstmt != null) try { pstmt.close(); } catch (SQLException e) {}
			if (conn != null) try { conn.close(); } catch (SQLException e) {}
		}
	%>


	<!--  전체 바디 태그 root -->
	<div id="root">
		<!--  nav 태그 -->
		<nav class="navbar_navbar__O41pd">
			<a href="/"> <img class="navbar_logo__a5PmC"
				src="/resources/Images/SHLogo.png" alt="logo">
			</a>
			<div class="navbar_loginElementWrapper__11CeH">
				<button class="navbar_postRegister__FJnRS">새 글 쓰기</button>
				<button class="navbar_login__3Ui--"
					onclick="location.href='/user/mypage'">마이 페이지</button>
			</div>
			
			
		</nav>
		<a href="/">
  			<img src="<%=request.getContextPath()%>/resources/Images/book.png" alt="book" class="left-space">
 			<span class="left-space">읽은목록</span>
		</a>

		<a href="/user/interest">
  			<img src="<%=request.getContextPath()%>/resources/Images/heart.png" alt="heart" class="left-space">
  			<span class="left-space">관심목록</span>
		</a>

			<div class="container">
				<div class="row">
					<%
					for (int i = 0; i < 20; i++) {
					%>
					<div class="col-lg-3">
						<div class="card" style="width: 100%">
							<div class="card-body">
								<!-- 스터디-->
								<div class="studyItem_badgeWrapper__3AW7k">
									<div class="badge_badge__ZfNyB">
										<div class="badge_study__39LDm">스터디</div>
									</div>
								</div>
								<!--마감일-->
								<div class="studyItem_schedule__3oAnA">
									<p class="studyItem_scheduleTitle__1KN_9">마감일 |</p>
									<p>2023.04.07</p>
								</div>
								<!--게시글 제목-->

								<h6 class="studyItem_title__2B_2o">제목란</h6>
								<!--분야-->
								<ul class="studyItem_positionList__1jzi_">
									<li class="studyItem_position__2sRRD">IOS/></li>
									<li class="studyItem_position__2sRRD">디자이너</li>
									<li class="studyItem_position__2sRRD">프론트엔드</li>
								</ul>


								<!--기술태그-->
								<ul class="studyItem_content__1mJ9M">
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="spring"
										src="https://holaworld.io/images/languages/spring.svg"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="figma"
										src="https://holaworld.io/images/languages/figma.svg"
										alt="language"></li>
									<li class="studyItem_language__20yqw"><img
										class="studyItem_languageImage__1AfGa" title="javascript"
										src="https://holaworld.io/images/languages/javascript.svg"
										alt="language"></li>
								</ul>

								<!--구분선-->
								<div class="studyItem_border__2zAjs"></div>

								<!-- 메인게시글 하단 -->
								<section class="studyItem_info__OFIQU">
									<!--  user이미지, user 닉네임 -->
									<div class="studyItem_userInfo__1KkGa">
										<div class="avatar_user__1Pgut">
											<img class="avatar_userImg__hogPI" width="30px" height="30px"
												src="/resources/Images/profileLogo.png" alt="avatar">
										</div>
										<div>냠냠</div>
									</div>

									<!--  조회수,댓글 -->
									<div class="studyItem_viewsAndComment__1Bxpj">
										<!--  조회수 -->
										<div class="studyItem_infoItem__3vxSf">
											<svg stroke="currentColor" fill="currentColor"
												stroke-width="0" viewBox="0 0 1024 1024" color="#999999"
												height="24" width="24" xmlns="http://www.w3.org/2000/svg"
												style="color: rgb(153, 153, 153);">
												<path
													d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z"></path></svg>
											<p>173</p>
										</div>

										<!--  댓글 -->
										<div class="studyItem_infoItem__3vxSf">
											<svg stroke="currentColor" fill="currentColor"
												stroke-width="0" viewBox="0 0 512 512" color="#999999"
												height="18" width="18" xmlns="http://www.w3.org/2000/svg"
												style="color: rgb(153, 153, 153);">
												<path
													d="M256 32C114.6 32 0 125.1 0 240c0 47.6 19.9 91.2 52.9 126.3C38 405.7 7 439.1 6.5 439.5c-6.6 7-8.4 17.2-4.6 26S14.4 480 24 480c61.5 0 110-25.7 139.1-46.3C192 442.8 223.2 448 256 448c141.4 0 256-93.1 256-208S397.4 32 256 32zm0 368c-26.7 0-53.1-4.1-78.4-12.1l-22.7-7.2-19.5 13.8c-14.3 10.1-33.9 21.4-57.5 29 7.3-12.1 14.4-25.7 19.9-40.2l10.6-28.1-20.6-21.8C69.7 314.1 48 282.2 48 240c0-88.2 93.3-160 208-160s208 71.8 208 160-93.3 160-208 160z"></path></svg>
											<p>0</p>
										</div>
									</div>
								</section>
							</div>
							<!-- card-body 끝-->
						</div>
						<!--class="card-->
					</div>
					<!-- col-md4 끝-->
					<%
					}
					%>
				</div>
				<!--row 끝-->
				<br>
			</div>
			<!--container 끝-->
		</main>
		<!--  main 끝 -->
	</div>
	<!--  pageNation -->
	<div class='pull-right'>
		<ul class="pagination">
			<c:if test="${pageMaker.prev }">
				<li class="paginate_button previous"><a
					href="${pageMaker.startPage-1 }">Previous</a></li>
			</c:if>

			<c:forEach var="num" begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }">
				<li class="paginate_button ${pageMaker.cri.pageNum==num ? "active":"" } ">
					<a href="${num }">${num }</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next }">
				<li class="paginate_button next"><a
					href="${pageMaker.endPage+1 }">Next</a></li>
			</c:if>
		</ul>
		<form id='actionForm' action="/" method='get'>
			<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
			<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
			<input type='hidden' name='type'
				value='<c:out value="${ pageMaker.cri.type }"/>'> <input
				type='hidden' name='keyword'
				value='<c:out value="${ pageMaker.cri.keyword }"/>'>
		</form>
	</div>

	<!-- 전체 바디 태그 root 끝 -->
