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
    $('.layoutUl').children().eq(4).addClass('on');
});
</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />
	
	<div id="pageSize">
<%-- 		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" /> --%>
	
		<div id="">
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>질문한 내용</th>
					<th>답변상태</th>
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
						<c:forEach var="tutorDto" items="${tutorBoardList}">
							<tr>
								<td>
									${member.memberNo}
								</td>
								<td>
									<a href='#' onclick="listOnePageFnc(this, event);">
										${tutorDto.memberName}
									</a>
								</td>
								<td>
									${tutorDto.memberEmail}
								</td>
								<td>
									<fmt:formatDate value="${tutorDto.memberCreateDate}" 
										pattern="yyyy년MM월dd일 hh시mm분"/>
								</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			
			</table>

		</div>
	</div>

	

</body>

</html>