<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/tutor.css">
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('.layoutUl').children().eq(0).addClass('on');
});
</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/tutorHeader.jsp" />
	
	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/tutorLayout.jsp" />
	
		<div id="myPageBox">
			<div id="pageName" style="margin-bottom: 30px;">마이페이지
			</div>
			<div id="mainLeft" style="margin-top: 70px; margin-left: 50px;">
				<h1 class="infoFont">보유 포인트</h1>
				<p id="pointFont">${member.memberPoint} 포인트</p><br/>
				<input class="chargeBtn" style="margin-left: 50px;" type="button" value="충전하기">
			</div>
			<div id="mainRight">
				<form action="tutorPrivateInfo.do">
					<h3 class="myInfoFont">내 정보</h3><br/>
					<p>이름 : ${member.memberName}</p>
					<p>email : ${member.memberEmail}</p><br/>
					<input class="chargeBtn" type="submit"  value="내정보 확인">
				</form> 
			</div>	
			<div id="mainRight">
				<form action="tutorQnABoard.do">
					<h3 class="myInfoFont" onclick="">문의내역</h3><br/>
					<h5 style="text-align: left; font-weight: bold; margin-left: 40px;">최근문의 내역</h5>
					<p>내용: ${tutorDtoBodard.title}</p><br/>
					<input class="chargeBtn" type="submit"  value="문의내역 확인">
				</form>
			</div>
		</div>
	</div>

</body>

</html>