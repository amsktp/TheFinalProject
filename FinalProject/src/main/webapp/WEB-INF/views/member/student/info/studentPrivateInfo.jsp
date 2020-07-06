<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>내 정보</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
    $('.layoutUl').children().eq(2).addClass('on');
    $('td>input').css('border', 'none')
	$('td>input:hover').css('border', 'none')
// #gnb에 자식 요소(li)가 몇번째인지를 확인한 후 on이라는 클래스 추가

});
</script>

<style type="text/css">

</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />

	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
	

	<div id="myPageBox">
	
	<div id="pageName">내 정보</div>
	
		<div><span>이름: </span><span>${memberFileDto.memberName}</span></div>
		<div><span>이메일: </span><span>${memberFileDto.memberEmail}</span></div>
		<div><span>비밀번호: </span><span>${memberFileDto.memberPassword}</span></div>
		<div>
			<span>성별: </span>
			<span>
				<c:if test="${memberFileDto.memberGender == 'M'}">
								남자
				</c:if>
				<c:if test="${memberFileDto.memberGender == 'F'}">
								여자
				</c:if>
			</span>
		</div>
		<div><span>생년월일: </span><span><fmt:formatDate value="${memberFileDto.memberBirthDate}" pattern="yyyy-MM-dd"/></span></div>
		<div><span>국적: </span><span>${memberFileDto.memberCountry}</span></div>
		<input type="button" value="수정하기" onClick="location.href='/englishvillage/studentCheck.do'">

	</div>
		
	
	
	</div>
</body>

</html>