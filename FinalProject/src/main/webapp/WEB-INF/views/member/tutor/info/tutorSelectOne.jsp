<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/englishvillage/resources/css/mail.css">
<style type="text/css">

.clearfix:after {
	content: "";
	display: block;
	clear: both;
}

input:focus {outline:none;}
textarea:focus {outline:none;}
#tutorYoutubeDiv {

	width : 700px;
	height: 400px;
	float: left;
}

#tutorInfoDiv {

	border : 1px solid black;
	width: 650px;
	height: 400px;
	margin-left : 50px;
	padding-top : 30px;
	float: left;
	padding-left : 20px;
	margin-bottom: 40px;
	border-radius: 20px;
}

#contents {
	margin-left: 50px;
	margin-top : 100px;
	padding-left : 200px;
	width : 1800px;
	padding-bottom: 200px;
}
#tutorImgDiv{
	clear: left;
	float : left;
}
#tutorImg{
	width: 300px;
	height: 220px;
	margin-top:50px;
}
#onLineCheckDiv {
	width: 120px;
	height: 40px;
	text-align: center;
	padding : 8px;
	margin-left:80px;
	margin-right:10px;
	float:left;
}
#studyStartBtn{
	border: 1px solid black;
	width: 120px;
	height: 40px;
	text-align: center;
	padding : 8px;
 	float:left;
}

#tutorInfoTableDiv{
	float : left;
	margin-top: 30px;
	margin-left : 30px;
}
.title{

}

#studyTitle{
	width: 100px;
}
#studyTitleContent{
	width: 140px;
}

#tutorIntroduceDiv{
	clear: left;
	border: 1px solid black;
	width: 1400px;
	height: 200px;
	margin-bottom: 60px;
	border-radius: 20px;
	padding : 20px;
	
}
tr {
	height: 40px;
}

#writeComment{
	border: 1px solid black;
	width: 1400px;
	height: 200px;
	margin-bottom: 70px;

}

#commentList {
	width: 1400px;
}

.commentOne{
	margin-bottom: 20px;
	border: 1px solid black;
}
.commentUserName{
	width : 300px;
	height: 200px;
	float : left;
	font-size: 20px;
	font-weight: bold;
	padding-top: 80px;
	text-align: center;
}
.commentCreateDateAndContents{
	width : 700px;
	height: 200px;
	float: left;
}
.commentCreateDate{
	width: 700px;
	height: 50px;
	padding-top: 15px;
	padding-left: 10px;
}
.commentContents{
	width: 700px;
	height: 150px;
	padding: 10px;
	
}


.commentScoreAndBtns{
	width : 380px;
	/* 나중에 500으로 수정  */
	
	height : 200px;
	float: left;
}
.commentScore{
	width: 380px;
	height: 130px;
	padding-left : 70px;
	padding-top : 40px;
}

.commentBtns{
	width : 380px;
	height: 70px;
	padding : 13px;
}
.commentModified{
	border: 1px solid black;
	width : 120px;
	height: 37px;
	padding-top : 10px;
	text-align: center;
	float : right;
}

#commentWriteBtn{
	border: 1px solid black;
	width : 120px;
	height: 37px;
	padding-top : 10px;
	text-align: center;
	float : right;
}

.commentDelete{

	border: 1px solid black;
	width : 120px;
	height: 37px;
	padding-top : 10px;
	text-align: center;
	float : right;
	margin-left: 30px;

}

#writeCommentContents{
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
	border:none;
}

.scoreTitle{
	float:left;
	width: 100px;
	height:5px;
	font-size :25px;
	margin-right: 20px;
}

#scoreOne, #scoreTwo, #scoreThree, #scoreFour, #scoreFive {
	float : left;
	width : 5px;
	height: 5px;
	font-size :25px;
	margin-right: 25px;
	color : grey;
	cursor: pointer;
}

#scoreAll {
	width : 300px;
	height: 5px;
	font-size :25px;
}



.partTitle{
	font-weight: bold;
	font-size: 25px;
	margin-bottom: 10px;
	

}

</style>

<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">


	$(document).ready(function(){
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
		
		
		$('#studyStartBtn').click(function() {
			
		});
		
	});

	var removeCommentFnc = function(studentNo, tutorNo) {
		alert(studentNo);
		alert(tutorNo);
		
		location.href = './tutorCommentRemoveCtr.do?studentNo=' + studentNo + '&tutorNo=' + tutorNo;
		
	}


	var modifyCommentFnc = function(studentNo, tutorNo) {
		alert(studentNo);
		alert(tutorNo);
		
		location.href = './tutorCommentModifyCtr.do?studentNo=' + studentNo + '&tutorNo=' + tutorNo;

	}

</script>

 
</head>

<body>
<jsp:include page="/WEB-INF/views/common/Header.jsp" />

	<div id="contents" class="clearfix">
		<!-- 소개영상 -->
		<div class="partTitle">
			튜터 소개
		</div>
		<div id="tutorYoutubeDiv">
			<iframe width="700px" height="400px;" src="${tutorDto.youtubeUrl }" frameborder="0" allowfullscreen></iframe>
		</div>
		
		<!-- 사람얼굴 -->

		<div id="tutorInfoDiv" class="clearfix">
			<!-- onLine과 수업시작버튼 -->
			<div class="clearfix">
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
				
				<div class="btn btn-primary" onclick="send();">
					수업시작
				</div>
			</div>
			<!-- 사진 -->
			<div id="tutorImgDiv">
				
						<img alt="image not found" id="tutorImg"
						src="<c:url value='/img/${tutorDto.storeFileName}.jpg'/>">
			</div>
			<div id="tutorInfoTableDiv">
				<table id="tutorInfoTable">
					<tr>
						<td id="studyTitle">강의제목</td>
						<td id="studyTitleContent">${tutorDto.studyName}</td>
					</tr>
					<tr>
						<td>이름</td>
						<td>${tutorDto.memberName}</td>
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
						<td>
							<c:forEach begin="1" end="${tutorDto.score}">
								<span style="color: blue;">★</span>
							</c:forEach>
							<c:forEach begin="${tutorDto.score}" end="4">
								<span style="color: grey;">★</span>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td>수업료</td>
						<td>${tutorDto.price}</td>
					</tr>
				</table>
				
				<input id="tutorNoNum" type="hidden" value="${tutorDto.memberNo}">
				
			</div>
		</div>

		
		<!-- 소개글 -->
		<div  class="partTitle" style="clear:left;">
			강의 소개
		</div>
		<div id="tutorIntroduceDiv">
			${tutorDto.tutorIntroduce}
		</div>

	
		<!-- 댓글 -->

	<!-- 댓글 입력부분 -->
<%-- 		<c:if test="${ }"> --%>
<!-- 		이미 입력했을경우 작성하는 폼이 안뜨게끔 -->
	
		<div  class="partTitle" style="clear:left;">
			${tutorDto.evaluationCount}개의 후기
		</div>	
	
		<form id="commentWrite" action="writeCommentCtr.do" method="post">
			<div id="writeComment" class="clearfix">
				<!-- 댓글 입력창 -->
				<div class="commentUserName">${member.memberName} 회원님 </div>
				<div class="commentCreateDateAndContents clearfix">
					<div id="writeCommentContents" >
						<textarea id="commentContents" name="evaluateContent" placeholder="댓글을 입력해주세요"></textarea>
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
						<input type="submit" id="commentWriteBtn" class="btn btn-primary" value="작성하기">
					</div>
				</div>
			</div>
			
			<input type="text" name="studentName" value="${member.memberName}">
			<input id="studentNoNum" type="text" name="studentNo" value="${member.memberNo}">
			<input type="text" name="tutorNo" value="${tutorDto.memberNo}">
			
		</form>

<%-- 		</c:if> --%>

	<!-- 댓글 확인 부분 -->
		<c:if test="${tutorCommentDtoList != null}">
			<div id="commentList">
				<!-- 댓글 입력창 -->
				<c:forEach var="tutorCommentDto" items="${tutorCommentDtoList}">
				
					<div class="commentOne clearfix">
						<div class="commentUserName">${tutorCommentDto.studentName} </div>
						<div class="commentCreateDateAndContents">
							<div class="commentCreateDate">
								<span style="margin-right: 20px;">작성 날짜</span>
								<fmt:formatDate value="${tutorCommentDto.evaluateCreateDate}" pattern="yyyy-MM-dd"/>
								
							</div>
							<div class="commentContents">
								${tutorCommentDto.evaluateContent}
							</div>
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
									<div class="commentDelete btn btn-primary" onclick="removeCommentFnc(${tutorCommentDto.tutorNo}, ${tutorCommentDto.studentNo})">
										삭제하기
									</div>
									<div class="commentModified btn btn-primary" onclick="modifyCommentFnc(${tutorCommentDto.tutorNo}, ${tutorCommentDto.studentNo})">
										수정하기
									</div>
									
									
			
			
								</c:if>
							</div>
						</div>
					</div>	
				</c:forEach>
				
				
			</div>
		</c:if>

	</div>
  
</body>
	
	
<script type="text/javascript" src="/englishvillage/resources/js/alert.js"></script>
	
</html>