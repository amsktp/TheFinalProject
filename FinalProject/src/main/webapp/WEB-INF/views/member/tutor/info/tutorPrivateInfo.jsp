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
				<div class="profileTitle" style="font-weight: bold;">
					<div class="profileContents">
						이름
					</div>
					<div class="profileContents">
						Email
					</div>
					<div class="profileContents">
						비밀번호
					</div>
					<br/><br/>
					<div class="profileContents">
						성별
					</div>
					<div class="profileContents">
						생년월일
					</div>
					<div class="profileContents">
						국적
					</div>
				</div>
			<form action="tutorCheckPassword.do">	
				<div class="profileTitle">
					<div class="profileContents">
						${tutorDto.memberName}
					</div>
					<div class="profileContents">
						${tutorDto.memberEmail}
					</div>
					<div class="profileContents">
						********
					</div>
					<br/><br/>
					<div class="profileContents">
						${tutorDto.memberGender}
					</div>
					<div class="profileContents">
						<fmt:formatDate value="${tutorDto.memberBirthDate}"  pattern="yyyy-MM-dd"/>
					</div>
					<div class="profileContents">
						${tutorDto.memberCountry}
					</div>
				</div>
							
				<button class="Btn" style="margin-right: 250px; margin-top: 410px;">수정하기</button>
			</form>
			
		</div>
	</div>
	

</body>

</html>