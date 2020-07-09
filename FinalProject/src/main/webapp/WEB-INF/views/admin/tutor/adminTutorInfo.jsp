<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 상세조회</title>
<style type="text/css">
	.studentProfileDiv {
		border: 1px solid black;
		width: 600px;
		height: 950px;
		font-size: 30px;
		margin-top: 200px;
		float: left;
		box-sizing: border-box;
	}
	
	#lineDiv {
		border-bottom: 1px solid #BDBDBD; 
	}
	
	.manual {
		margin-top: 80px;
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
	}
	
	#memberProfileText {
		font-size: 40px;
		font-weight: bold;
	}
	
</style>
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		
		$('.layoutUl').children().eq(1).addClass('on');
		
		var toDay = new Date();
		var birthDay = $('#subAge').val().substring(24, 28);
		
		var age = (toDay.getFullYear()) - birthDay;
		$('#age').val(age);
	});
	
	function pageMoveListFnc(){

		
		var noObj = $('#no');
		var keywordObj = $('#keyword');
		var searchOptionObj = $('#searchOption');
		

		
		var url = '';
		
		url += './tutorlist.do?';
		url += 'no=' + noObj.val();
		url += '&keyword=' + keywordObj.val();
		url += ''
		url += '&searchOption=' + searchOptionObj.val();
		
		location.href = url;

	}
	

</script>

</head>

<body>
<!-- 337 3번 문제 MemberUpdateServlet 화면출력 위임 -->
	
	
	
		<div id="allDiv">
		
			<div id="menuDiv" style="float: left; margin-top: 200px; margin-right: 200px;">
				<div style="margin-bottom: 70px; font-size: 50px; font-weight: bold;">
					<span>회원 관리(학생)</span>
				</div>
				<jsp:include page="/WEB-INF/views/common/adminLayoutEx.jsp" />
			</div>
			
			
			<div class="studentProfileDiv">
			
				<form action='./tutorUpdate.do' method='get'>
				<span id='memberProfileText'><a href="#">회원정보</a></span>
				<span id='tutorProFileText'><a href="./tutorProUpdate.do">강사정보</a></span>
				<div id='lineDiv'>
				</div>
					<div id='allmanual'>
					
						<div class="manual">
							<span>성 명:</span> 
							${memberListDto.name}
						</div>
						
			<%-- 			번호: ${memberListDto.no}<br> --%>
						<div class="manual">
							Email: ${memberListDto.email}
						</div>
						
						<div class="manual"> 
							비밀번호: ${memberListDto.password}
						</div>
						
						<div class="manual">
							성별:<c:choose>
									<c:when test="${memberListDto.gender eq 'F'}">
										<c:out value="여자"></c:out>
									</c:when>
									<c:when test="${memberListDto.gender eq 'M'}">
										<c:out value="남자"></c:out>
									</c:when>
								</c:choose>
						</div>
						
						<div class="manual">
							생년월일: <fmt:formatDate value="${memberListDto.birthDate}" pattern="yyyy.MM.dd"/>
						</div>
						
				<%-- 		언어: ${memberListDto.password}<br> --%>
						<div class="manual">
							국적: ${memberListDto.country}
						</div>
						
				<%-- 		시간대: ${memberListDto.password}<br> --%>
						
						<div>
							<input type="hidden" id='no' name="no" value="${memberListDto.no}">
							<input type="hidden" id='searchOption' name="searchOption" value="${searchOption}">
							<input type="hidden" id='keyword' name="keyword" value="${keyword}">
						</div>
					</div>
					<div id='btn'>
						<input type='submit' value='수정하기' style="margin-right: 30px;">
						<input type='button' value='이전 페이지' onClick='pageMoveListFnc();' style="margin-right: 30px;">	
					</div>
				</form>
			</div>
			
			<div class="studentProfileDiv">
				<form action='./tutorUpdate.do' method='get'>
					<span id='memberProfileText'>회원정보</span>
					<span id='tutorProFileText'>강사정보</span>
					<div id='lineDiv'>
					</div>
						<div id='allmanual'>
						
							<div class="manual">
								<span>성 명:</span> 
								${memberListDto.name}
							</div>
							
							<div class="manual">
								국적: ${memberListDto.country}
							</div>
	
							<div class="manual">
								나이: <input type="text" value="" id='age'><br>
									   <input type="hidden" value="${memberListDto.birthDate}" id='subAge'>
							</div>
							
							<div class="manual">
								평점: ${memberListDto.score}
							</div>
							
							<div class="manual"> 
								수업료: ${memberListDto.price}
							</div>
							
							<div class="manual">
								URL: ${memberListDto.url}<br>
							</div>
							
							<div class="manual">
								<textarea style="resize: none;">${memberListDto.tutorText}</textarea>
							</div>
	
							
							<div>
								<input type="hidden" id='no' name="no" value="${memberListDto.no}">
								<input type="hidden" id='searchOption' name="searchOption" value="${searchOption}">
								<input type="hidden" id='keyword' name="keyword" value="${keyword}">
							</div>
						</div>
						<div id='btn'>
							<input type='submit' value='수정하기' style="margin-right: 30px;">
							<input type='button' value='이전 페이지' onClick='pageMoveListFnc();' style="margin-right: 30px;">	
						</div>
					</form>
				</div>
		</div>
	
</body>
</html>