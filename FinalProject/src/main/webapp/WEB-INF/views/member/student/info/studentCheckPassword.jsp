<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>비밀번호 확인</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$('.layoutUl').children().eq(1).addClass('on');
 
    $('#editBtn').click(function() {

    	var password = $('input[type=password]').val();
        var passwordCheck = '${member.memberPassword}';
        if(password == passwordCheck){
         location.href = "/englishvillage/update.do"
            }else{
            	alert("비밀번호가 일치하지 않습니다.");
            }
    });
});


// onClick='updateMoveFnc(${member.memberNo});'
</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/Header.jsp" />

	<div id="pageSize">
		<jsp:include page="/WEB-INF/views/common/memberLayout.jsp" />
		<div id="myPageBox">

			<div id="pageName">본인인증</div>

			<div id="pwdCheckBox" style="padding-top: 25px;">
				<h4 style="font-weight: bold; text-align: center;">개인정보 변경을 위해 비밀번호를 입력해주세요</h4>

				<input class="pwdInputBox" type="password" placeholder=" 비밀번호" value="${member.memberPassword}"> 
				
				<input class="blackBtn" type='button' value='뒤로가기' onClick="location.href='/englishvillage/myInfo.do'">
				<input id="editBtn" class="blackBtn" type='button' value='수정하기'> 

			</div>


		</div>


	</div>



</body>

</html>