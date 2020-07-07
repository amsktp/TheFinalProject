<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Hello Spring</title>

<link rel="stylesheet" type="text/css"
	href="/englishvillage/resources/css/mail.css">

<style type="text/css">
body {
	margin: 0px;
}

a {
	text-decoration: none;
}

a:-webkit-any-link {
	color: white;
	cursor: pointer;
}

dl, ul, ol, menu, li {
	list-style: none;
	float: left;
}

#searchBox {
	margin-top: 30px;
}

#mainImg {
	margin-bottom: 30px;
	width: 100%;
}

#searchOptBox {
	width: 800px;
	height: 60px;
	background-color: #F2F2F2;
	padding: 0px;
	padding-top: 10px;
	margin: auto;
	margin-bottom: 20px;
	box-sizing: border-box;
	border-radius: 5px;
}

#searchOptBox>select {
	width: 200px;
	height: 45px;
	margin-right: 10px;
	border: 1px solid #d7e0e0;
	border-radius: 5px;
	font-size: 15px;
	text-align: center;
	padding-left: 10px;
}

#searchKeyBox {
	width: 800px;
	height: 50px;
	background-color: #F2F2F2;
	margin: auto;
	margin-bottom: 20px;
	padding: 6px 39px;
	box-sizing: border-box;
	border-radius: 5px;
}

.seachFont {
	font-size: 20px;
	font-weight: 600;
	margin-right: 20px;
	margin-left: 17px;
	vertical-align: middle;
}

#menuList>div {
	border: 1px solid black;
	width: 200px;
	background-color: orange;
	margin: 20px;
}

#tutorList {
	height: 650px;
	padding: 50px;
}

.tutorInfoDiv {
	border: 1px solid black;
	width: 340px;
	height: 317px;
	float: left;
	margin: 10px;
}

.tutorImgDiv {
	width: 340px;
	height: 200px;
}

.tutorImg {
	width: 337px;
	height: 200px;
}

#mainImg {
	width: 100%;
	height: 1000px;
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

.studyTitle {
	width: 300px;
	height: 40px;
	margin-left: 10px;
	margin-top: 10px;
	font-size: 17px;
	font-weight: bold;
}

.price {
	margin-left: 10px;
	font-size: 15px;
	font-weight: bold;
}

.score {
	width: 110px;
	margin-top: 10px;
	margin-left: 10px;
	font-size: 12px;
	font-weight: bold;
	border-right: 1px solid black;
	float: left;
}

.country {
	margin-top: 10px;
	padding-left: 10px;
	float: left;
	font-size: 12px;
}

.tutorName {
	width: 120px;
	margin-top: 7px;
	font-size: 17px;
	font-weight: bold;
	margin-right: 40px;
	float: right;
	text-align: center;
}

img {
	width: 1920px;
}

@media ( min-width : 1200px) {
	#searchBox {
		width: 720px;
	}
}

@media ( min-width : 992px) {
	#searchBox {
		width: 720px;
	}
}

@media ( min-width : 768px) {
	#searchBox {
		width: 720px;
	}
}
</style>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	var loginMoveFnc = function() {
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

	<%-- 	<jsp:include page="/WEB-INF/views/tutorHeader.jsp" /> --%>
	<%-- 	<jsp:include page="/WEB-INF/views/common/Header.jsp" /> --%>
	<jsp:include page="/WEB-INF/views/Header3.jsp" />

	<!-- <img id="mainImg" src="/englishvillage/resources/imgs/sl2.png"> -->

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class=""></li>
			<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item">
				<img class="first-slide" src="/englishvillage/resources/imgs/a.jpg"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>영어 지금 시작하세요!</h1>
						<p>Note: 어쩌구 저쩌구</p>
						<p>
							<a class="btn btn-lg btn-primary" href="commonRegister.do"
								role="button">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item active">
				<img class="second-slide"
					src="/englishvillage/resources/imgs/a2.jpg" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>영어의 시대</h1>
						<p>Note: 어쩌구 저쩌구</p>
						<p>
							<a class="btn btn-lg btn-primary" href="login.do" role="button">Learn
								more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="/englishvillage/resources/imgs/a3.jpg"
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>지금 당장 가입하세요!</h1>
						<p>Note: 어쩌구 저쩌구</p>
						<p>
							<a class="btn btn-lg btn-primary" href="commonRegister.do"
								role="button">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>




	<div id="searchBox" class="container">
		<form class="form-inline" action="./home.do#searchOptBox"
			method="post">
			<span class="seachFont">검색조건</span> <select class="form-control"
				name='countrySearch'>
				<c:choose>
					<c:when test="${searchMap.countrySearch eq 'all'}">
						<option value='all' selected>국적</option>
						<option value='USA'>미국</option>
						<option value='Ireland'>아일랜드</option>
						<option value='Canada'>캐나다</option>
						<option value='England'>영국</option>
						<option value='KOREA'>한국</option>
					</c:when>
					<c:when test="${searchMap.countrySearch eq 'USA'}">
						<option value='all'>국적</option>
						<option value='USA' selected>미국</option>
						<option value='Ireland'>아일랜드</option>
						<option value='Canada'>캐나다</option>
						<option value='England'>영국</option>
						<option value='KOREA'>한국</option>
					</c:when>
					<c:when test="${searchMap.countrySearch eq 'Ireland'}">
						<option value='all'>국적</option>
						<option value='USA'>미국</option>
						<option value='Ireland' selected>아일랜드</option>
						<option value='Canada'>캐나다</option>
						<option value='England'>영국</option>
						<option value='KOREA'>한국</option>
					</c:when>
					<c:when test="${searchMap.countrySearch eq 'Canada'}">
						<option value='all'>국적</option>
						<option value='USA'>미국</option>
						<option value='Ireland'>아일랜드</option>
						<option value='Canada' selected>캐나다</option>
						<option value='England'>영국</option>
						<option value='KOREA'>한국</option>
					</c:when>
					<c:when test="${searchMap.countrySearch eq 'England'}">
						<option value='all'>국적</option>
						<option value='USA'>미국</option>
						<option value='Ireland'>아일랜드</option>
						<option value='Canada'>캐나다</option>
						<option value='England' selected>영국</option>
						<option value='KOREA'>한국</option>
					</c:when>
					<c:when test="${searchMap.countrySearch eq 'KOREA'}">
						<option value='all'>국적</option>
						<option value='USA'>미국</option>
						<option value='Ireland'>아일랜드</option>
						<option value='Canada'>캐나다</option>
						<option value='England'>영국</option>
						<option value='KOREA' selected>한국</option>
					</c:when>
				</c:choose>
			</select> <select class="form-control" name='ageSearch'>
				<c:choose>
					<c:when test="${searchMap.ageSearch eq '0'}">
						<option value='0' selected>나이</option>
						<option value='20'>20대</option>
						<option value='30'>30대</option>
						<option value='40'>40대이상</option>
					</c:when>
					<c:when test="${searchMap.ageSearch eq '20'}">
						<option value='0'>나이</option>
						<option value='20' selected>20대</option>
						<option value='30'>30대</option>
						<option value='40'>40대이상</option>
					</c:when>
					<c:when test="${searchMap.ageSearch eq '30'}">
						<option value='0'>나이</option>
						<option value='20'>20대</option>
						<option value='30' selected>30대</option>
						<option value='40'>40대이상</option>
					</c:when>
					<c:when test="${searchMap.ageSearch eq '40'}">
						<option value='0'>나이</option>
						<option value='20'>20대</option>
						<option value='30'>30대</option>
						<option value='40' selected>40대이상</option>
					</c:when>
				</c:choose>
			</select> <select class="form-control" name='genderSearch'>
				<c:choose>
					<c:when test="${searchMap.genderSearch eq 'all'}">
						<option value='all' selected>성별</option>
						<option value='M'>남자</option>
						<option value='F'>여자</option>
					</c:when>
					<c:when test="${searchMap.genderSearch eq 'M'}">
						<option value='all'>성별</option>
						<option value='M' selected>남자</option>
						<option value='F'>여자</option>
					</c:when>
					<c:when test="${searchMap.genderSearch eq 'F'}">
						<option value='all'>성별</option>
						<option value='M'>남자</option>
						<option value='F' selected>여자</option>
					</c:when>
				</c:choose>
			</select>

			<!-- 				<input id="keyWordBox" type="text" name="keyword" placeholder="키워드를 입력해주세요"> -->
			<input class="form-control" type="text" name="keyword"
				placeholder="키워드를 입력해주세요"> <input class="btn btn-primary"
				type="submit" value="검색">

		</form>
	</div>

	<div id="tutorList">
		<c:choose>
			<c:when test="${empty tutorDtoList}">
				<div>검색 결과가 없습니다.</div>
			</c:when>
			<c:otherwise>
				<c:forEach var="tutorDto" items="${tutorDtoList}">
					<div class="tutorInfoDiv clearfix">
						<div class="tutorImgDiv">
							<img class="tutorImg" id="tutorImg"
								src="/englishvillage/resources/imgs/sl2.png">
						</div>

						<div class="studyTitle" id="studyTitleDiv">
							${tutorDto.studyName}</div>

						<div class="price" id="priceDiv">30,000원 / 40분</div>

						<div class="score">
							<c:forEach begin="1" end="${tutorDto.score}">
							★
						</c:forEach>
							<c:forEach begin="${tutorDto.score}" end="4">
							☆
						</c:forEach>
							(${tutorDto.evaluationCount})
						</div>

						<div class="country">${tutorDto.memberCountry}</div>

						<div class="tutorName">${tutorDto.memberName}</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>

	<div style="clear: left; padding: 30px">
		<jsp:include page="/WEB-INF/views/common/paging3.jsp">
			<jsp:param value="${pagingMap}" name="pagingMap" />
		</jsp:include>

	</div>

	<form action="./home.do#searchOptBox" id='pagingForm' method="get">
		<input type="hidden" name="countrySearch"
			value="${searchMap.countrySearch}"> <input type="hidden"
			name="ageSearch" value="${searchMap.ageSearch}"> <input
			type="hidden" name="genderSearch" value="${searchMap.genderSearch}">
		<input type="hidden" name="keyword" value="${searchMap.keyword}">
		<input type="hidden" id='curPage' name='curPage'
			value="${pagingMap.memberPaging.curPage}">
	</form>

</body>

</html>