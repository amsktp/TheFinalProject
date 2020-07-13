<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>문의 내역</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(5).addClass('on');
});
</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />
	
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px; margin-bottom: 100px;">
			<div id="pageName">
					문의 내역
			</div>
			<table>
				<tr>
					<th style="width: 400px;">제목</th>
					<th>작성자</th>
					<th>질문한 날짜</th>
					<th style="border-right: 1px solid white;">답변상태</th>
				</tr>
				<c:choose>
					<c:when test="${empty tutorBoardList}">
						<tr>
							<td colspan="6" style="text-align: center;">
								등록된 게시글이 없습니다.
							</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="tutorBoard" items="${tutorBoardList}">
							<tr>
								<td>
									<a href='#' onclick="listOnePageFnc(this, event);">
										${tutorBoard.title}
									</a>
								</td>
								<td>
									${tutorBoard.name}
								</td>
								<td>
									<fmt:formatDate value="${tutorBoard.boardCreateDate}" 
									pattern="yyyy-MM-dd"/>
								</td>
								<td>
									<c:choose>
										<c:when test="${tutorBoard.answerStatus == 'N'}">
											답변대기중
										</c:when>
										<c:when test="${tutorBoard.answerStatus == 'Y'}">
											답변완료
										</c:when>
									</c:choose>
								</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
		<jsp:include page="/WEB-INF/views/common/paging3.jsp">
			<jsp:param value="${pagingMap}" name="pagingMap"/>
		</jsp:include>
	</div>
	

</body>

</html>