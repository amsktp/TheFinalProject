<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel= "stylesheet" type="text/css" href="/springHome/resources/css/sub.css?ver=1.1">
<script type="text/javascript"
	src="/springHome/resources/js/jquery-3.5.1.js"></script>

<div id="header">
	<div id="topHeader">
		<c:if test="${member.email ne null}">
			<ul id="topHeaderUl">
				
				<li><a href="./home.do"><strong>${member.name} 회원님 환영합니다.</strong></a></li>
				<li><a href=""><strong>보유포인트 5,000점</strong></a></li>
				<li><a href="<%=request.getContextPath()%>/logout.do"><strong>로그아웃</strong></a></li>
			</ul>
		</c:if>
	</div>

	<div class="bottomHeader">

		<span class="logo" onclick="location.href='/springHome'">English Village</span>
		<p class="logoRight">24시간 1:1 화상 스터디</p>

		<div id="overLine">
			<ul class="headUl">
				<li>튜터목록</li>
				<li>튜터등록</li>
				<li>수강권</li>
			</ul>

			<input id="myPage" type="button" value="마이 페이지">
		</div>

	</div>

</div>


