<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Hello Spring</title>

<style type="text/css">
	#menuList > div {
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

	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
<img id="mainImg" src="/englishvillage/resources/imgs/sl2.png">

<div id="searchBox">

	<div id="searchOptBox">
		<span class="seachFont">검색조건</span> <select name='Nation'>
			<option value='' selected>국적</option>
			<option value='USA'>미국</option>
			<option value='Germany'>독일</option>
			<option value='Canada'>캐나다</option>
			<option value='Philippines'>필리핀</option>
		</select> <select name='Age'>
			<option value='' selected>나이</option>
			<option value='20'>20대</option>
			<option value='30'>30대</option>
			<option value='40'>40대</option>
		</select> <select name='Sex'>
			<option value='' selected>성별</option>
			<option value='Men'>남자</option>
			<option value='Worman'>여자</option>
		</select>

	</div>
	<div id="searchKeyBox">
		<input id="keyWordBox" type="text" placeholder="키워드를 입력해주세요">
		<input id="seachBtn" type="button" value="검색">



	</div>

</div>
<div id="menuList">
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
</div>
	
</body>

</html>