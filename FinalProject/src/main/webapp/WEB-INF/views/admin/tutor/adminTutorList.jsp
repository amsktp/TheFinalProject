<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 목록</title>

<style type="text/css">
	
	#allDiv {
		width: 1600px;
	    position: absolute; 
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
	}
	
	th { 
		text-align: center; 
	}


	table {
		border-collapse: collapse;
	}
	
	table, tr, td, th {
		border: 1px solid black;
	}
	
	#tutorTable {
		width: 1000px;
		font-size: 20px;
	}
	
	#allDiv {
		box-sizing: border-box;
	}
</style>
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/bootstrap.css?ver=1.2">
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		
		$('.layoutUl').children().eq(1).addClass('on');
	});
	
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
		
		
		url += './tutorListOne.do?';
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
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />
	<div id="allDiv">
	
		<div id="menuDiv" style="float: left; margin-top: 200px; margin-right: 200px;">
			<div style="margin-bottom: 70px; font-size: 50px; font-weight: bold;">
				<span>회원 관리(강사)</span>
			</div>
			<jsp:include page="/WEB-INF/views/common/adminLayoutEx.jsp" />
		</div>
			
		<div id='tutorTable' style="margin-top: 200px; float: left;" >
		<form id='searchingForm' action="./tutorList.do" method="post">
		
			<select id='searchOption' name="searchOption">
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
			<input type="text" id='keyword' name="keyword" value="${searchMap.keyword}"
				 placeholder="회원이름 or 이메일 검색">
			<input type="submit" value="검색">
			
		</form>
	
		<table class="table table-hover">
			<tr class="success">
				<th style="text-align: center; font-weight: bold;">회원번호</th>
				<th style="text-align: center; font-weight: bold;">이름</th>
				<th style="text-align: center; font-weight: bold;">국가</th>
				<th style="text-align: center; font-weight: bold;">이메일</th>
				<th style="text-align: center; font-weight: bold;">등급</th>
				<th style="text-align: center; font-weight: bold;">생성일</th>
				<th style="text-align: center; font-weight: bold;">포인트</th>
				 
			</tr>
		
		<c:if test="${empty memberList}">
				<tr>
					<td colspan="7">검색된 결과가 없습니다</td>
				</tr>
			</c:if>	
		
		<c:forEach var="memberDto" items="${memberList}">
			<tr>
				<td style="text-align: center;">${memberDto.no}</td>
				<td>
	
					<a href="#" onclick="listOnePageFnc(this, event);" style="color: black;">
						${memberDto.member_name}
					</a>
				</td>
				<td>${memberDto.country}</td>
				
				<td>${memberDto.member_email}</td>
				
				<c:if test="${memberDto.grade eq 'Y'}">
					<td><c:out value="강사"></c:out></td>
				</c:if>
				
				<td>
					<fmt:formatDate value="${memberDto.createdDate}" pattern="yyyy-MM-dd"/> 
				</td>
				<td style="text-align: right;" id='point'>
				<fmt:formatNumber value="${memberDto.point}" pattern="#,###"/></td>
			</tr>
		</c:forEach>
		
		</table>
	
		<jsp:include page="/WEB-INF/views/common/paging2.jsp">
			<jsp:param value="${pagingMap}" name="pagingMap"/>
		</jsp:include>
			
	    <form action="/englishvillage/admin/tutorList.do" id="pagingForm" method="get">
	       <input type="hidden" id="curPage" name="curPage" 
	            value="${pagingMap.memberPaging.curPage}">
	       <input type="hidden" name="searchOption" value="${searchMap.searchOption}">
	       <input id="hiddenKeyword" type="hidden" name="keyword" value="${searchMap.keyword}">
	    </form>
		</div>
	</div>
<%-- 	<jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>
</body>
</html>