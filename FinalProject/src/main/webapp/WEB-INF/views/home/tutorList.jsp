<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	
	#tutorList > div {
	
	}
	
	.tutorInfoDiv {
		border: 1px solid black;
		width: 340px;
		height: 317px;
		float: left;
		margin : 10px;
	}
	.tutorImgDiv {
		width : 340px;
		height : 200px;
	}
	#mainImg1 {
		width : 340px;
		height : 200px;
	}
	.studyTitle {
		width: 172px;
		height: 40px;
		margin-left: 10px;
		margin-top: 10px;
	}
	.tutorName {
		width: 50px;
		height: 20px;
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
	<div id="tutorList">
		<c:forEach var="tutorDto" items="${tutorDtoList}">
		<div class="tutorInfoDiv">
			<div class="tutorImgDiv">
				<img id="mainImg1" src="/englishvillage/resources/imgs/sl2.png">
			</div>
			<hr>
			<div class="studyTitle">
				${tutorDto.studyName}
			</div>
			<div class="tutorName">
				${tutorDto.memberName}
			</div>
			<div>
				${tutorDto.price}
			</div>
			<div>
				★★★★★ (30)
			</div>
			<div>
				${tutorDto.memberCountry}
			</div>
		</div>
		
<%-- 		<c:if test="${i eq 4 }"> --%>
<!-- 		<div style="clear: left;"></div> -->
<%-- 		</c:if> --%>
		
		</c:forEach>
	</div>
	
</div>
	
</body>

</html>