<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<div>
				<span>이름: </span>
				<span>
					<input type="text" name='name' value="${memberFileDto.name}" readonly="readonly">
<%-- 						${memberFileDto.name} --%>
				</span>
			</div>
			<div>
				<span>이메일: </span>
				<span>
					<input type="text" name='email' value="${memberFileDto.email}" readonly="readonly">
<%-- 						${memberFileDto.email} --%>
				</span>
			</div>
			<div>
				<span>비밀번호: </span>
				<span>
					<input type="text" name='password' value="${memberFileDto.password}">
				</span>
			</div>
<!-- 			<div> -->
<!-- 				<span>비밀번호 확인: </span> -->
<!-- 				<span> -->
<!-- 					<input type="text" name='passwordCheck' value=""> -->
<!-- 				</span> -->
<!-- 			</div> -->
			<div>
				<span>성별: </span>
				<span>
				<c:if test="${memberFileDto.gender == 'M'}">
								남자
				</c:if>
				<c:if test="${memberFileDto.gender == 'F'}">
								여자
				</c:if>
				</span>
			</div>
			<div>
				<span>생년월일: </span>
				<span>
					<fmt:formatDate value="${memberFileDto.birthDate}" pattern="yyyy-MM-dd"/>
				</span>
			</div>
				
			<input class='blackBtn' type='submit' value='수정하기'>
				<input class='blackBtn' type='button' value='회원탈퇴' 
					onclick='pageMoveDeleteFnc(${memberFileDto.no});'>
				<input class='blackBtn' type='button' value='돌아가기' onClick='myInfoMoveFnc();'>
			</form>
		</div>
	</div>
</body>

</html>