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
		$('.layoutUl').children().eq(4).addClass('on');

		$('#edtiBtn').on('click', function() {
			$('#edtiBtn').attr('type', 'hidden');
			$('#backListBtn').attr('type', 'hidden');

			$('#okBtn').attr('type', 'submit');
			$('#cancelBtn').attr('type', 'button');

			$('#qnaTable').css('display', 'none');
			$('#qnaReviceTable').css('display', 'table');

		});

		$('#cancelBtn').on('click', function() {
			var idxObj = $('#idx');
			var url = '';

			url += './QuestionSelect.do?';
			url += 'idx=' + idxObj.val();

			location.href = url;
		});

		$('#backListBtn').on('click', function() {
			var idxObj = $('#idx');
			var url = '';

			url += './QuestionList.do?';
			url += 'idx=' + idxObj.val();

			location.href = url;

			// 			location.href='/englishvillage/QuestionList.do'
		});

		// 		$('#okBtn').on('click', function(){

		// 			$('form').attr('action', 'QuestionRevise.do')
		// 		});

		$('#okBtn').on('click', function() {
			var form = {
				idx : $('#idx').val(),
				title : $('#title').val(),
				content : $('#content').val()
			// 	                boardCreateDate: $('#boardCreateDate').html(),
			// 	                commentCreateDate: $('#commentCreateDate').val()
			}

			$.ajax({
				url : "QuestionRevise.do",
				type : "POST",
				data : form,
				success : function(data) {

				},
				error : function() {
					alert("simpleWithObject err");
				}
			});
			alert("문의글 수정이 완료되었습니다");
		});

	});
</script>

<style type="text/css">
</style>
</head>

<body>
<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">

			<div id="pageName">내 문의</div>

				<form method="post">

					<table id='qnaTable' class="table table-bordered">
					
						<tr>
							<th class="textCenter" scope="row">문의번호</th>
							<td class="textCenter"><div>${questionBoardDto.idx}</div></td>
							<th class="textCenter" scope="row">문의일</th>
							<td><div id='boardCreateDate'>
									<fmt:formatDate value="${questionBoardDto.boardCreateDate}"
										pattern="yyyy-MM-dd a hh:mm:ss" />
								</div></td>
						</tr>

						<tr class="active">
							<th class="textCenter" scope="row">제목</th>
							<td colspan="3">
								<div style="margin-left: 20px">${questionBoardDto.title}</div>

							</td>
						</tr>
						<tr>
							<th class="textCenter">내용</th>
							<td colspan="3">
								<div style="margin-left: 20px">${questionBoardDto.content}</div>
							</td>
						</tr>
						<c:choose>
							<c:when test="${not empty questionBoardDto.reply}">
								<tr class="active">
									<th class="textCenter">답변</th>
									<td colspan="3">
										<div id='reply' style="margin-left: 20px">${questionBoardDto.reply}</div>
										<div style="margin-left: 20px; float: right;">
											답변일 : <fmt:formatDate value="${questionBoardDto.commentCreateDate}"
												pattern="yyyy-MM-dd a hh:mm:ss" />
										</div>
									</td>
								</tr>
							</c:when>
							<c:otherwise>

							</c:otherwise>
						</c:choose>
					</table>

					<table id='qnaReviceTable' class="table table-bordered" summary="나의문의하기 답변"
						style="display: none">

						<tr>
							<th class="textCenter" scope="row">문의번호</th>
							<td><div class="textCenter">${questionBoardDto.idx}</div> 
								<input id='idx' type="hidden" name='idx' value='${questionBoardDto.idx}'>
							</td>
							<th class="textCenter" scope="row">문의일</th>
							<td><div id='boardCreateDate'>
									<fmt:formatDate value="${questionBoardDto.boardCreateDate}"
										pattern="yyyy-MM-dd a hh:mm:ss" />
								</div></td>
						</tr>

						<tr>
							<th scope="row" class="textCenter" style="vertical-align: middle;">제목</th>
							<td colspan="3">
								<input type="text" class="form-control" id="title" name="title" maxlength="30" value="${questionBoardDto.title}">
							</td>
						</tr>
						<tr>
							<th scope="row" class="textCenter" style="vertical-align: middle;">내용</th>
							<td colspan="3">
								<input type="text" class="form-control" id="content" name="content" maxlength="300" value="${questionBoardDto.content}">
							</td>
						</tr>
					</table>
					<c:choose>

						<c:when test="${empty questionBoardDto.reply}">
							<!-- 이렇게 해줘야 레알 히든임 -->
							<input id="edtiBtn" class="btn btn-success" type="button" value="수정하기">
							<input id="okBtn" class="btn btn-success" type="hidden" value="변경하기">
							<input id="cancelBtn" class="btn btn-default" type="hidden" value="취소"
							onclick="QuestionListMoveFnc()">
						</c:when>
					</c:choose>

					 <input
						id="backListBtn" class="btn btn-default" type="button" value="목록"> 
				</form>
		</div>

	</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>

</html>