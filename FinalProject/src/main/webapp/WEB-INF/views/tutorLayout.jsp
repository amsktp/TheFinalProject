<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/student.css?ver=1.2">
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/tutor.css?ver=1.2">
<script type="text/javascript">

var loginMoveFnc = function(){
	location.href = '/englishvillage/login.do';
}

var myPageMoveFnc = function() {
	location.href = '/englishvillage/myPage.do'
}

var myInfoMoveFnc = function() {
	location.href = '/englishvillage/myInfo.do'
}

var tutorListMoveFnc = function() {
	location.href = '/englishvillage/home.do'
}

var tutorIntroduceMoveFnc = function() {
	location.href = '/englishvillage/tutorIntroduce.do'
}

var adminMoveFnc = function() {
	location.href = '/englishvillage/admin/studentlist.do'
}

var adminMove1Fnc = function() { 
	location.href = '/englishvillage/admin/tutorlist.do'
}

var adminMove2Fnc = function() {
	location.href = '/englishvillage/admin/questionlist.do'
}

</script>

<style type="text/css">

dl, ul, ol, menu, li {
	list-style: none;
}

#mainBox {
    position: fixed;
	box-sizing: border-box;
	background-color: black;
	border-radius: 30px;
	padding: 130px 60px;
}

#memberName {
	font-size: 28px;
	font-weight: bold;
	color: white;
	text-align: center;
	padding-bottom: 70px;
}

.layoutUl {
	padding: 0px;
}

.layoutUl li {
 	width: 160px; 
 	height: 40px; 
 	margin-bottom: 40px; 
 	border-radius: 30px; 
 	text-align: center; 
 	margin: auto; 
 	margin-bottom: 40px; 
}

.layoutUl li.on {
 	margin-bottom: 40px; 
 	width: 160px; 
 	height: 40px; 
  	background-color: #778F44; 
 	border-radius: 30px; 
 	text-align: center; 
 	margin: auto; 
 	margin-bottom: 40px; 

}

.layoutUl li a:hover {

 	color: #d9edf7;
}

.layoutUl>li>a {
	color: white;
	text-decoration: none;
	font-size: 18px;
	text-align: center;
	font-weight: bold;
	line-height: 42px;
}
</style>


<div id="mainBox">


	<div id="memberName">${member.memberName} 튜터님</div>


	<ul class="layoutUl">

		<li><a href="tutorMainPage.do">마이 페이지</a></li>
		<li><a href="tutorIntroduce.do">내 정보</a></li>
		<li><a href="myStudy.do">수강내역</a></li>
		<li><a href="myQNA.do">문의내역</a></li>

	</ul>








</div>

