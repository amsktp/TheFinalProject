<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원정보 수정</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
    $('.layoutUl').children().eq(1).addClass('on');
});


</script>

<style type="text/css">

</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/Header3.jsp" />
	
	<div id="pageSize">
	<jsp:include page="/WEB-INF/views/memberLayout.jsp" />
	

	<div id="myPageBox">
	
	<div id="pageName">회원정보 수정</div>
	<form action='./updateCtr.do' method='post'>
				<div><span>이름</span><span><input type="text" name='name' value="${member.memberName}" readonly="readonly"></span></div>
				<div><span>이메일</span><span><input type="text" name='email' value="${member.memberEmail}" readonly="readonly"></span></div>
				<div><span>비밀번호</span><span><input type="text" name='password' value="${member.memberPassword}"></span></div>
				<div><span>비밀번호 확인</span><span><input type="text" name='passwordCheck' value=""></span></div>
				<div><span>성별</span><span><input type="text" name='gender' value="${member.memberGender}" readonly="readonly"></span></div>
				<div><span>생년월일</span><span><fmt:formatDate value="${member.memberBirthDate}" pattern="yyyy-MM-dd"/></span></div>
				<div><span>국적</span><span><input type="text" name='country' value="${member.memberCountry}" readonly="readonly"></span></div>
				
			<input class='blackBtn' type='submit' value='수정하기'>
			<input class='blackBtn' type='button' value='회원탈퇴' 
				onclick='pageMoveDeleteFnc(${member.memberNo});'>
			<input class='blackBtn' type='button' value='돌아가기' onClick='myInfoMoveFnc();'>
			</form>
			
	</div>
	
	</div>
</body>

</html>