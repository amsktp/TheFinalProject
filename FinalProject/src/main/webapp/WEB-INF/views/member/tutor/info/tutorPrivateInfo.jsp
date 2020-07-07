<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>튜터 정보 수정</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(2).addClass('on');
});
</script>
</head>

<body>

<jsp:include page="/WEB-INF/views/tutorHeader.jsp" />
	
	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/tutorLayout.jsp" />
	
		<div id="myPageBox">
			<div id="pageName" style="margin-bottom: 0px;">내정보
			</div>
				<div class="profileTitle">
					<div class="profileContests">
						이름
					</div>
					<div class="profileContests">
						Email
					</div>
					<div class="profileContests">
						비밀번호
					</div>
					<br/><br/>
					<div class="profileContests">
						성별
					</div>
					<div class="profileContests">
						생년월일
					</div>
					<div class="profileContests">
						국적
					</div>
				</div>
			<form action="tutorCheckPassword.do">	
				<div class="profileTitle">
					<div class="profileContests">
						${tutorDto.memberName}
					</div>
					<div class="profileContests">
						${tutorDto.memberEmail}
					</div>
					<div class="profileContests">
						********
					</div>
					<br/><br/>
					<div class="profileContests">
						${tutorDto.memberGender}
					</div>
					<div class="profileContests">
						<fmt:formatDate value="${tutorDto.memberBirthDate}"  pattern="yyyy-MM-dd"/>
					</div>
					<div class="profileContests">
						${tutorDto.memberCountry}
					</div>
				</div>
							
				<button class="Btn" style="margin-right: 250px; margin-top: 410px;">수정하기</button>
			</form>
			
		</div>
	</div>
	

</body>

</html>