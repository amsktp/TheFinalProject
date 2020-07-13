<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>수강내역</title>
<style type="text/css">
</style>

<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('.layoutUl').children().eq(3).addClass('on');

	});
</script>
</head>

<body>
	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">

			<div id="pageName">수강내역</div>

			<table class="table table-hover textCenter tableFont">
				<tr class="success">
					<th class='textCenter'>번호</th>
					<th class='textCenter'>강의제목</th>
					<th class='textCenter'>튜터이름</th>
					<th class='textCenter'>가격</th>
					<th class='textCenter'>수강일</th>


				</tr>
				<c:choose>
<c:when test="${not empty studyList}">
				<c:forEach var="studyDto" items="${studyList}">
					<tr>
						<td><div id="idxVal" class="td_status">${studyDto.idx}</div></td>
						<td class="textLeft"><div class="td_status">
									${studyDto.studyName} 
							</div></td>

						<td><div class="td_status">${studyDto.tutorName}</div></td>


						<td>
							<div class="td_status">${studyDto.price}</div>
						</td>

						<td><div class="td_status">
								<fmt:formatDate value="${studyDto.studyDate}" pattern="yyyy-MM-dd a hh:mm" /> 
							</div></td>
				</c:forEach>
</c:when>
<c:otherwise>
<td colspan="5"><div class="td_status">수강내역이 존재하지 않습니다.</div></td>
</c:otherwise>
</c:choose>

			</table>
			<jsp:include page="/WEB-INF/views/common/paging2.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap" />
			</jsp:include>
			<form action="studyList.do" id="pagingForm" method="get">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.memberPaging.curPage}">
			</form>
		</div>



	</div>

</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>