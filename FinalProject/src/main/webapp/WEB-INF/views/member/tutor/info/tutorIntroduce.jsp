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
			<div id="profileAll" style="margin-top: 50px; border-style: none;">
				<div class="profileInfoContents">
					이름 : ${tutorDto.memberName}
				</div>
				<div class="profileInfoContents">
					국적 : ${tutorDto.memberCountry}
				</div>
				<div class="profileInfoContents">
					나이 : ${tutorDto.age}
				</div>
				<div class="profileInfoContents">
					평점 : ${tutorDtoGrade.score}
				</div>
				<div class="profileInfoContents">
					수업료 : ${tutorDto.price}
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					시간/회
				</div>
				<div class="profileInfoContents">
					URL : ${tutorDto.youtubeUrl}
				</div>
				<div class="profileInfoContents">
					강의 제목 : ${tutorDto.studyName}
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