<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>튜터 정보 수정2</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(2).addClass('on');
    
    
    
    
    $('#modifyPassword').submit(function() {
    	
//     	alert($('#pwdRevise').val());
//     	alert($('#pwdReviseCheck').val());
    	
    	
    	if($('#pwdRevise').val() == $('#pwdReviseCheck').val()) {
    		    		
    	}else{
    		alert('비밀번호와 비밀번호 확인이 일치하지않습니다');
    		return false;
    	}
    });
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
					<div class="profileContests">
						비밀번호확인
					</div>
					<br/>
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
			<form id="modifyPassword" action="tutorPrivateInfoCtr.do" method="post">	
				<div class="profileTitle">
					<div class="profileContests">
						<input type="text" disabled="disabled" value="${tutorDto.memberName}">
					</div>
					<div class="profileContests">
						<input type="text" disabled="disabled" value="${tutorDto.memberEmail}">
						
					</div>
					<div class="profileContests">
						<input id="pwdRevise" type="password" value="" name="memberPassword">
					</div>
					<div class="profileContests">
						<input id="pwdReviseCheck" type="password" value="">
					</div>
					<br/>
					<div class="profileContests">
						<input type="text" disabled="disabled" value="${tutorDto.memberGender}">
					</div>
					<div class="profileContests">
						<input type="text" disabled="disabled" value="<fmt:formatDate value="${tutorDto.memberBirthDate}"  pattern="yyyy-MM-dd"/>">
					</div>
					<div class="profileContests">
						<input type="text" disabled="disabled" value="${tutorDto.memberCountry}">
						
					</div>
					<input type="hidden" name="memberNo" value="${member.memberNo}"	>
				</div>
							
				<button class="Btn" style="margin-right: 150px; margin-top: 290px;">수정하기</button>
			</form>
				<button class="Btn" onclick="location.href='tutorWithdraw.do'" style="margin-right: 150px;">회원탈퇴</button>
				<button class="Btn" onclick="location.href='tutorPrivateInfo.do'" style="margin-right: 150px;">뒤로가기</button>
			
		</div>
	</div>

	

</body>

</html>