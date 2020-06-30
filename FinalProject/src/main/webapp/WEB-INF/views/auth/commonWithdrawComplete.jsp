<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원탈퇴 성공</title>
<style type="text/css">
	
	#mainBox {
		border: 1px solid red;
		height: 600px;
		width: 400px;
 		position: absolute; 
 		top: 50%;
 		left: 50%;
 		transform: translate(-50%, -50%);
	}
	
	#titleBox {
		font-size: 40px;
		font-weight: bold;
		margin-bottom: 100px;
		border: 1px dotted blue;
		text-align: center;
	}
	
	#withdraw {
		width: 250px;
		height: 45px;
		font-size: 18px;
		font-weight: bold;
		margin-top: 30px;
	}

</style>
<script type="text/javascript">
	function moveLoginBtn() {
		location.href = "login.do";
	}

</script>

</head>
<body>

	<div id="mainBox">
		<div id="titleBox">
			ENGLISH VILLAGE
		</div>
		<div style="text-align: center;">
			<span>회원탈퇴가 완료되었습니다.</span><br><br>
			<span>지금까지 이용해주셔서 감사합니다.</span><br>
		</div>
		<div style="display: flex; justify-content: center;">		
			<div>
				<input id="withdraw" type="button" value="확인" onclick="moveLoginBtn();">
			</div>
		</div>
	</div>

</body>

</html>