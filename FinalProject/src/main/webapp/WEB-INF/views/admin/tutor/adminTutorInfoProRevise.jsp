<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>

<script type="text/javascript" src="/springHome/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
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
		var url = "./TutordeleteCtr.do?no=" + no;
		location.href = url;
	}
	
	function pageMoveBeforeFnc(no) {
		var url = "./tutorlistOne.do?no=" + no;
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

	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
<%-- 	???? : ${fileList[0].ORIGINAL_FILE_NAME} --%>
	
	<h1>회원정보 수정</h1>
	
	<form action='./tutorUpdateProCtr.do' method='post' enctype="multipart/form-data" style="margin-top: 200px;">
		성 명: <input type='text' name='name' value='${memberListDto.name}' disabled="disabled">
		<br>
		국 적: <input type='text' name='country' value='${memberListDto.country}' disabled="disabled">
		<br>
		생년월일:<fmt:formatDate value='${memberListDto.birthDate}' pattern='yyyy-MM-dd'/>
		<br>
		평 점: <input type='text' name='socre' value='${memberListDto.score}' disabled="disabled">
		<br>
		수 업 료: <input type='text' name='price' value='${memberListDto.price}'>
		<br>
		URL: <input type='text' name='url' value='${memberListDto.url}'>
		<br>
		강 의 제 목: <input type='text' name='tutorTitle' value='${memberListDto.tutorTitle}'>
		<br>
		<input type="hidden" name='no' value='${memberListDto.no}'>

		<input type='submit' value='수정하기'>
		<input type='button' value='회원탈퇴' onclick='pageMoveDeleteFnc(${memberListDto.no});'>
		<input type='button' value='뒤로가기' onclick='pageMoveBeforeFnc(${memberListDto.no});'>	
	
	</form>
	
<%-- 	<jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>
</body>
</html>