<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 상세조회</title>

<script type="text/javascript" src="/springHome/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">
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
	
	<form action='./update.do' method='get' style="margin-top: 200px;">
		이름: ${memberListDto.name}<br>
		국적: ${memberListDto.country}<br>
		나이: ${memberListDto.birthDate}<br>
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
	
<%-- 	<jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>
</body>
</html>