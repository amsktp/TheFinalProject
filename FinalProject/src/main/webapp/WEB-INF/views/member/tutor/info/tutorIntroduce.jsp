<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>튜터소개수정</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(2).addClass('on');
});
</script>
</head>

<body>

	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">

			<div id="pageName">튜터소개</div>
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
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					시간/회<br/>
				</div>
				<div class="profileContests">
					URL : ${tutorDto.youtubeUrl}<br/>
				</div>
				<div class="profileContests">
					강의 제목 : ${tutorDto.studyName}<br/>
				</div>
				
			</div>
			<div style="margin-top: 300px;">
				<textarea id="introduceContents" disabled="disabled" style="margin-left: 80px;">${tutorDto.tutorIntroduce}</textarea>
			</div>
			<form action="tutorMainPage.do">
				<button class="Btn">뒤로가기</button>
			</form>
			<form action="tutorIntroduceRevise.do">
				<button class="Btn">수정하기</button>
			</form>
			
		</div>
	</div>


</body>

</html>