<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>   
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Enumeration" %>                

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/interest.css" type="text/css" />
<script>
	var uidkeys = [];
</script>

<title>스터디허브</title>
</head>
<link rel="icon" href="/resources/Images/profileLogo.png">
<body>

	<!-- 헤더 -->
	<%@include file="../includes/header.jsp"%>
	
	<!--  전체 바디 태그 root -->
	<div id="root">
	
		<!--  관심글/읽은글 카테고리  -->
		<section class="desktopFilter_filterWrapper__1gwsT">
			<ul class="Category_categories__3bwPA">
				<li class="Category_categoryItem__1ko8V Category_selectedCategory__1J7es">관심글 목록</li>
				<li class="Category_categoryItem__1ko8V ">읽은글 목록</li>
			</ul>
		</section>
		
		<!-- 관심글  -->
		<div id="interest-list"></div>
		
		<!-- 읽은글 -->
		<div id="read-list"></div>
		
	</div>

	<%@ include file="/WEB-INF/includes/footer.jsp"%>
	
	<script src="../../../resources/js/myLike.js"></script>