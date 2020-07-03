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

		$('#edtiBtn').on('click', function() {
			$('#edtiBtn').attr('type', 'hidden');
			$('#backListBtn').attr('type', 'hidden');

			$('#okBtn').attr('type', 'submit');
			$('#cancelBtn').attr('type', 'button');

			$('#qnaTable').css('display', 'none');
			$('#qnaReviceTable').css('display', 'table');

		});

		$('#cancelBtn').on('click', function() {

			var url = '';

			url += './QuestionSelect.do?';
			url += 'idx=' + $('#idx').html();

			location.href = url;
		});
		
		$('#backListBtn').on('click', function() {

			location.href='/englishvillage/QuestionList.do'
		});
		
// 		$('#okBtn').on('click', function(){
			
// 			$('form').attr('action', 'QuestionRevise.do')
// 		});

				$('#okBtn').on('click', function(){
					alert("문의글 수정이 완료되었습니다");
			        var form = {
			                idx: $('#idx').val(),
			                title: $('#title').val(),
			                content: $('#content').val()
		// 	                boardCreateDate: $('#boardCreateDate').html(),
		// 	                commentCreateDate: $('#commentCreateDate').val()
			        }

			        $.ajax({
			            url: "QuestionRevise.do",
			            type: "POST",
			            data: form,
			            success: function(data){
			                
			            },
			            error: function(){
			                alert("simpleWithObject err");
			            }
			        });
			    });

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
			<form method="post">

				<table id='qnaTable' summary="나의문의하기 답변">
					<caption>나의문의하기 답변</caption>

					<tr>
						<th scope="row">문의번호</th>
						<td><div>${questionBoardDto.idx}</div></td>
						<th scope="row">문의일</th>
						<td><div id='boardCreateDate'>
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
									<div id='reply'>${questionBoardDto.reply}</div>
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


				<table id='qnaReviceTable' summary="나의문의하기 답변" style="display: none">
					<caption>나의문의하기 답변</caption>

					<tr>
						<th scope="row">문의번호</th>
						<td><div>${questionBoardDto.idx}</div>
						<input id='idx' type="hidden" name='idx' value='${questionBoardDto.idx}'>
							</td>
						<th scope="row">문의일</th>
						<td><div id='boardCreateDate'>
								<fmt:formatDate value="${questionBoardDto.boardCreateDate}"
									pattern="yyyy-MM-dd a hh:mm:ss" />
							</div></td>
					</tr>

					<tr>
						<th scope="row">제목</th>
						<td colspan="3"><input type="text" id='title' name='title'
							value='${questionBoardDto.title}'></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><input type="text" id='content' name='content'
							value='${questionBoardDto.content}'></td>
					</tr>
				</table>

				<c:if test="${empty questionBoardDto.reply}">
					<input id="edtiBtn" type="button" value="수정하기">
				</c:if>
				<input id="okBtn" type="hidden" value="변경하기"> 
				<input id="backListBtn" type="button" value="목록">
				<input id="cancelBtn" type="hidden" value="취소" onclick="QuestionListMoveFnc()">
				</form>
			</div>
		</div>

	</div>

</body>

</html>