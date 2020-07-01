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
$(document).ready(function(){
    $('.layoutUl').children().eq(0).addClass('on');


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
	<div id="pageName">마이페이지</div>
	<div id="mainLeft">
	<h1 class="infoFont" onclick="myInfoMoveFnc();">내 정보</h1>
	<p>이름 : ${member.memberName}</p>
	<p>email : ${member.memberEmail}</p>
	<p></p>
	</div>
	<div id="mainRight">
	<h1 class="infoFont">보유 포인트</h1>
	<p>${member.memberPoint} 포인트</p>
	
	<input class="blackBtn" type="button" value="충전하기">
	</div>
	
	<button onclick="location.href = 'test.do'" style="width: 200px; height: 200px;">회원탈퇴</button>
	
	</div>
	
	
	</div>






</body>
</html>