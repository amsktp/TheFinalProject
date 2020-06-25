<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
	function myPageBtnFnc() {
		for (var i = 0; i < 4; i++) {
			var colorUpdate = document.getElementsByClassName("listContents");

			colorUpdate[0].style.backgroundColor = "rgb(146,163,92)";
			colorUpdate[1].style.backgroundColor = "black";
			colorUpdate[2].style.backgroundColor = "black";
			colorUpdate[3].style.backgroundColor = "black";
		}
	}

	function myInfoFnc() {
		for (var i = 0; i < 4; i++) {
			var colorUpdate = document.getElementsByClassName("listContents");

			colorUpdate[0].style.backgroundColor = "black";
			colorUpdate[1].style.backgroundColor = "rgb(146,163,92)";
			colorUpdate[2].style.backgroundColor = "black";
			colorUpdate[3].style.backgroundColor = "black";
		}
	}

	function myLectureFnc() {
		for (var i = 0; i < 4; i++) {
			var colorUpdate = document.getElementsByClassName("listContents");

			colorUpdate[0].style.backgroundColor = "black";
			colorUpdate[1].style.backgroundColor = "black";
			colorUpdate[2].style.backgroundColor = "rgb(146,163,92)";
			colorUpdate[3].style.backgroundColor = "black";
		}
	}

	function myQnaFnc() {
		for (var i = 0; i < 4; i++) {
			var colorUpdate = document.getElementsByClassName("listContents");

			colorUpdate[0].style.backgroundColor = "black";
			colorUpdate[1].style.backgroundColor = "black";
			colorUpdate[2].style.backgroundColor = "black";
			colorUpdate[3].style.backgroundColor = "rgb(146,163,92)";
		}
	}
</script>

<style type="text/css">
dl, ul, ol, menu, li {
	list-style: none;
}

#mainBox {
	width: 300px;
	height: 670px;
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

#layoutUl {
	padding: 0px;
}

#layoutUl>li {
	width: 160px;
	height: 40px;
	margin-bottom: 40px;
	border-radius: 30px;
	text-align: center;
	margin: auto;
	margin-bottom: 40px;
}

#layoutUl>li:hover {
	margin-bottom: 40px;
	width: 160px;
	height: 40px;
	background-color: #778F44;
	border-radius: 30px;
	text-align: center;
	margin: auto;
	margin-bottom: 40px;
}

#layoutUl>li>a {
	color: white;
	text-decoration: none;
	font-size: 18px;
	text-align: center;
	font-weight: bold;
	line-height: 42px;
}
</style>


<div id="mainBox">


	<div id="memberName">${member.memberName}회원님</div>


	<ul id="layoutUl">

		<li><a href="">마이 페이지</a></li>
		<li><a href="">내 정보</a></li>
		<li><a href="">수강내역</a></li>
		<li><a href="">문의내역</a></li>

	</ul>








</div>

