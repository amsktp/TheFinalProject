<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.video-container {
	margin: 0;
	padding-bottom: 75%;
	max-width: 100%;
	height: 536;
	position: relative;
	overflow: hidden;
}
#tutorInfoDiv {
	width: 824px;
	height: 516px;
}
</style>

<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>


</head>

<body>
<div>
	
	<!-- 소개영상 -->
	<div class="video-container">
		<iframe width="925" height="536" src="https://www.youtube.com/embed/uR8Mrt1IpXg" frameborder="0" allowfullscreen></iframe>
	</div>
	
	<!-- 사람얼굴 -->
	<div id="tutorInfoDiv">
		
		<!-- onLine과 수업시작버튼 -->
		<div>
			<div>
				On-Line
			</div>
			<div>
				수업시작
			</div>
		</div>
		<!-- 사진 -->
		<div>
			
		</div>
		<div>
			<table>
				<tr>
					<td>이름</td>
					<td></td>
				</tr>
				<tr>
					<td>국적</td>
					<td></td>
				</tr>
				<tr>
					<td>나이</td>
					<td></td>
				</tr>
				<tr>
					<td>평점</td>
					<td></td>
				</tr>
				<tr>
					<td>수업료</td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2"> 개의 후기</td>
				</tr>
			</table>
			<div>
				이름
			</div>
		</div>
	</div>
	
	<!-- 강의제목 -->
	<div>
		강의제목
	</div>
	
	<!-- 소개글 -->
	<div>
		소개글
	</div>

	<!-- 댓글 -->
	<div>
		<!-- 댓글 입력창 -->
		<div>
			<div>session에 있는 이름 </div>
			<div>
				<div>
					작성일자
				</div>
				<div>
					댓글 내용
				</div>
			</div>
			<div>
				<div>
					평점
				</div>
				<div>
					<!-- 버튼 -->
					<div>
						수정하기
					</div>
				</div>
			
			</div>
		</div>	
	</div>

</div>