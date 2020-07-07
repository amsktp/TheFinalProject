<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원탈퇴</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(2).addClass('on');
});
function deleteFnc() {
	alert('그동안 이용해주셔서 감사드립니다.');
}
</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/tutorHeader.jsp" />
	
	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/tutorLayout.jsp" />
	
		<div id="myPageBox">
			<div id="pageName" style="margin-bottom: 40px;">본인인증
			</div>
			<form action="tutorWithdrawCtr.do" method="post">
				<div id="deleteBox">
					<div id="pwdWrite"><br/>회원탈퇴 시 보유 포인트가 사라집니다.<br/>동의 하시면 회원탈퇴 버튼을 눌러주세요</div><br/>
					<div id="deletePoint">보유 포인트</div>
					<div id="myPoint"><br/>${tutorDto.memberPoint}포인트</div><br/>
				
					<input type="button" onclick="location.href='tutorPrivateInfo.do'" class="deleteBtn" value="뒤로가기" />
					<button id="deleteBtn" onclick="deleteFnc();" class="deleteBtn" >회원탈퇴</button>
				</div>
					
			</form>
		</div>
	</div>

</body>

</html>