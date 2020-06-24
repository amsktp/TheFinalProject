<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Hello Spring</title>

<style type="text/css">
	div{
		border: 1px solid black; width: 200px;
		background-color: orange;
		margin: 20px;
	}
</style>

<script type="text/javascript">

	var loginMoveFnc = function(){
		location.href = '/englishvillage/login.do';
	}
	
	var myPageMoveFnc = function() {
		location.href = '/englishvillage/myPage.do'
	}
	
	var tutorListMoveFnc = function() {
		location.href = '/englishvillage/home.do'
	}
	
	var tutorIntroduceMoveFnc = function() {
		location.href = '/englishvillage/tutorIntroduce.do'
	}
	
	var adminMoveFnc = function() {
		location.href = '/englishvillage/admin.do'
	}
	
</script>


<body>

	<div onclick="loginMoveFnc();" >
		로그인 버튼
	</div>
	
	<div onclick="mainMoveFnc();" >
		메인페이지
	</div>
	
	<div onclick="myPageMoveFnc();" >
		마이페이지
	</div>
	
	<div onclick="tutorListMoveFnc();" >
		튜터 목록
	</div>
	
	<div onclick="tutorIntroduceMoveFnc();" >
		튜터 소개 페이지
	</div>
	
	<div onclick="adminMoveFnc();" >
		관리자 페이지
	</div>
	
</body>

</html>