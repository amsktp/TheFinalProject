<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>내 정보</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
    $('.layoutUl').children().eq(1).addClass('on');
    $('td>input').css('border', 'none')
	$('td>input:hover').css('border', 'none')
// #gnb에 자식 요소(li)가 몇번째인지를 확인한 후 on이라는 클래스 추가

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
	
	<div id="pageName">내 정보</div>
	<table id="tableObj">
				<tr>
					<td>이름</td><td>${member.memberName}</td>
				</tr>
				<tr>
					<td>이메일</td><td>${member.memberEmail}</td>
				</tr>
				<tr>
					<td>비밀번호</td><td><input type="password" value="${member.memberPassword}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>성별</td><td>${member.memberGender}</td>
				</tr>
				<tr>
					<td>생년월일</td><td>${member.memberBirthDate}</td>
				</tr>
				<tr>
					<td>국적</td><td>${member.memberCountry}</td>
				</tr>
				
			</table>
			<input type='button' value='수정하기' onClick='memberCheckMoveFnc();'>
	</div>
		
	
	
	</div>
</body>

</html>