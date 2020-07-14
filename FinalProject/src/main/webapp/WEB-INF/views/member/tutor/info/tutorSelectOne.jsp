<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input:focus {
	outline: none;
}

textarea:focus {
	outline: none;
}

#mainBox {
padding: 200px;

}

#tutorYoutubeDiv {
	width: 700px;
	height: 400px;
}

#tutorInfoDiv {
	border: 1px solid black;
	width: 650px;
	height: 400px;
	margin-left: 50px;
	padding-top: 30px;
	padding-left: 40px;
	margin-bottom: 40px;
	border-radius: 20px;
}

.tutorImg {
	width: 300px;
}

#onLineCheckDiv {
	width: 120px;
	height: 40px;
	padding: 8px;
}

#studyStartBtn {
	border: 1px solid black;
	width: 120px;
	height: 40px;
	text-align: center;
	padding: 8px;
}

.title {
	
}

#nameTitle {
	width: 100px;
}

#nameTitleContent {
	width: 140px;
}

#tutorIntroduceDiv {
	clear: left;
	border: 1px solid black;
	width: 1400px;
	height: 200px;
	margin-bottom: 60px;
	border-radius: 20px;
	padding: 20px;
}

tr {
	height: 40px;
}

#writeComment {
	border: 1px solid black;
	width: 1400px;
	height: 200px;
	margin-bottom: 30px;
}

#modifyComment {
	border: 1px solid black;
	width: 1400px;
	height: 200px;
	margin-bottom: 60px;
	border-radius: 20px;
}

#studyTitle {
	clear: left;
	margin-top: 10px;
}

#studyTitleStr {
	font-weight: bold;
	font-size: 16px;
	padding-right: 20px;
	padding-left: 20px;
}

#studyTitle {
	
}

#commentList {
	width: 1400px;
}

.commentOne {
	margin-bottom: 20px;
	border: 1px solid black;
	border-radius: 20px;
}

.commentUserName {
	width: 300px;
	height: 200px;
	float: left;
	font-size: 20px;
	font-weight: bold;
	padding-top: 80px;
	text-align: center;
	font-size: 20px;
}

.commentCreateDateAndContents {
	width: 700px;
	height: 200px;
	float: left;
}

.commentCreateDate {
	width: 700px;
	height: 50px;
	padding-top: 15px;
	padding-left: 10px;
}

.commentContents {
	width: 700px;
	height: 150px;
	padding: 10px;
}

.commentScoreAndBtns {
	width: 380px;
	/* 나중에 500으로 수정  */
	height: 200px;
	float: left;
}

.commentScore {
	width: 380px;
	height: 130px;
	padding-left: 70px;
	padding-top: 40px;
}

.commentBtns {
	width: 380px;
	height: 70px;
	padding: 13px;
}

.commentModified {
	border: 1px solid black;
	width: 120px;
	height: 37px;
	padding-top: 10px;
	text-align: center;
	float: right;
}

#commentWriteBtn {
	border: 1px solid black;
	width: 120px;
	height: 37px;
	padding-top: 10px;
	text-align: center;
	float: right;
}

#commentModifyBtn {
	width: 120px;
	height: 37px;
	padding-top: 10px;
	text-align: center;
	float: right;
	margin-left: 30px;
}

#commentModifyCancelBtn {
	width: 120px;
	height: 37px;
	padding-top: 10px;
	text-align: center;
	float: right;
}

.commentDelete {
	width: 120px;
	height: 37px;
	padding-top: 10px;
	text-align: center;
	float: right;
	margin-left: 30px;
}

#writeCommentContents {
	border: 1px solid green;
	width: 700px;
	height: 200px;
	padding: 10px;
}

#modifyCommentContentsDiv {
	border: 1px solid green;
	width: 700px;
	height: 200px;
	padding: 10px;
}

/* 댓글쓰기 */
#commentContents {
	width: 680px;
	height: 180px;
	resize: none;
	border: none;
}

#modifyCommentContents {
	width: 680px;
	height: 180px;
	resize: none;
	border: none;
}

.scoreTitle {
	float: left;
	width: 100px;
	height: 5px;
	font-size: 25px;
	margin-right: 20px;
}

#scoreOne, #scoreTwo, #scoreThree, #scoreFour, #scoreFive {
	float: left;
	width: 5px;
	height: 5px;
	font-size: 25px;
	margin-right: 25px;
	color: grey;
	cursor: pointer;
}

#modifyScoreOne, #modifyScoreTwo, #modifyScoreThree, #modifyScoreFour,
	#modifyScoreFive {
	float: left;
	width: 5px;
	height: 5px;
	font-size: 25px;
	margin-right: 25px;
	color: grey;
	cursor: pointer;
}

#modifyCommentTitle {
	font-weight: bold;
	font-size: 25px;
}

#scoreAll {
	width: 300px;
	height: 5px;
	font-size: 25px;
}

.partTitle {
	font-weight: bold;
	font-size: 25px;
	margin-bottom: 10px;
}

.studyImpossibleBtn {
	display: inline-block;
	margin-bottom: 0;
	font-weight: normal;
	text-align: center;
	vertical-align: middle;
	touch-action: manipulation;
	background-image: none;
	border: 1px solid transparent;
	white-space: nowrap;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	border-radius: 4px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	color: #A3A7B8;
	background-color: #EFEFEF;
	border-color: #A8A8A8;
}

.tutorInfoBox {
	padding: 16px;
	width: 472px;
	border-radius: 4px;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1);
	border: solid 1px #f5f5f5;
}
</style> 

<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">
	$(document).ready(
			function() {
				$('#scoreOne').click(function() {
					$('#scoreOne').css('color', 'blue');
					$('#scoreTwo').css('color', 'grey');
					$('#scoreThree').css('color', 'grey');
					$('#scoreFour').css('color', 'grey');
					$('#scoreFive').css('color', 'grey');
					$('#scoreNum').val(1);
				});
				$('#scoreTwo').click(function() {
					$('#scoreOne').css('color', 'blue');
					$('#scoreTwo').css('color', 'blue');
					$('#scoreThree').css('color', 'grey');
					$('#scoreFour').css('color', 'grey');
					$('#scoreFive').css('color', 'grey');
					$('#scoreNum').val(2);
				});
				$('#scoreThree').click(function() {
					$('#scoreOne').css('color', 'blue');
					$('#scoreTwo').css('color', 'blue');
					$('#scoreThree').css('color', 'blue');
					$('#scoreFour').css('color', 'grey');
					$('#scoreFive').css('color', 'grey');
					$('#scoreNum').val(3);
				});
				$('#scoreFour').click(function() {
					$('#scoreOne').css('color', 'blue');
					$('#scoreTwo').css('color', 'blue');
					$('#scoreThree').css('color', 'blue');
					$('#scoreFour').css('color', 'blue');
					$('#scoreFive').css('color', 'grey');
					$('#scoreNum').val(4);
				});
				$('#scoreFive').click(function() {
					$('#scoreOne').css('color', 'blue');
					$('#scoreTwo').css('color', 'blue');
					$('#scoreThree').css('color', 'blue');
					$('#scoreFour').css('color', 'blue');
					$('#scoreFive').css('color', 'blue');
					$('#scoreNum').val(5);
				});

				/* 이하 수정 */

				$('#modifyScoreOne').click(function() {
					$('#modifyScoreOne').css('color', 'blue');
					$('#modifyScoreTwo').css('color', 'grey');
					$('#modifyScoreThree').css('color', 'grey');
					$('#modifyScoreFour').css('color', 'grey');
					$('#modifyScoreFive').css('color', 'grey');
					$('#modifyScoreNum').val(1);
				});
				$('#modifyScoreTwo').click(function() {
					$('#modifyScoreOne').css('color', 'blue');
					$('#modifyScoreTwo').css('color', 'blue');
					$('#modifyScoreThree').css('color', 'grey');
					$('#modifyScoreFour').css('color', 'grey');
					$('#modifyScoreFive').css('color', 'grey');
					$('#modifyScoreNum').val(2);
				});
				$('#modifyScoreThree').click(function() {
					$('#modifyScoreOne').css('color', 'blue');
					$('#modifyScoreTwo').css('color', 'blue');
					$('#modifyScoreThree').css('color', 'blue');
					$('#modifyScoreFour').css('color', 'grey');
					$('#modifyScoreFive').css('color', 'grey');
					$('#modifyScoreNum').val(3);
				});
				$('#modifyScoreFour').click(function() {
					$('#modifyScoreOne').css('color', 'blue');
					$('#modifyScoreTwo').css('color', 'blue');
					$('#modifyScoreThree').css('color', 'blue');
					$('#modifyScoreFour').css('color', 'blue');
					$('#modifyScoreFive').css('color', 'grey');
					$('#modifyScoreNum').val(4);
				});
				$('#modifyScoreFive').click(function() {
					$('#modifyScoreOne').css('color', 'blue');
					$('#modifyScoreTwo').css('color', 'blue');
					$('#modifyScoreThree').css('color', 'blue');
					$('#modifyScoreFour').css('color', 'blue');
					$('#modifyScoreFive').css('color', 'blue');
					$('#modifyScoreNum').val(5);
				});

				if ($('#memberGrade').val() == 'Y'
						|| $('#evaluateCheck').val() == 'Y'
						|| $('#evaluateCheck').val() == '') {
					$('#commentWriteFormDiv').css("display", "none");
				}

				$('#commentModifyCancelBtn').click(function() {

					$('#commentModifyFormDiv').css("display", "none");

				});

				$('#modifyBtn').click(function() {

					$('#commentModifyFormDiv').css("display", "");

				});

			});

	var removeCommentFnc = function() {

		$('#commentRemoveForm').submit();
	}

	function modifyFormFnc() {

		if ($('#modifyCommentContents').val() == "") {
			alert("내용을 입력해주세요");
			$('#modifyCommentContents').focus();
			return false;
		} else if ($('#modifyScoreNum').val() == "") {
			alert("강사의 평점을 주세요");
			return false
		}

	}

	function writeFormFnc() {

		if ($('#commentContents').val() == "") {
			alert("내용을 입력해주세요");
			$('#commentContents').focus();
			return false;
		} else if ($('#scoreNum').val() == "") {
			alert("강사의 평점을 주세요");
			return false
		}

	}
</script>


</head>

<body>
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />

	<div id="mainBox">

		<div class="tutorInfoBox">


				<iframe width="700px" height="400px;" src="${tutorDto.youtubeUrl }"
					frameborder="0" allowfullscreen></iframe>

			<div>
				<div id="onLineCheckDiv">
					<span>On-Line</span>
					<c:choose>
						<c:when test="${tutorDto.statusCheck eq 'Y'}">
							<span style="color: blue">●</span>
						</c:when>
						<c:otherwise>
							<span style="color: red">●</span>
						</c:otherwise>
					</c:choose>
				</div>

				<div id="studyTitle">
					<span id="studyTitleStr">강의제목</span> <span id="studyTitle">${tutorDto.studyName}</span>
				</div>
				<div class="tutorImgDiv">
					<img alt="image not found" class="tutorImg"
						src="<c:url value='/img/${tutorDto.storeFileName}'/>">
				</div>
				<div id="tutorInfoTableDiv">
					<table id="tutorInfoTable">

						<tr>
							<td id="nameTitle">이름</td>
							<td id="nameTitleContent">${tutorDto.memberName}</td>
						</tr>
						<tr>
							<td>국적</td>
							<td>${tutorDto.memberCountry}</td>
						</tr>
						<tr>
							<td>나이</td>
							<td>${tutorDto.age}</td>
						</tr>
						<tr>
							<td>평점</td>
							<td><c:forEach begin="1" end="${tutorDto.score}">
									<span style="color: blue;">★</span>
								</c:forEach> <c:forEach begin="${tutorDto.score}" end="4">
									<span style="color: grey;">★</span>
								</c:forEach></td>
						</tr>
						<tr>
							<td>수업료</td>
							<td>${tutorDto.price}</td>
						</tr>
					</table>

					<c:choose>
						<c:when test="${tutorDto.statusCheck eq 'Y'}">
							<div class="btn btn-primary" onclick="send();">수업시작</div>
						</c:when>

						<c:otherwise>
							<div class="studyImpossibleBtn">수업시작</div>
						</c:otherwise>
					</c:choose>
				</div>
				<!-- 사진 -->

				<input id="tutorNoNum" type="hidden" value="${tutorDto.memberNo}">
				<input id="tutorPrice" type="hidden" value="${tutorDto.price}">
				<input id="memberPoint" type="hidden" value="${member.memberPoint}">
				
				<input id="statusCheck" type="hidden" value="${tutorDto.statusCheck}">
				
			</div>

		</div>


		<!-- 소개글 -->
		<div class="partTitle" style="clear: left;">강의 소개</div>
		<div id="tutorIntroduceDiv">${tutorDto.tutorIntroduce}</div>


		<!-- 댓글 -->

		<!-- 댓글 입력부분 -->
		<%-- 		<c:if test="${ }"> --%>
		<!-- 		이미 입력했을경우 작성하는 폼이 안뜨게끔 -->

		<div class="partTitle" style="clear: left;">
			${tutorDto.evaluationCount}개의 후기</div>

		<input id="memberGrade" type="hidden" value="${member.memberGrade}">
		<input id="evaluateCheck" type="hidden"
			value="${studentTutorCommentDtoList.evaluateCheck}">

		<div id="commentWriteFormDiv">
			<form id="commentWrite" action="writeCommentCtr.do" method="post"
				onsubmit="return writeFormFnc();">
				<div id="writeComment" class="clearfix">
					<!-- 댓글 입력창 -->
					<div class="commentUserName">${member.memberName}회원님</div>
					<div class="commentCreateDateAndContents clearfix">
						<div id="writeCommentContents">
							<textarea id="commentContents" name="evaluateContent"
								placeholder="댓글을 입력해주세요"></textarea>
						</div>
					</div>
					<div class="commentScoreAndBtns">
						<div class="commentScore clearfix">
							<div class="scoreTitle">평 점</div>

							<div id="scoreOne">★</div>
							<div id="scoreTwo">★</div>
							<div id="scoreThree">★</div>
							<div id="scoreFour">★</div>
							<div id="scoreFive">★</div>
							<input id="scoreNum" type="hidden" name="score" value="">
						</div>
						<div class="commentBtns clearfix">
							<!-- 버튼 -->
							<input type="submit" id="commentWriteBtn" class="btn btn-primary"
								value="작성하기">
						</div>
					</div>
				</div>

				<input type="hidden" name="studentName" value="${member.memberName}">
				<input id="studentNoNum" type="hidden" name="studentNo"
					value="${member.memberNo}"> <input type="hidden"
					name="tutorNo" value="${tutorDto.memberNo}">

			</form>
		</div>









		<!-- 댓글 확인 부분 -->
		<c:choose>
			<c:when test="${not empty tutorCommentDtoList}">
				<div id="commentList">
					<!-- 댓글 입력창 -->
					<c:forEach var="tutorCommentDto" items="${tutorCommentDtoList}">

						<div class="commentOne clearfix">
							<div class="commentUserName">${tutorCommentDto.studentName}
							</div>
							<div class="commentCreateDateAndContents">
								<div class="commentCreateDate">
									<span style="margin-right: 20px;">작성 날짜</span>
									<fmt:formatDate value="${tutorCommentDto.evaluateCreateDate}"
										pattern="yyyy-MM-dd" />

								</div>
								<div class="commentContents">
									${tutorCommentDto.evaluateContent}</div>
							</div>
							<div class="commentScoreAndBtns">
								<div class="commentScore clearfix">
									<div class="scoreTitle">평 점</div>
									<div id="scoreAll">
										<c:forEach begin="1" end="${tutorCommentDto.score}">
											<span style="color: blue;">★</span>
										</c:forEach>
										<c:forEach begin="${tutorCommentDto.score}" end="4">
											<span style="color: grey;">★</span>
										</c:forEach>
									</div>
								</div>
								<div class="commentBtns clearfix">
									<!-- 버튼 -->
									<c:if test="${tutorCommentDto.studentNo eq member.memberNo}">
										<form id="commentRemoveForm"
											action="./tutorCommentRemoveCtr.do" method="post">


											<input type="submit" id="commentModifyBtn"
												class="commentDelete btn btn-primary" value="삭제하기">
											<input type="hidden" name="tutorNo"
												value="${tutorCommentDto.tutorNo}"> <input
												type="hidden" name="studentNo"
												value="${tutorCommentDto.studentNo}">
										</form>

										<div id="modifyBtn" class="commentModified btn btn-primary">
											수정하기</div>
									</c:if>
								</div>
							</div>
						</div>

						<c:if test="${tutorCommentDto.studentNo eq member.memberNo}">
							<div id="commentModifyFormDiv" style="display: none;">
								<form id="commentModifyForm" action="./tutorCommentModifyCtr.do"
									method="post" onsubmit="return modifyFormFnc();">
									<div id="modifyCommentTitle">댓글수정</div>
									<div id="modifyComment" class="clearfix">
										<!-- 댓글 입력창 -->
										<div class="commentUserName">${studentTutorCommentDtoList.studentName}
											회원님</div>
										<div class="commentCreateDateAndContents clearfix">
											<div id="modifyCommentContentsDiv">
												<textarea id="modifyCommentContents" name="evaluateContent"
													placeholder="댓글을 입력해주세요">${studentTutorCommentDtoList.evaluateContent}</textarea>
											</div>
										</div>
										<div class="commentScoreAndBtns">
											<div class="commentScore clearfix">
												<div class="scoreTitle">평 점</div>

												<div id="modifyScoreOne">★</div>
												<div id="modifyScoreTwo">★</div>
												<div id="modifyScoreThree">★</div>
												<div id="modifyScoreFour">★</div>
												<div id="modifyScoreFive">★</div>
												<input id="modifyScoreNum" type="hidden" name="score"
													value="">
											</div>
											<div class="commentBtns clearfix">
												<!-- 버튼 -->
												<input type="submit" id="commentModifyBtn"
													class="btn btn-primary" value="수정완료"> <input
													type="button" id="commentModifyCancelBtn"
													class="btn btn-primary" value="취소">
											</div>
										</div>
									</div>

									<input type="text" name="studentName"
										value="${member.memberName}"> <input id="studentNoNum"
										type="text" name="studentNo"
										value="${studentTutorCommentDtoList.studentNo}"> <input
										type="text" name="tutorNo"
										value="${studentTutorCommentDtoList.tutorNo}">

								</form>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</c:when>
			<c:when test="${empty tutorCommentDtoList}">
				<div style="font-size: 40px; margin-top: 40px;">
					아직 등록된 후기가 없습니다
				</div>
			</c:when>
		</c:choose>
		</div>
</body>

<script type="text/javascript"
	src="/englishvillage/resources/js/alert.js"></script>

</html>