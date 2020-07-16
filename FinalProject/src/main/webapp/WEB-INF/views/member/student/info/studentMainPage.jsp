<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet"
	href="https://han3283.cafe24.com/js/lightslider/css/lightslider.css" />
<script
	src="https://han3283.cafe24.com/js/lightslider/js/lightslider.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.layoutUl').children().eq(1).addClass('on');

		/* 슬라이드 쿼리 */
		$("#slider").lightSlider({
			mode : 'slide', // 이미지가 표시되는 형식 (fade / slide)
			loop : true, // 무한반복 할 것인지
			auto : true, // 자동 슬라이드
			keyPress : true, // 키보드 탐색 허용
			pager : true, // 페이지 표시
			speed : 3000, // 슬라이드 되는 속도
			pause : 5000 // 이미지가 머무는 시간
		});

	});

	function QnAReadFnc(obj, event) {
		var aTagObj = $(obj);
		event.preventDefault();

		var url = '';
		var memberNoObj = '';
		var keywordObj = $('#keyword');
		var searchOptionObj = $('#searchOption');

		memberNoObj = aTagObj.parent().parent().parent().children('td').eq(0)
				.children();

		url += './questionSelect.do?';
		url += 'idx=' + memberNoObj.html();

		location.href = url;
		return false;
	}
	
	function moveTutorIntroduceFnc(tutorNo){
		
		location.href = '../tutor/tutorSelectOne.do?tutorNo=' + tutorNo;

	};
	
	function moveButPointFnc() {

		location.href = "/englishvillage/student/buyPoint.do";

	}
</script>


<style type="text/css">
ul {
	list-style: none outside none;
	padding-left: 0;
	margin: 0;
}

.slide-content .slide-content {
	margin-bottom: 60px;
}

.slider li {
	text-align: center;
	color: black;
	background-size: cover;
	background-position: center;
}

.slider h3 {
	margin: 0;
	padding: 100px 0;
	height: 250px;
}

.slide-content {
	width: 100%;
	height: 300px;
}

.tutorImgDiv {
	width: 340px;
	height: 200px;
	cursor: pointer;
}

.tutorImgDiv:hover {
	width: 340px;
	height: 200px;
	cursor: pointer;
}

.tutorImg {
	width: 340px;
	height: 200px;
}

.studyInfo {
	float: left;
	text-align: left;
	margin-left: 10px;
}

.studyTitle {
	cursor: pointer;
}

.studyTitle:hover {
	color: #772ce8;
	cursor: pointer;
}

.tutorName:hover {
	color: #772ce8;
	cursor: pointer;
}

.detailInfo {
	display: flex;
	margin-top: 5px;
}

.flagBox {
	width: 40px;
	height: 40px;
	float: left;
}

.flagIcon {
	width: 40px;
	height: 40px;
}

.scale {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.4s ease-in-out; /* 부드러운 모션을 위해 추가*/
}

.scale:hover {
	transform: scale(1.05);
	-webkit-transform: scale(1.05);
	-moz-transform: scale(1.05);
	-ms-transform: scale(1.05);
	-o-transform: scale(1.05);
}

.img {
	border-radius: 20px;
	overflow: hidden
} /* 부모를 벗어나지 않고 내부 이미지만 확대 */
.bird {
	background-image: url('bird.svg');
	background-size: auto 100%;
	width: 88px;
	height: 125px;
	will-change: background-position;
}
</style>
</head>

<body>
	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">
			<div id="pageName">마이 페이지</div>
			<div class="container">
				<!-- 최근 문의 테이블 시작 -->
				<div class="col-md-4">
					<h4>최근문의 내역</h4>
					<table class="table table-hover tableFontMain">
						<colgroup>
							<col width="10%">
							<col width="40%">
							<col width="20%">
							<col width="20%">

						</colgroup>
						<thead>
							<tr>
								<th class="textCenter">번호</th>
								<th class="textCenter">제목</th>
								<th class="textCenter">날짜</th>
								<th class="textCenter">상태</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${empty qusetionList}">
								<tr>
									<td colspan="4">
										<div class="td_status">문의내역이 존재하지 않습니다.</div>
									</td>
								</tr>
							</c:when>

							<c:when test="${not empty qusetionList}">
								<c:forEach var="questionDto" items="${qusetionList}">
									<tr>
										<td class="textCenter"><div id="idxVal" class="td_status">${questionDto.idx}</div></td>
										<td class="textLeft"><div class="td_status">
												<a href="#" onclick="QnAReadFnc(this, event);"
													style="color: black;"> ${questionDto.title} </a>
											</div></td>


										<td class="textCenter"><div class="td_status">
												<fmt:formatDate value="${questionDto.boardCreateDate}"
													pattern="yyyy-MM-dd" />
											</div></td>

										<td class="textCenter">
											<div class="td_status">
												<c:if test="${questionDto.answerStatus == 'Y'}">
									처리완료
								</c:if>
												<c:if test="${questionDto.answerStatus == 'N'}">
									처리중
								</c:if>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</table>
				</div>
				<!-- 최근문의내역 테이블 끝-->

				<!-- 최근 수강내역 -->
				<div class="col-md-5">
					<h4>최근수강 내역</h4>
					<table class="table table-hover tableFontMain">

						<colgroup>
							<col width="10%">
							<col width="50%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th class='textCenter'>번호</th>
								<th class='textCenter'>제목</th>
								<th class='textCenter'>날짜</th>
								<th class='textCenter'>튜터</th>
							</tr>
						</thead>

						<c:choose>
							<c:when test="${not empty studyList}">
								<c:forEach var="studyDto" items="${studyList}">
									<tr>
										<td class="textCenter"><div class="td_status">${studyDto.rnum}</div></td>
										<td style="vertical-align: middle;" class="textLeft"><div
												class="td_status">${studyDto.studyName}</div></td>

										<td class="textCenter"><div class="td_status">
												<fmt:formatDate value="${studyDto.studyDate}"
													pattern="yyyy-MM-dd" />
											</div></td>

										<td class="textCenter"><div class="td_status">
												<a
													href="/englishvillage/tutor/tutorSelectOne.do?tutorNo=${studyDto.tutorNo}">
													${studyDto.tutorName}</a>
											</div></td>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="4"><div class="td_status">수강내역이 존재하지
											않습니다.</div></td>
								<tr>
							</c:otherwise>
						</c:choose>

					</table>
				</div>
			</div>
			<!-- 최근수강내역 테이블 끝-->

			<!-- 강사소개 슬라이드 -->
			<div class="slide-wrap">
			<h4>더욱 많은 선생님들을 만나보세요 :)</h4>
				<div class="slide-content">
					<ul id="slider" class="slider">

						<c:forEach var="tutorDto" items="${tutorDtoList}" begin="0"
							end="5">
							<li>
								<div style="width: 100%">
									<div class="img">
										<div class="scale tutorImgDiv"
											onclick="moveTutorIntroduceFnc(${tutorDto.memberNo});">
											<img alt="image not found" class='tutorImg'
												src="<c:url value='/img/${tutorDto.storeFileName}'/>">
										</div>
									</div>

									<div class="detailInfo">
										<div class="studyInfo">

											<div class="flagBox">
												<img class="flagIcon" title="${tutorDto.memberCountry}"
													src="<c:url value='/resources/imgs/worldFlag/${tutorDto.memberCountry}.ico'/>">
											</div>

											<div class="studyInfo">
												<div class="studyTitle"
													onclick="moveTutorIntroduceFnc(${tutorDto.memberNo});">
													<Strong>${tutorDto.studyName}</Strong>
												</div>
												<div class="tutorName" onclick="moveTutorIntroduceFnc(${tutorDto.memberNo});">
													<span>${tutorDto.memberName}</span>
												</div>

												<div>
													<span class="score"> <c:forEach begin="1"
															end="${tutorDto.score}">
															<span style="color: #ff8b13;">★</span>
														</c:forEach> <c:forEach begin="${tutorDto.score}" end="4">
															<span style="color: grey;">★</span>
														</c:forEach> (${tutorDto.evaluationCount})
													</span>
												</div>
											</div>

										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!-- 강사소개 슬라이드 끝-->
		</div>
		<!-- 컨텐츠 박스 끝 -->
	</div>
	<!-- 메인박스 끝 -->

</body>
</html>