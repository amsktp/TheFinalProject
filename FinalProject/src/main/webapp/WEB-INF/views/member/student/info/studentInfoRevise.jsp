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
    
    $('input[type=submit]').click(function() {
    	alert("회원정보가 성공적으로 변경되었습니다!");
    	$('form').attr('action', './updateCtr.do');
    })
});


</script>

<style type="text/css">

</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />

	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/common/memberLayout.jsp" />
	

	<div id="myPageBox">
	
		<div id="pageName">회원정보 수정</div>
		
		<form action='' method='post'>
			<div>
				<span>이름: </span>
				<span>
					<input type="text" name='memberName' value="${memberFileDto.memberName}" readonly="readonly">
<%-- 						${memberFileDto.name} --%>
				</span>
			</div>
			<div>
				<span>이메일: </span>
				<span>
					<input type="text" name='memberEmail' value="${memberFileDto.memberEmail}" readonly="readonly">
<%-- 						${memberFileDto.email} --%>
				</span>
			</div>
			<div>
				<span>비밀번호: </span>
				<span>
					<input type="text" name='memberPassword' value="${memberFileDto.memberPassword}">
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
				<c:if test="${memberFileDto.memberGender == 'M'}">
								남자
				</c:if>
				<c:if test="${memberFileDto.memberGender == 'F'}">
								여자
				</c:if>
				</span>
			</div>
			<div>
				<span>생년월일: </span>
				<span>
					<fmt:formatDate value="${memberFileDto.memberBirthDate}" pattern="yyyy-MM-dd"/>
				</span>
			</div>
			
			<input type="hidden" name="memberNo" value="${memberFileDto.memberNo}">
			<input type="hidden" name="memberNo" value="${memberFileDto.memberNo}">
			<input type="hidden" name="memberNo" value="${memberFileDto.memberNo}">
				
			<input class='blackBtn' type='submit' value='변경하기'>
			</form>
				<input class='blackBtn' type='button' value='회원탈퇴' 
					onclick="location.href='/englishvillage/delete.do'">
				<input class='blackBtn' type='button' value='돌아가기' onClick='myInfoMoveFnc();'>
		</div>
	</div>
</body>

</html>