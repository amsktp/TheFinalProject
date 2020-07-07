<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>튜터소개</title>
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/tutor.css">
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
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
			<form action="tutorIntroduceReviseCtr.do" method="post">
				<div id="pageName" style="margin-bottom: 0px;">튜터 소개
				</div>
				<div id="profileImages">
					사진
				</div>
				<div id="profileAll">
					<div>
						이름 : ${member.memberName}<br/>
					</div>
					<div>
						국적 : ${member.memberCountry}<br/>
					</div>
					<div>
						나이 : ${getTutorDtoInfo.age}<br/>
					</div>
					<div>
						평점 : ${getTutorDtoGrade.score}<br/>
					</div>
					<div>
						수업료 : <input class="profileContests" style="width: 170px;" type="text" value="${getTutorDtoInfo.price}" name="price">
						시간/회<br/>
					</div>
					<div>
						URL : <input class="profileContests" type="text" value="${getTutorDtoInfo.youtubeUrl}" name="youtubeUrl"><br/>
					</div>
					<div>
						강의 제목 : <input class="profileContests" type="text" value="${getTutorDtoInfo.studyName}" name="studyName"><br/>
					</div>
				</div>
				
				<div>
					<textarea id="introduceContents"  style="margin-left: 80px;">${getTutorDtoInfo.tutorIntroduce}</textarea>
				</div>
				
					<input type="button" class="Btn" onclick="location.href='/englishvillage/tutorIntroduce.do'" value="뒤로가기">
	
					<button class="Btn">수정완료</button>
					
					<input type="hidden" name="memberNo" value="${member.memberNo}"	>
				
			</form>
		</div>
	</div>


</body>

</html>