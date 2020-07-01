<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>나의 문의글</title>
<style type="text/css">
table {
	border-collapse: collapse;
}

table, tr, td, th {
	border: 1px solid black;
}

#qnaReadBox {

width: 1100px;
height: 600px;
border: 1px solid #707070;
}
</style>

<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('.layoutUl').children().eq(3).addClass('on');


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

			<div id="pageName">문의내용</div>

			<div id="qnaReadBox">

<table summary="나의문의하기 답변">
				<caption>나의문의하기 답변</caption>
						<tr>
							<th scope="row">문의번호</th>
							<td><div>${questionBoardDto.idx}</div></td>
							<th scope="row">문의일</th>
							<td><div>${questionBoardDto.boardCreateDate}</div></td>
						</tr>
						<tr>
							<th scope="row">문의 주제</th>
							<td colspan="3">
								<div>${questionBoardDto.title}</div>
							</td>
						</tr>
						<tr>
						<th>내용</th>
						<td colspan="3">
							<div>${questionBoardDto.content}</div>
						</td>
						
				</table>

</div>

<!-- 			<table> -->
<!-- 				<tr> -->
<!-- 					<th class='thCenter'>문의번호</th> -->
<!-- 					<th class='thCenter'>내용</th> -->
<!-- 					<th class='thCenter'>문의일</th> -->
<!-- 					<th class='thCenter'>답변상태</th> -->


<!-- 				</tr> -->

<%-- 				<c:forEach var="questionDto" items="${qusetionList}"> --%>
<!-- 					<tr> -->
<%-- 						<td><div class="td_status">${questionDto.idx}</div></td> --%>
<!-- 						<td><div class="td_status"> -->
<!-- 								<a href="#" onclick="listOnePageFnc(this, event);" -->
<%-- 									style="color: black;"> ${questionDto.title} </a> --%>
<!-- 							</div></td> -->


<!-- 						<td><div class="td_status"> -->
<%-- 								<fmt:formatDate value="${questionDto.boardCreateDate}" --%>
<%-- 									pattern="yyyy-MM-dd" /> --%>
<!-- 							</div></td> -->

<!-- 						<td> -->
<!-- 							<div class="td_status"> -->
<%-- 								<c:if test="${questionDto.answerStatus == 'Y'}"> --%>
<!-- 									답변완료 -->
<%-- 								</c:if> --%>
<%-- 								<c:if test="${questionDto.answerStatus == 'N'}"> --%>
<!-- 									답변대기중 -->
<%-- 								</c:if> --%>
<!-- 							</div> -->
<!-- 						</td> -->
<!-- 					</tr> -->
<%-- 				</c:forEach> --%>

<!-- 			</table> -->

		</div>
	</div>

</body>

</html>