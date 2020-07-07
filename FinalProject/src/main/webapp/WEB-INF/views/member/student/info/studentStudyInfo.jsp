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
								<a href="#" onclick="QnAReadFnc(this);" style="color: black;">
									${studyDto.studyName} </a>
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