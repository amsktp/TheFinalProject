<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원 문의내역</title>
<style type="text/css">
@media ( min-width : 500px) {
	.navbar-nav {
		float: right;
		margin: 0;
	}
	.navbar-nav>li {
		float: left;
	}
}
</style>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.layoutUl').children().eq(4).addClass('on');

		// #gnb에 자식 요소(li)가 몇번째인지를 확인한 후 on이라는 클래스 추가

		$('#qna').on('click', function() {
			// 			var idxObj = $('#idx');
			var url = '';

			url += './QuestionAdd.do';

			location.href = url;
		});

	});

	function listOnePageFnc(obj, event) {
		var aTagObj = $(obj);

		event.preventDefault();

		var memberNoObj = '';
		// 		var curPageObj = $('#curPage');
		var keywordObj = $('#keyword');
		var searchOptionObj = $('#searchOption');

		// 회원이름 클릭시 자신의 회원번호 td태그(eq()를 잘 기억해두자)
		// 		memberNoObj = aTagObj.parent().parent().children('td').eq(0);

		var url = '';

		url += './adminlistOne.do?';
		url += 'no=' + memberNoObj.html();
		// 		url += '&curPage=' + curPageObj.val();
		url += '&keyword=' + keywordObj.val();
		url += '&searchOption=' + searchOptionObj.val();

		// 		alert(url);

		location.href = url;

		return false;
	}

	function QnAReadFnc(obj) {
		var aTagObj = $(obj);

		var url = '';
		var memberNoObj = '';

		memberNoObj = aTagObj.parent().parent().parent().children('td').eq(0)
				.children();

		url += './QuestionSelect.do?';
		url += 'idx=' + memberNoObj.html();

		location.href = url;
	}
</script>
</head>

<body>
	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<%-- <jsp:include page="/WEB-INF/views/common/minMemberLayout.jsp" /> --%>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">

			<div id="pageName">문의내역</div>

			<table class="table table-hover textCenter tableFont">
				<colgroup>
					<col width="15%">
					<col width="45%">
					<col width="20%">
					<col width="20%">

				</colgroup>
				<tr class="success">
					<th class="textCenter">문의번호</th>
					<th class="textCenter">내용</th>
					<th class="textCenter">문의일</th>
					<th class="textCenter">답변상태</th>
				</tr>

				<c:forEach var="questionDto" items="${qusetionList}">

					<c:choose>
						<c:when test="${questionDto.idx!=0}">
							<tr>
								<td><div id="idxVal" class="td_status">${questionDto.idx}</div></td>
								<td class="textLeft"><div class="td_status">
										<a href="#" onclick="QnAReadFnc(this);" style="color: black;">
											${questionDto.title} </a>
									</div></td>


								<td><div class="td_status">
										<fmt:formatDate value="${questionDto.boardCreateDate}"
											pattern="yyyy-MM-dd" />
									</div></td>

								<td>
									<div class="td_status">
										<c:if test="${questionDto.answerStatus == 'Y'}">
									답변완료
								</c:if>
										<c:if test="${questionDto.answerStatus == 'N'}">
									답변대기중
								</c:if>
									</div>
								</td>
							</tr>
						</c:when>
						
						<c:otherwise>
							<td colspan="4">
								<div class="td_status">문의내역이 존재하지 않습니다.</div>
							</td>
						</c:otherwise>
						
					</c:choose>
				</c:forEach>

			</table>
			<input id="qna" class="btn btn-success" type="button" value="문의하기"
				style="float: right;">
			<jsp:include page="/WEB-INF/views/common/paging2.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap" />
			</jsp:include>
			<form action="QuestionList.do" id="pagingForm" method="get">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.memberPaging.curPage}">
			</form>
		</div>
	</div>

	<div class="footer"></div>

</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</html>