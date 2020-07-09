<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<jsp:include page="/WEB-INF/views/tutorHeader.jsp" />
	
	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/tutorLayout.jsp" />
	
		<div id="">
			<table>
				<tr>
					<th>제목</th>
					<th>작성자</th>
					<th>질문한 날짜</th>
					<th>답변 상태</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
					
			</table>
			<textarea style="margin-left:400px; width: 100px; height: 100px;">
			
			</textarea>
					
		</div>
	</div>

	

</body>

</html>