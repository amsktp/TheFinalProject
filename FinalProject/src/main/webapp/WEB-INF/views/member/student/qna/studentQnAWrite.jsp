<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>문의하기</title>
<style type="text/css">
tr > th {
text-align: center;
}

td {
text-align: left;
}
</style>

<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$('.layoutUl').children().eq(4).addClass('on');
		$('#okBtn').on('click', function(){
			alert("문의글 작성이 완료되었습니다");
	      	$('form').attr('action', 'QuestionAddCtr.do');
			
//				var form = {
//		                title: $('#title').val(),
//		                content: $('#content').val()
//		        }

//		        $.ajax({
//		            url: "QuestionRevise.do",
//		            type: "POST",
//		            data: form,
//		            success: function(data){
	                
//		            },
//		            error: function(){
//		                alert("simpleWithObject err");
//		            }
//		        });
	    });
		});



</script>

<style type="text/css">
</style>
</head>

<body>
	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>

	<div class="container bs-docs-container">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9">

			<h1 id="pageName">문의하기</h1>

			<form method="post">

				<table id='qnaAddTable' class="table table-bordered textCenter" summary="문의하기">
					<caption>나의문의하기 답변</caption>

					<tr>
						<th scope="row">이름</th>
						<td><div>${member.memberName}</div>
						<input type="hidden" name='no' value="${member.memberNo}">
					</tr>

					<tr>
						<th scope="row">제목</th>
						<td colspan="3"><input type="text" id='title' name='title'
							value=''></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><input type="text" id='content' name='content'
							value=''></td>
					</tr>
				</table>

				<input id="okBtn" class="btn btn-success" type="submit" value="작성완료"> 
				<input id="cancelBtn" class="btn btn-default" type="button" value="취소" onclick="QuestionListMoveFnc()">
				</form>
			</div>
		</div>


</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>