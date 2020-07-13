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
	
	#qnaTable {
		width: 1400px;
		font-size: 20px;
		text-overflow:ellipsis; 
		overflow:hidden;

	}
	
	#allDiv {
		font-weight: bold;
	}
</style>
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/bootstrap.css?ver=1.2">
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">
	
	$(document).ready(function() {
		
		$('.layoutUl').children().eq(2).addClass('on');
	});
	function listOnePageFnc(obj, event) {
		var aTagObj = $(obj);

		
		event.preventDefault();

		
		var memberNoObj = '';

		var keywordObj = $('#keyword');
		var searchOptionObj = $('#searchOption');

		
		// 회원이름 클릭시 자신의 회원번호 td태그(eq()를 잘 기억해두자)
		memberNoObj = aTagObj.parent().parent().children('td').eq(0);
		
		var url = '';
		
		url += './questionListOne.do?';
		url += 'no=' + memberNoObj.html();
// 		url += '&curPage=' + curPageObj.val();
		url += '&keyword=' + keywordObj.val();
		url += '&searchOption=' + searchOptionObj.val();
		
		
		location.href = url;

		return false;
	}
</script>

</head>

<body>
	<div id="allDiv">
		<div id="menuDiv" style="float: left; margin-top: 200px; margin-right: 200px;">
				<div style="margin-bottom: 70px; font-size: 50px; font-weight: bold;">
					<span>문의 게시판</span>
				</div>
				<jsp:include page="/WEB-INF/views/common/adminLayoutEx.jsp" />
			</div>
		<div id='qnaTable' style="margin-top: 200px; float: left;" >
		<form id='searchingForm' action="./questionListOne.do" method="post">
		
			<select id='searchOption' name="searchOption">
				<c:choose>
					<c:when test="${searchMap.searchOption eq 'all' }">
						<option value="all" selected="selected">제목+내용</option>
						<option value="title">제목</option>
						<option value="context">내용</option>
					</c:when>
					
					<c:when test="${searchMap.searchOption eq 'name'}">
						<option value="all">제목+내용</option>
						<option value="title" selected="selected">제목</option>
						<option value="context">내용</option>
					</c:when>
					
					<c:when test="${searchMap.searchOption eq 'email'}">
						<option value="all">제목+내용</option>
						<option value="title">제목</option>
						<option value="context" selected="selected">내용</option>
					</c:when>
	
				</c:choose>	
			</select>
	<!-- 		<input type="hidden" id="curPage" name="curPage"  -->
	<%--             value="${pagingMap.memberPaging.curPage}"> --%>
			<input type="text" id='keyword' name="keyword" value="${searchMap.keyword}"
				 placeholder="회원이름 or 이메일 검색">
			<input type="submit" value="검색">
			
		</form>
	
		<table class="table table-hover" >
			<tr class="success">
				<th>글번호</th>
				<th>글제목</th>
				<th>등급</th>
				<th>문의 등록일</th>
				<th>답변 상태 확인</th>
			
				
			</tr>
		
			<c:if test="${empty qusetionList}">
				<tr>
					<td colspan="7">검색된 결과가 없습니다</td>
				</tr>
			</c:if>	
		
		<c:forEach var="questionDto" items="${qusetionList}">
			<tr>
				<td>${questionDto.idx}</td>
				<td>
	
					<a href="#" onclick="listOnePageFnc(this, event);" style="color: black;">
						${questionDto.title}
					</a>
				</td>
				<td>
				<c:choose>
					<c:when test="${questionDto.grade eq 'Y'}">
						<c:out value="강 사"></c:out>
					</c:when>
					<c:when test="${questionDto.grade eq 'N'}">
						<c:out value="학 생"></c:out>
					</c:when>
				</c:choose>
				</td>
				
				<td>
					<fmt:formatDate value="${questionDto.boardModDate}" pattern="yyyy-MM-dd"/> 
				</td>
				
				<td>
				<c:choose>
					<c:when test="${questionDto.answerStatus eq 'Y'}">
						<c:out value="확인 완료"></c:out>
					</c:when>
					<c:when test="${questionDto.answerStatus eq 'N'}">
						<c:out value="확인중"></c:out>
					</c:when>
				</c:choose>
				</td>
				
			</tr>
		</c:forEach>
		
		</table>
	
		<jsp:include page="/WEB-INF/views/common/paging2.jsp">
			<jsp:param value="${pagingMap}" name="pagingMap"/>
		</jsp:include>
			
	    <form action="/englishvillage/admin/questionlist.do" id="pagingForm" method="get">
	       <input type="hidden" id="curPage" name="curPage" 
	            value="${pagingMap.memberPaging.curPage}">
	       <input type="hidden" name="searchOption" value="${searchMap.searchOption}">
	       <input type="hidden" name="keyword" value="${searchMap.keyword}">
	    </form>
		</div>
	</div>
<%-- 	<jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>
</body>
</html>