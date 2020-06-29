<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" type="text/css"
	href="/englishvillage/resources/css/student.css?ver=1.2">
<style type="text/css">
#pageName {
	text-align: center;
	width: 700px;
	margin: auto;
	margin: 52px 590px;
	margin-bottom: 0px 100px;
	line-height: 90px;
}

.mainText {
	font-size: 80px;
	font-weight: bold;
	text-align: center;
}

.blackBtn {
	margin: 50px 170px;
	width: 165px;
	height: 55px;
}
</style>
</head>

<body>

	<div class="mainText">English Village</div>

	<div>
		<div id="pageName">회원탈퇴</div>
		<div id="pwdCheckBox" style="padding-top: 40px;">
			<h2 style="font-weight: bold; text-align: center;">회원탈퇴가
				완료되었습니다.</h2>
			<h2 style="font-weight: bold; text-align: center;">로그인화면으로 돌아갑니다.</h2>

			<input class="blackBtn" type='button' value='확인'
				onClick="location.href='/englishvillage/login.do'">
		</div>




	</div>

</body>
</html>