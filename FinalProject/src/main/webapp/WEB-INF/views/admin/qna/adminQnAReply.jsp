<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>

<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

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
		var url = "./deleteCtr.do?no=" + no;
		location.href = url;
	}
	
	function pageMoveBeforeFnc(no) {
		var url = "./questionlist.do?no=" + no;
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
	
	
	<h1>회원정보 수정</h1>
	
	<form action='./replyAddCtr.do' method='post' enctype="multipart/form-data" style="margin-top: 200px;">
		글번호: <input type='text' name='idx' value='${questionBoardDto.idx}'>
		<br>
		작성일: <input type='text' name='boardCreateDate' value='<fmt:formatDate value="${questionBoardDto.boardCreateDate}" pattern="yyyy-MM-dd"/> '>
		
		<br>
		회원 번호: <input type='text' name='no' value='${questionBoardDto.no}'>
		<br>
		회원 등급: <input type='text' name='grade' value='${questionBoardDto.grade}'>
		<br>
		회원 이름: <input type='text' name='name' value='${questionBoardDto.name}'>
		<br>
		이메일: <input type='text' name='email' value='${questionBoardDto.email}'>
		<br>
		글제목: <input type='text' name='title' value='${questionBoardDto.title}'>
		<br>
		내용: <input type='text' name='content' value='${questionBoardDto.content}'>
		<br>	
		답 글 : <input type='text' name='reply' value='${questionBoardDto.reply}'>
		<br>

		<input type='button' value='뒤로가기' onclick='pageMoveBeforeFnc(${questionBoardDto.no});'>	
		<input type="submit" value="답변하기">
	
	</form>
	
	
</body>
</html>