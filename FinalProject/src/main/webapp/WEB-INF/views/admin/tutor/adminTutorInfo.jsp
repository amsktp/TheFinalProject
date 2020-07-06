<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 상세조회</title>

<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">
	window.onload = function() {
		var toDay = new Date();
		var birthDay = $('#subAge').val().substring(24, 28);
		
		var age = (toDay.getFullYear()) - birthDay;
		$('#age').val(age);
	
	}
	
	function pageMoveListFnc(){

		
		var noObj = $('#no');
		var keywordObj = $('#keyword');
		var searchOptionObj = $('#searchOption');
		

		
		var url = '';
		
		url += './tutorlist.do?';
		url += 'no=' + noObj.val();
		url += '&keyword=' + keywordObj.val();
		url += ''
		url += '&searchOption=' + searchOptionObj.val();
		
		location.href = url;

	}
	
	
	

</script>

</head>

<body>
<!-- 337 3번 문제 MemberUpdateServlet 화면출력 위임 -->
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
	<h1>회원정보 상세조회</h1>
	
	<div>
		<form action='./tutorUpdate.do' method='get' style="margin-top: 200px;">
			번호: ${memberListDto.no}<br>
			이메일: ${memberListDto.email}<br>
			비밀번호: ${memberListDto.password}<br>
			성별: ${memberListDto.gender}<br>
			생년월일: <fmt:formatDate value="${memberListDto.birthDate}" pattern="yyyy-MM-dd"/><br>
	<%-- 		언어: ${memberListDto.password}<br> --%>
			국적: ${memberListDto.country}<br>
	<%-- 		시간대: ${memberListDto.password}<br> --%>
			
			<div>
				<input type="hidden" id='no' name="no" value="${memberListDto.no}">
				<input type="hidden" id='searchOption' name="searchOption" value="${searchOption}">
				<input type="hidden" id='keyword' name="keyword" value="${keyword}">
			</div>
	
			<div>
				<input type='submit' value='수정하기 페이지'>
				<input type='button' value='이전 페이지' onClick='pageMoveListFnc();'>	
			</div>
		</form>
	</div>
	
	
	
	<div>
		<form action='./tutorProUpdate.do' method='get' style="margin-top: 200px;">
			이름: ${memberListDto.name}<br>
			국적: ${memberListDto.country}<br>
			나이: <input type="text" value="" id='age'><br>
			<input type="hidden" value="${memberListDto.birthDate}" id='subAge'>
			평점: ${memberListDto.score}<br>
			수업료: ${memberListDto.price}<br>
	<%-- 		언어: ${memberListDto.password}<br> --%>
			URL: ${memberListDto.url}<br>
	<%-- 		시간대: ${memberListDto.password}<br> --%>
			
			<div>
				<input type="hidden" id='no' name="no" value="${memberListDto.no}">
				<input type="hidden" id='searchOption' name="searchOption" value="${searchOption}">
				<input type="hidden" id='keyword' name="keyword" value="${keyword}">
			</div>
	
			<div>
				<input type='submit' value='수정하기 페이지'>
				<input type='button' value='이전 페이지' onClick='pageMoveListFnc();'>	
			</div>
		</form>
	</div>
	
	
	
<%-- 	<jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>
</body>
</html>