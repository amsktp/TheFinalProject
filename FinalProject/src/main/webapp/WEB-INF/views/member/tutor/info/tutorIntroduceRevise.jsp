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
				<div id="profileAll" style="margin-top: 50px;">
					<div class="profileInfoContents" >
						이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;름 : ${member.memberName}<br/>
					</div>
					<div class="profileInfoContents" >
						국&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;적 : ${member.memberCountry}<br/>
					</div>
					<div class="profileInfoContents" >
						나&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;이 : ${getTutorDtoInfo.age}<br/>
					</div>
					<div class="profileInfoContents" >
						평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;점 : ${getTutorDtoGrade.score}<br/>
					</div>
					<div>
						수 &nbsp;&nbsp;업 &nbsp;료 : 
						<input class="profileInfoContents" 
						style="width: 200px;" type="text" 
						value="${getTutorDtoInfo.price}" name="price">
						시간/회<br/>
					</div>
					<div>
						U &nbsp;&nbsp;&nbsp;R &nbsp;&nbsp;&nbsp;L &nbsp;: 
						<input class="profileInfoContents" style="width: 200px;"
						type="text" value="${getTutorDtoInfo.youtubeUrl}" 
						name="youtubeUrl"><br/>
					</div>
					<div>
						강의&nbsp; 제목 : <input class="profileInfoContents" type="text" 
						style="width: 200px;"
						value="${getTutorDtoInfo.studyName}" name="studyName"><br/>
					</div>
				</div>
				
				<div>
					<textarea id="introduceContents">
						${getTutorDtoInfo.tutorIntroduce}
					</textarea>
				</div>
				
				<input type="button" class="Btn" 
				onclick="location.href='/englishvillage/tutorIntroduce.do'" 
				value="뒤로가기">
	
				<button class="Btn">수정완료</button>
					
				<input type="hidden" name="memberNo" value="${member.memberNo}">
				
			</form>
		</div>
	</div>


</body>

</html>