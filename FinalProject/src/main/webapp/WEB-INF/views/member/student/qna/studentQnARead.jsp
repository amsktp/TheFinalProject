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
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />

	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/common/memberLayout.jsp" />


		<div id="myPageBox">

			<div id="pageName">문의내용</div>

			<div id="qnaReadBox">

				<table summary="나의문의하기 답변">
					<caption>나의문의하기 답변</caption>

					<tr>
						<th scope="row">문의번호</th>
						<td><div>${questionBoardDto.idx}</div></td>
						<th scope="row">문의일</th>
						<td><div>
								<fmt:formatDate value="${questionBoardDto.boardCreateDate}"
									pattern="yyyy-MM-dd a hh:mm:ss" />
							</div></td>
					</tr>

					<tr>
						<th scope="row">제목</th>
						<td colspan="3">
							<div>${questionBoardDto.title}</div>

						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<div>${questionBoardDto.content}</div>
							<div>
								<fmt:formatDate value="${questionBoardDto.boardCreateDate}"
									pattern="yyyy-MM-dd a hh:mm:ss" />
							</div>
						</td>
					</tr>
					<c:choose>
						<c:when test="${not empty questionBoardDto.reply}">
							<tr>
								<th>답변</th>
								<td colspan="3">
									<div>${questionBoardDto.reply}</div>
									<div>
										<fmt:formatDate value="${questionBoardDto.commentCreateDate}"
											pattern="yyyy-MM-dd a hh:mm:ss" />
									</div>
								</td>
							</tr>
						</c:when>
						<c:otherwise>

						</c:otherwise>
					</c:choose>
				</table>

				<c:choose>

					<c:when test="${empty questionBoardDto.reply}">

					</c:when>
				</c:choose>


				<form action="QuestionRevise.do" method="post">
					<input type="hidden" name="idx" value="${questionBoardDto.idx}">
					<input type="hidden" name="title" value="${questionBoardDto.title}">
					<input type="hidden" name="content"
						value="${questionBoardDto.content}"> <input type="hidden"
						name="boardModDate" value="${questionBoardDto.boardModDate}">
						
						<input type="button" onClick="location.href='/englishvillage/QuestionRevise.do'">
					<input type="submit" value="수정하기"> <input type="button"
						value="목록"
						onClick="location.href='/englishvillage/QuestionList.do'">

				</form>
			</div>
			
		</div>
	</div>

</body>

</html>