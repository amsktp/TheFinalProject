<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(1).addClass('on');
});
</script>
</head>
<body>


	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">

			<div id="pageName">
				마이페이지
			</div>
			<div id="mainLeft" 
			style="margin-top: 100px; margin-left: 80px; width: 300px;">
				<h1 class="infoFont">보유 포인트</h1>
				<p id="pointFont">${member.memberPoint} 포인트</p><br/>
				<input class="chargeBtn" style="margin-left: 60px;" type="button" value="충전하기">
			</div>
			<div id="mainRight" class="infomationFont">
				<form action="tutorPrivateInfo.do">
					<h3 class="myInfoFont">내 정보</h3><br/>
					<p class="infomationContents">이름 : ${member.memberName}</p>
					<p class="infomationContents">email : ${member.memberEmail}</p><br/>
					<input class="chargeBtn" type="submit"  value="내정보 확인">
				</form> 
			</div>	
			<div id="mainRight" class="infomationFont">
				<form action="tutorQnABoard.do">
					<h3 class="myInfoFont">문의내역</h3><br/>
					<h5 class="infomationContents">최근문의 내역</h5>
					<p class="infomationContents">내용: ${tutorDtoBodard.title}</p><br/>
					<input class="chargeBtn" type="submit"  value="문의내역 확인">
				</form>
			</div>
		</div>
	</div>

</body>

</html>