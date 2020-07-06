<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input:focus {outline:none;}
textarea:focus {outline:none;}
#tutorYoutubeDiv {

	width : 700px;
	height: 400px;
	border : 1px solid red;
	float: left;
}

#tutorInfoDiv {

	border : 1px solid black;
	width: 600px;
	height: 400px;
	margin-left : 100px;
	padding-top : 30px;
	float: left;
	margin-bottom: 40px;
}

#contents {
	margin-left: 50px;
	margin-top : 100px;
	padding-left : 200px;
	width : 1800px;
	border : 1px solid green;
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
	border: 1px solid black;
	width: 120px;
	height: 40px;
	text-align: center;
	padding : 8px;
	margin-left:320px;
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
#tutorInfoTable{
	border: 1px solid black;
}

#studyTitle{
	width: 80px;
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
	border: 1px solid black;
	width: 1400px;
	height: 200px;
}

.commentOne{
	margin-bottom: 20px;
}
.commentUserName{
	border: 1px solid black;
	width : 300px;
	height: 200px;
	float : left;
	font-size: 20px;
	font-weight: bold;
	padding-top: 80px;
	text-align: center;
}
.commentCreateDateAndContents{
	border: 1px solid black;
	width : 700px;
	height: 200px;
	float: left;
}
.commentCreateDate{
	border: 1px solid black;
	width: 700px;
	height: 50px;
	padding-top: 15px;
	padding-left: 10px;
}
.commentContents{
	border: 1px solid black;
	width: 700px;
	height: 150px;
	padding: 10px;
	
}


.commentScoreAndBtns{
	border: 1px solid black;
	width : 380px;
	/* 나중에 500으로 수정  */
	
	height : 200px;
	float: left;
}
.commentScore{
	border: 1px solid black;
	width: 380px;
	height: 130px;
	padding-left : 70px;
	padding-top : 40px;
}

.commentBtns{
	border: 1px solid black;
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
	width: 70px;
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
	cursor: pointer;
}
</style>

<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">


	$(document).ready(function(){
		$('#scoreOne').click(function() {
			$('#scoreOne').css('color', 'yellow');
			$('#scoreTwo').css('color', 'black');
			$('#scoreThree').css('color', 'black');
			$('#scoreFour').css('color', 'black');
			$('#scoreFive').css('color', 'black');
			$('#scoreNum').val(1);
		});
		$('#scoreTwo').click(function() {
			$('#scoreOne').css('color', 'yellow');
			$('#scoreTwo').css('color', 'yellow');
			$('#scoreThree').css('color', 'black');
			$('#scoreFour').css('color', 'black');
			$('#scoreFive').css('color', 'black');
			$('#scoreNum').val(2);
		});
		$('#scoreThree').click(function() {
			$('#scoreOne').css('color', 'yellow');
			$('#scoreTwo').css('color', 'yellow');
			$('#scoreThree').css('color', 'yellow');
			$('#scoreFour').css('color', 'black');
			$('#scoreFive').css('color', 'black');
			$('#scoreNum').val(3);
		});
		$('#scoreFour').click(function() {
			$('#scoreOne').css('color', 'yellow');
			$('#scoreTwo').css('color', 'yellow');
			$('#scoreThree').css('color', 'yellow');
			$('#scoreFour').css('color', 'yellow');
			$('#scoreFive').css('color', 'black');
			$('#scoreNum').val(4);
		});
		$('#scoreFive').click(function() {
			$('#scoreOne').css('color', 'yellow');
			$('#scoreTwo').css('color', 'yellow');
			$('#scoreThree').css('color', 'yellow');
			$('#scoreFour').css('color', 'yellow');
			$('#scoreFive').css('color', 'yellow');
			$('#scoreNum').val(5);
		});
		
		
		
	});




</script>
</head>

<body>
<jsp:include page="/WEB-INF/views/Header3.jsp" />
	<div id="contents">
		<!-- 소개영상 -->
		
		<div id="tutorYoutubeDiv">
			<iframe width="700px" height="400px;" src="https://www.youtube.com/embed/uR8Mrt1IpXg" frameborder="0" allowfullscreen></iframe>
		</div>
		
		<!-- 사람얼굴 -->
		<div id="tutorInfoDiv">
			
			<!-- onLine과 수업시작버튼 -->
			<div>
				<div id="onLineCheckDiv">
					On-Line
				</div>
				
				<div id="studyStartBtn">
					수업시작
				</div>
			</div>
			<!-- 사진 -->
			<div id="tutorImgDiv">
				<img id="tutorImg" src="/englishvillage/resources/imgs/sl2.png">
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
								<span style="color: yellow;">★</span>
							</c:forEach>
							<c:forEach begin="${tutorDto.score}" end="4">
								<span style="color: black;">★</span>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td>수업료</td>
						<td>${tutorDto.price}</td>
					</tr>
					<tr>
						<td colspan="2">${tutorDto.evaluationCount} 개의 후기</td>
					</tr>
				</table>
				
			</div>
		</div>

		
		<!-- 소개글 -->
		<div id="tutorIntroduceDiv">
			${tutorDto.tutorIntroduce}
		</div>

	
		<!-- 댓글 -->

	<!-- 댓글 입력부분 -->
		<form action="writeCommentCtr.do" method="post">
			<div id="writeComment">
				<!-- 댓글 입력창 -->
				<div class="commentUserName">${member.memberName} 회원님 </div>
				<div class="commentCreateDateAndContents">
					<div id="writeCommentContents" >
						<textarea id="commentContents" name="commentContents" placeholder="댓글을 입력해주세요">댓글 내용</textarea>
					</div>
				</div>
				<div class="commentScoreAndBtns">
					<div class="commentScore">
						<div class="scoreTitle">평 점</div>

						<div id="scoreOne">★</div>
						<div id="scoreTwo">★</div>
						<div id="scoreThree">★</div>
						<div id="scoreFour">★</div>
						<div id="scoreFive">★</div>
						<input id="scoreNum" type="hidden" name="score" value="">
					</div>
					<div class="commentBtns">
						<!-- 버튼 -->
						<div id="commentWriteBtn">
							작성하기
						</div>
					</div>
				</div>
			</div>
			
			<input type="hidden" name="studentName" value="${member.memberName}">
			<input type="hidden" name="studentNo" value="${member.memberNo}">
			<input type="hidden" name="tutorNo" value="${tutorDto.memberNo}">
			
		</form>

	<!-- 댓글 확인 부분 -->
		<div id="commentList">
			<!-- 댓글 입력창 -->
			<div class="commentOne">
				<div class="commentUserName">session에 있는 이름 </div>
				<div class="commentCreateDateAndContents">
					<div class="commentCreateDate">
						작성일자
					</div>
					<div class="commentContents">
						댓글 내용
					</div>
				</div>
				<div class="commentScoreAndBtns">
					<div class="commentScore">
						<div class="scoreTitle">평 점</div>
					</div>
					<div class="commentBtns">
						<!-- 버튼 -->
						<div class="commentModified">
							수정하기
						</div>
					</div>
				</div>
			</div>	
		</div>

	</div>