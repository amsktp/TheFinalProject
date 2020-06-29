<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 목록</title>

<style type="text/css">
	table {
		border-collapse: collapse;
	}
	
	table, tr, td, th {
		border: 1px solid black;
	}
</style>

<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">
	function listOnePageFnc(obj, event) {
		var aTagObj = $(obj);
// 		alert(event.target.nodeName);
		
		event.preventDefault();
// 		return;
		
// 		aTagObj.preventDefault();
		
		var memberNoObj = '';
// 		var curPageObj = $('#curPage');
		var keywordObj = $('#keyword');
		var searchOptionObj = $('#searchOption');
		
// 		alert(aTagObj.parent().parent().children('td').length);
		
// 		alert(aTagObj.parent().parent().children('td').eq(0).html());
		
		// 회원이름 클릭시 자신의 회원번호 td태그(eq()를 잘 기억해두자)
		memberNoObj = aTagObj.parent().parent().children('td').eq(0);
		
		var url = '';
		
		url += './studentlistOne.do?';
		url += 'no=' + memberNoObj.html();
// 		url += '&curPage=' + curPageObj.val();
		url += '&keyword=' + keywordObj.val();
		url += '&searchOption=' + searchOptionObj.val();
		
// 		alert(url);
		
		location.href = url;

		return false;
	}
</script>

</head>

<body>
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	

	<form id='searchingForm' action="./studentlist.do" method="post">
	
		<select id='searchOption' name="searchOption" style="margin-top: 200px">
			<c:choose>
				<c:when test="${searchMap.searchOption eq 'all' }">
					<option value="all" selected="selected">이름+이메일</option>
					<option value="name">이름</option>
					<option value="email">이메일</option>
				</c:when>
				
				<c:when test="${searchMap.searchOption eq 'name'}">
					<option value="all">이름+이메일</option>
					<option value="name" selected="selected">이름</option>
					<option value="email">이메일</option>
				</c:when>
				
				<c:when test="${searchMap.searchOption eq 'email'}">
					<option value="all">이름+이메일</option>
					<option value="name">이름</option>
					<option value="email" selected="selected">이메일</option>
				</c:when>

			</c:choose>	
		</select>
<!-- 		<input type="hidden" id="curPage" name="curPage"  -->
<%--             value="${pagingMap.memberPaging.curPage}"> --%>
		<input type="text" id='keyword' name="keyword" value="${searchMap.keyword}"
			 placeholder="회원이름 or 이메일 검색">
		<input type="submit" value="검색">
		
	</form>

	<table>
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>국가</th>
			<th>이메일</th>
			<th>등급</th>
			<th>생성일</th>
			<th>포인트</th>
			
		</tr>
	
		<c:if test="${empty memberList}">
			<tr>
				<td colspan="6">검색된 결과가 없습니다</td>
			</tr>
		</c:if>	
	
	<c:forEach var="memberDto" items="${memberList}">
		<tr>
			<td>${memberDto.no}</td>
			<td>

				<a href="#" onclick="listOnePageFnc(this, event);" style="color: black;">
					${memberDto.name}
				</a>
			</td>
			<td>${memberDto.country}</td>
			
			<td>${memberDto.email}</td>
			
			<td>${memberDto.grade}</td>
			
			<td>
				<fmt:formatDate value="${memberDto.createdDate}" pattern="yyyy-MM-dd"/> 
			</td>
			<td>${memberDto.point}</td>

<%-- 			<c:if test="${empty memberDto.originalFileName}" var="fileFlag"> --%>
<!-- 				<td>첨부파일 없음</td> -->
<%-- 			</c:if> --%>
<%-- 			<c:if test="${fileFlag eq false}"> --%>
<%-- 				<td>${memberDto.originalFileName}</td> --%>
<%-- 			</c:if> --%>
			
<!-- 			<td> -->
<%-- 				<a href='./deleteCtr.do?no=${memberDto.no}'>[삭제]</a><br> --%>
<!-- 			</td> -->
		</tr>
	</c:forEach>
	
	</table>

	<jsp:include page="/WEB-INF/views/common/paging.jsp">
		<jsp:param value="${pagingMap}" name="pagingMap"/>
	</jsp:include>
		
    <form action="/englishvillage/admin/studentlist.do" id="pagingForm" method="get">
       <input type="hidden" id="curPage" name="curPage" 
            value="${pagingMap.memberPaging.curPage}">
       <input type="hidden" name="searchOption" value="${searchMap.searchOption}">
       <input type="hidden" name="keyword" value="${searchMap.keyword}">
    </form>
	
<%-- 	<jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>
</body>
</html>