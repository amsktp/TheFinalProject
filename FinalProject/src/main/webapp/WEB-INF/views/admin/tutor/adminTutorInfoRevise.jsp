<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>
<style type="text/css">
	#updateDiv {
		float: left;
		width: 700px;
		height: 800px;
		border: 1px solid black;
		box-sizing: border-box;
		margin-top: 200px;
	}

	.text {
		width: 600px;
		height: 50px;
		font-size: 30px;
		margin-bottom: 50px;
	}
	#textarea {
		width:700px;
		height:600px;
		float:left;
		font-size: 30px;

	}
	
	.inpText {
		margin-left: 40px;
	}
	
	#btn > input {
		width: 150px;
		height: 50px;
		float: right;
		background-color: black;
		color: white;
		font-weight: bold;
		border-radius: 5px 5px/5px 5px;
		font-size: 25px;
		margin-left: 20px;
	}
</style>
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		$('.layoutUl').children().eq(1).addClass('on');
		//이벤트와 태그를 연동시켜주는 바인딩 기술(,)에서 첫번째가 이벤트이다
		//"a[id^='delete']"는 속성선택자이다(여기서는 delete로 시작하는 모든것을 선택하는 것)
		$("a[id^='delete']").on("click", function(e) {
			e.preventDefault();//태그가 작동할 수 없게도 만들수 있는 기술-여기서는 a태그의 default를 무시하고 나의 함수를 우선시 했다
			deleteFileFnc($(this));
			
			
		});
	});
	
	function pageMoveListFnc(){
		var url = "./list.do";
		location.href = url;
	}
	
	function pageMoveDeleteFnc(no){
		var url = "./StudentdeleteCtr.do?no=" + no;
		location.href = url;
	}
	
	function pageMoveBeforeFnc(no) {
		var url = "./studentlistOne.do?no=" + no;
		location.href = url;
	}
	
	function deleteFileFnc(obj) {
		obj.parent().remove(); //obj는 객체이다
	}
	
	function addFileFnc() {
		var obj = $('#fileContent');
		
		var htmlStr = '';
		
		htmlStr += '<div>'
		htmlStr += '<input type="hidden" id="fileIdx" name="fileIdx" value="">';
		htmlStr += '<input type="file" id="file0" name="file0">';
		htmlStr += '<a href="#this" id="delete0">';
		htmlStr += '삭제';
		htmlStr += '</a>';
		htmlStr += '</div>'
		
		obj.html(htmlStr);
		
		//관계가 이어져 htmlStr의 모든 것을 찾아서 지운다
		$("a[id^='delete']").on('click', function(e) {
			e.preventDefault();
			deleteFileFnc($(this));
		});
	}
	
</script>

</head>

<body>

	
<%-- 	???? : ${fileList[0].ORIGINAL_FILE_NAME} --%>
	<div id="allDiv">
	
		<div id="menuDiv" style="float: left; margin-top: 200px; margin-right: 200px;">
			<div style="margin-bottom: 70px; font-size: 50px; font-weight: bold;">
				<span>회원 관리(강사)</span>
			</div>
			<jsp:include page="/WEB-INF/views/common/adminLayoutEx.jsp" />
		</div>
		
		<div id='updateDiv'>
			<form action='./tutorUpdateCtr.do' method='post' enctype="multipart/form-data">
				<div id='textarea'>
					<div class='text'>
						<span>성 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명 :</span> 
						<input class='inpText' type='text' name='name' value='${memberListDto.name}'>
						<br>
					</div>
					<div class='text'>
						<span>E&nbsp;&nbsp;&nbsp;- &nbsp;&nbsp;&nbsp;mail :</span> <input class='inpText' type='text' name='email' value='${memberListDto.email}'>
						<br>
					</div>
					<div class='text' >
						<span>비 밀 번 호 :</span> <input class='inpText' type='text' name='password' value='${memberListDto.password}'>
						<br>
					</div>
					<div class='text'>
						<span>성 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 :</span>
						<input class='inpText' type='text' name='gender' value='${memberListDto.gender}'>
						<br>
					</div>
					<div class='text'>
						<span>생 년 월 일 :</span> 
						<input class='inpText' id="birthDateChoose" type="date"  name="birthDate"
							value="<fmt:formatDate value='${memberListDto.birthDate}' pattern='yyyy-MM-dd'/>">
							<br>
					</div>
					
					<div class='text'>
						<span>국 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;적 :</span>
						<input class='inpText' type='text' name='country' value='${memberListDto.country}'> 
						<br>
					</div>
					<input type="hidden" name='no' value='${memberListDto.no}'>
				</div>
				
				<div id='btn'>
					<input type='submit' value='수정하기'>
					<input type='button' value='회원탈퇴' onclick='pageMoveDeleteFnc(${memberListDto.no});'>
					<input type='button' value='뒤로가기' onclick='pageMoveBeforeFnc(${memberListDto.no});'>	
				</div>
			
			</form>
		</div>
	</div>
	
	
<%-- 	<jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>
</body>
</html>