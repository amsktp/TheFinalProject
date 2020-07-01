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
table {
	border-collapse: collapse;
}

table, tr, td, th {
	border: 1px solid black;
}

.td_status {
	font-size: 11px;
	line-height: 14px;
	text-align: center;
}

.thCenter {
	text-align: center;
	background-color: skyblue;
	height: 21px;
	color: rgb(255, 255, 255);
	font-size: 11px;
}
</style>

<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('.layoutUl').children().eq(3).addClass('on');

		// #gnb에 자식 요소(li)가 몇번째인지를 확인한 후 on이라는 클래스 추가

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
	
	function QnAReadFnc(){
		var idxObj = $('#idxVal');
		
		var url = '';
		
		url += './QuestionSelect.do?';
		url += 'idx=' + parseInt(idxObj.html());
		
		location.href = url;
	}
</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/Header3.jsp" />

	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/memberLayout.jsp" />

		<div id="myPageBox">

			<div id="pageName">마이페이지</div>

			<table>
				<tr>
					<th class='thCenter'>문의번호</th>
					<th class='thCenter'>내용</th>
					<th class='thCenter'>문의일</th>
					<th class='thCenter'>답변상태</th>


				</tr>

				<c:forEach var="questionDto" items="${qusetionList}">
					<tr>
						<td><div id="idxVal" class="td_status">${questionDto.idx}</div></td>
						<td><div class="td_status">
								<a href="#" onclick="QnAReadFnc();"
									style="color: black;"> ${questionDto.title} </a>
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
				</c:forEach>

			</table>
			<jsp:include page="/WEB-INF/views/common/paging.jsp">
				<jsp:param value="${pagingMap}" name="pagingMap" />
			</jsp:include>
			<form action="question.do" id="pagingForm" method="get">
				<input type="hidden" id="curPage" name="curPage"
					value="${pagingMap.memberPaging.curPage}">
			</form>
		</div>



	</div>

</body>

</html>