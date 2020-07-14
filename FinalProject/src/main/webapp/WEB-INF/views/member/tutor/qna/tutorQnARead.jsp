<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>문의내용</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(5).addClass('on');
});
</script>

</head>

<body>

	<jsp:include page="/WEB-INF/views/common/Header.jsp" />
	
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px; margin-bottom: 100px;">
			<div id="pageName">
					문의글 쓰기 
			</div>
			<div>
				<textarea id="boardWrite"></textarea>
			</div>
		</div>
	</div>

</body>

</html>