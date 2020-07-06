<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="/englishvillage/resources/css/student.css?ver=1.4">
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

var QuestionListMoveFnc = function() {
	location.href='/englishvillage/QuestionList.do'
}

function pageMoveDeleteFnc(no){
	var url = "/englishvillage/deleteCtr.do?no=" + no;
	location.href = url;
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
/* dl, ul, ol, menu, li { */
/* 	list-style: none; */
/* } */

#mainBox {
	box-sizing: border-box;
	background-color: black;
	border-radius: 30px;
/* 	padding: 130px 60px; */
}

.contentBox {
margin-top: 100px;
}
#memberName {
	font-size: 20px;
	font-weight: bold;
	color: white;
	text-align: center;
	padding-bottom: 70px;
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

/*  	color: #d9edf7; */
 	color: black;
 	background-color: #778F44;
 	border-radius: 30px; 
 	width: 160px; 
 	height: 40px; 
}

.layoutUl>li>a {
	color: white;
	text-decoration: none;
	font-size: 18px;
	text-align: center;
	font-weight: bold;
	line-height: 23px;
}
</style>

<div class="col-md-3" role="complementary">
	<nav id="mainBox" class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix-top">
		<ul class="nav bs-docs-sidenav layoutUl">

			<li id="memberName">${member.memberName}회원님</li>
			<li><a href="myPage.do">마이 페이지</a></li>
			<li><a href="myInfo.do">내 정보</a></li>
			<li><a href="studyList.do">수강내역</a></li>
			<li><a href="QuestionList.do">문의내역</a></li>

		</ul>
	</nav>
</div>