<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원 문의내역</title>
<style type="text/css">
	table {
		border-collapse: collapse;
	}
	
	table, tr, td, th {
		border: 1px solid black;
	}
</style>

<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
	
	
<script type="text/javascript">

$(document).ready(function(){
    $('.layoutUl').children().eq(3).addClass('on');

// #gnb에 자식 요소(li)가 몇번째인지를 확인한 후 on이라는 클래스 추가

});
</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/Header3.jsp" />
	
	<div id="pageSize">
	<jsp:include page="/WEB-INF/views/memberLayout.jsp" />
	

	<div id="myPageBox">
	
	<h1 class="infoFont">문의내역</h1>
	</div>
	
		<table>
		<tr>
			<th>글번호</th>
			<th>회원번호</th>
			<th>글제목</th>
			<th>답변상태</th>
			<th>등급</th>
			<th>문의 등록일</th>
		
			
		</tr>
	
	<c:forEach var="questionDto" items="${qusetionList}">
		<tr>
			<td>${questionDto.idx}</td>
			<td>${questionDto.no}</td>
			<td>

				<a href="#" onclick="listOnePageFnc(this, event);" style="color: black;">
					${questionDto.title}
				</a>
			</td>
			
			
			<td>${questionDto.content}</td>
			
			<td>${questionDto.grade}</td>
			
			<td>
				<fmt:formatDate value="${questionDto.boardModDate}" pattern="yyyy-MM-dd"/> 
			</td>

		</tr>
	</c:forEach>
	
	</table>
	
	</div>

</body>

</html>