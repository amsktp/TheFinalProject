<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생페이지</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.layoutUl').children().eq(1).addClass('on');

	});

	function moveButPointFnc() {

		location.href = "/englishvillage/student/buyPoint.do";

	}
</script>


<style type="text/css">
</style>
</head>

<body>
	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">

			<div id="pageName">마이 페이지</div>
			<div class="container">
				<div class="col-md-4">
					<h1 class="infoFont" onclick="myInfoMoveFnc();">내 정보</h1>
					<p>이름 : ${member.memberName}</p>
					<p>email : ${member.memberEmail}</p>
					<p></p>
				</div>
				<div class="col-md-4">
					<h1 class="infoFont">보유 포인트</h1>
					<p>${member.memberPoint}포인트</p>

					<input class="blackBtn" type="button" value="충전하기"
						onclick="moveButPointFnc();">
				</div>
			</div>
		</div>

	</div>






</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>