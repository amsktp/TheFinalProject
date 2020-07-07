<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>

#preview {
	border:1px solid black;
	width: 200px;
	height: 200px;
	float:left;
	position:relative;
	vertical-align: bottom;
}

#previewImg{
	width:200px;
	height: 200px;
}

#inputPhotoBtn{
	position:relative;
	top:180px; 
	right:20px;
}

.tutorInfoDiv {
	border: 1px solid black;
	width: 340px;
	height: 317px;
	margin-top: 10px;
	margin-right: auto;
	margin-left: auto;
	margin-bottom: 30px;
}

.tutorImgDiv {
	width: 340px;
	height: 200px;
}

.tutorImg{
	width: 337px;
	height: 200px;
}

.studyTitle {
	width: 300px;
	height: 40px;
	margin-left: 10px;
	margin-top: 10px;
	font-size: 17px;
	font-weight: bold;
}

.price{
	margin-left: 10px;
	font-size: 15px;
	font-weight: bold;
}

.score{
	width : 110px;
	margin-top : 10px;
	margin-left: 10px;
	font-size: 15px;
	font-weight: bold;
	border-right: 1px solid black;
	float:left;
}

.country{
	margin-top: 10px;
	padding-left: 10px;
	float: left;
}

.tutorName {
	margin-top:7px;
	font-size: 22px;
	font-weight: bold;
	margin-right : 20px;
	float: right;
}

#contentsDiv {
	padding-top: 100px;
}

#photoAndInfoDiv {
	width: 702px;
	height: 202px;
	margin-bottom: 30px;
}

#inputPhotoDiv {
	height: 200px;
	width: 240px;
	float: left;
}

#selectPictureButton {
	width: 30px;
	height: 30px;
	border-radius: 20px;
}

#inputInfoDiv {
	height: 200px;
	width: 450px;
	float: left;
}

td {
	height: 40px;
}

#firstTd {
	width: 80px;
}

#priceInput {
	border: none;
	border-bottom: 1px solid black;
}

#titleInput {
	width: 230px;
	border: none;
	border-bottom: 1px solid black;
}

#tutorIntroduceBox {
	width: 700px;
	height: 200px;
	resize: none;
	border-radius: 20px;
	border: 1px solid #707070;
	padding: 20px;
}

#tutorIntroduceBoxDiv {
	margin-bottom: 20px;
}

#urlInput {
	border: none;
	border-bottom: 1px solid black;
	width: 550px;
	margin-right: 20px;
}

#urlBtn {
	border: none;
	font-weight: bold;
	background-color: white;;
}

#inputAllDiv {
	margin-left: 15%;
	float: left;
}

#outputAllDiv {
	width: 702px;
	height: 800px;
	float: left;
	margin-left: 50px;
	border-left: 1px solid grey;
}

.clearfix:after {
	content: "";
	display: block;
	clear: both;
}

#tutorRegisterBtn {
	width: 170px;
	height: 50px;
	border: 1px solid black;
	text-align:center;
	padding-top : 10px;
	padding-bottom : 10px;
	font-size : 20px;
	font-weight : bold;
	color : white;
	background-color : #186B4C;
	margin-right: 100px;
	
	float:right;
}

#mainMoveBtn {
	width: 170px;
	height: 50px;
	border: 1px solid black;
	text-align:center;
	padding-top : 10px;
	padding-bottom : 10px;
	font-size : 20px;
	font-weight : bold;
	color : white;
	background-color : #186B4C;
	margin-left: 100px;
}

#resultBtnDiv{
	margin-top: 130px;
}


#previewInfoDiv{
	width:100%; 
	text-align: center;
	margin-top: 50px;
	margin-bottom: 50px;
	font-size: 30px;
	font-weight: bold;
}

input:focus {outline:none;}
textarea:focus {outline:none;}
</style>

<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script>
	

	$(document).ready(function() {
		
		/* 가격 입력 시 미리보기 반영 */
		$('#priceInput').change(function() {
			$('#priceDiv').text($('#priceInput').val());
		});

		/* 제목 입력 시 미리보기 반영 */
		$('#titleInput').change(function() {
			$('#studyTitleDiv').text($('#titleInput').val());
		});
		
		/* 사진 추가 시 미리보기 */
		$('#uploadFile').change(function(e) {
			
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			
			filesArr.forEach(function(f) {
				if(!f.type.match("image.*")) {
					alert("확장자는 이미지 확장자만 가능합니다.");
					return;
				}
				sel_file = f;
				
				var reader = new FileReader();
				reader.onload = function(e){
					$('#previewImg').attr("src", e.target.result);
					$('#tutorImg').attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
		});

		/* 유튜브 url 입력 후 확인 클릭하면 동영상이 나옴 */
		$('#urlBtn').click(function() {
			$('#yotubePreview').attr("src", $('#urlInput').val());
		});
		
		/* 메인으로 버튼 클릭 */
		$('#mainMoveBtn').click(function() {
			location.href = './home.do';
		});
		
		$('#tutorRegisterBtn').click(function() {
			
			if($('#uploadFile').val() == false){
				alert('사진을 선택해주세요');
				return false;
			} else if($('#priceInput').val() == ''){
				alert('금액을 입력해주세요');
				return false;
			} else if($('#titleInput').val() == ''){
				alert('강의 제목을 입력해주세요');
				return false;
			} else if($('#tutorIntroduceBox').val() == ''){
				alert('소개를 입력해주세요');
				return false;
			} else if($('#urlInput').val() == ''){
				alert('유튜브 url을 입력해주세요');
				return false;
			}
			
			$('#tutorInfoInputForm').submit()
		});
	});
		
</script>

<body>

	<jsp:include page="/WEB-INF/views/Header3.jsp" />

	<div id="contentsDiv" >
		<form id="tutorInfoInputForm" action="tutorRegisterCtr.do" method="post">
			<div id="inputAllDiv" class="clearfix">
				<div id="photoAndInfoDiv" >
				
					<div id="inputPhotoDiv" class="clearfix">
					    <div id='preview'>
					        <img id="previewImg" alt="사진을 추가해주세요">
					    </div>
					    <div id="inputPhotoBtn">
					    	<input type="file" id="uploadFile" name='profilePicture' value="사진선택" class="hidden"/>
							<label id="fileSelectLabel" for="uploadFile"><img id="selectPictureButton" src="/englishvillage/resources/imgs/bg1.jpg"></label>
					    </div>
					</div>
					<div id="inputInfoDiv" class="clearfix">
						<table>
							<tr id="firstTr">
								<td id="firstTd">이름</td>
								<td>${member.memberName}</td>
							</tr>
							<tr>
								<td>국적</td>
								<td>${member.memberCountry}</td>
							</tr>
							<tr>
								<td>나이</td>
								<td><fmt:formatDate value="${member.memberBirthDate}" pattern="yyyy-MM-dd"/> </td>
							</tr>
							<tr>
								<td>수업료</td>
								<td><input id='priceInput' type="text" name="price"> 원 / 40분</td>
							</tr>
							<tr>
								<td>강의제목</td>
								<td><input id='titleInput' type="text" name="studyName"></td>
							</tr>
						</table>
					</div>
			
				</div>
				
				<div id="tutorIntroduceBoxDiv">
					<textarea id="tutorIntroduceBox" rows="10" cols="30" name="tutorIntroduce" placeholder="회원님의 소개를 입력해주세요"></textarea>
				</div>
			
				<div>
					본인소개영상
					<div>
						<iframe id="yotubePreview" width="700" height="300" frameborder="0" allowfullscreen></iframe>
					</div>
					<div>
						유튜브 url 입력 <input id="urlInput" name="youtubeUrl" type="text"><input id="urlBtn" type="button" value="확인">
					</div>
				</div>
			</div>	
	
			<div id="outputAllDiv" class="clearfix">
			
				<div id="previewInfoDiv">
					미리보기
				</div>
				<div class="tutorInfoDiv clearfix" >
							
					<div class="tutorImgDiv">
						<img class="tutorImg" id="tutorImg" src="/englishvillage/resources/imgs/sl2.png">
					</div>
					<div class="studyTitle" id="studyTitleDiv">
						차냥이와 함계하는 신나는 영어교실!
					</div>
					<div class="price" id="priceDiv">
						30,000원 / 40분
					</div>
					<div class="score">
						☆☆☆☆☆ (0)
					</div>
					<div class="country">
						${member.memberCountry}
					</div>
					<div class="tutorName">
						${member.memberName}
					</div>
				</div>
			
				<div id="resultBtnDiv">
					<div id="tutorRegisterBtn" class="clearfix">
						튜터신청
					</div>
					<div id="mainMoveBtn" class="clearfix">
						메인으로
					</div>
				</div>
			</div>	
		</form>		
	</div>
</body>

</html>