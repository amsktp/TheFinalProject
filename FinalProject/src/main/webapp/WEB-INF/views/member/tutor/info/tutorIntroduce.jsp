<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>튜터소개</title>
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/tutor.css">
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(1).addClass('on');
});
</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/tutorHeader.jsp" />
	
	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/tutorLayout.jsp" />
	
		<div id="myPageBox">
			<div id="pageName" style="margin-bottom: 0px;">튜터 소개
			</div>
			<div id="profileImages">
				사진
			</div>
			<div id="profileAll">
				<div class="profileContests">
				이름 : ${tutorDto.memberName}<br/>
				</div>
				<div class="profileContests">
				국적 : ${tutorDto.memberCountry}<br/>
				</div>
				<div class="profileContests">
				나이 : ${tutorDto.age}<br/>
				</div>
				<div class="profileContests">
				평점 : ${tutorDtoGrade.score}<br/>
				</div>
				<div class="profileContests">
				수업료 : ${tutorDto.price}
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				시간/회<br/>
				</div>
				<div class="profileContests">
				URL : ${tutorDto.youtubeUrl}<br/>
				</div>
			</div>
			<div id="introduceContents">
				기본적인 소개글을 작성해주세요
			</div>
			<button class="Btn">뒤로가기</button>
			<button class="Btn">수정하기</button>
			
		</div>
	</div>


</body>

</html>