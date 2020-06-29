<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원탈퇴</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$('.layoutUl').children().eq(1).addClass('on');
 
//     $('#editBtn').click(function() {

//     	var password = $('input[type=password]').val();
//         var passwordCheck = '${member.memberPassword}';
//         if(password == passwordCheck){
//          location.href = "/englishvillage/update.do"
//             }else{
//             	alert("비밀번호가 일치하지 않습니다.");
//             }
//     });

});

// function pageMoveDeleteFnc(no){
// 	var url = "./deleteCtr.do?no=" + no;
// 	location.href = url;
// }


// onClick='updateMoveFnc(${member.memberNo});'
</script>

</head>

<body>
	<jsp:include page="/WEB-INF/views/Header3.jsp" />

	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/memberLayout.jsp" />
		<div id="myPageBox">

			<div id="pageName">회원탈퇴</div>

			<div id="pwdCheckBox" style="padding-top: 25px;">
				<h4 style="font-weight: bold; text-align: center;">회원탈퇴 시 보유 포인트가 사라집니다.</h4>
				<h4 style="font-weight: bold; text-align: center;">동의 하시면 회원탈퇴 버튼을 눌러주세요.</h4>

<h3 style="font-weight: bold; text-align: center; color: #FA6980; margin-top: 30px;">보유 포인트</h3>
<h3 style="font-weight: bold; text-align: center; margin-bottom: 40px;">${member.memberPoint} 포인트</h3>

				
				<input class="blackBtn" type='button' value='뒤로가기' onClick="location.href='/englishvillage/update.do'">
<%-- 				<input id="editBtn" class="blackBtn" type='button' value='회원탈퇴' onclick='pageMoveDeleteFnc(${member.memberNo});'>  --%>
<%-- 				<input id="editBtn" class="blackBtn" type='button' value='회원탈퇴' onclick='pageMoveDeleteFnc(${member.memberNo});'>  --%>
				<input id="editBtn" class="blackBtn" type='button' value='회원탈퇴' onClick="location.href='/englishvillage/deleteCtr.do'"> 

			</div>


		</div>


	</div>


</body>

</html>