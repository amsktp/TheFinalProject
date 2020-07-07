<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입 성공</title>
<style type="text/css">
	
	#mainBox {
		border: 1px solid red;
		height: 800px;
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
	
	#loginBtn {
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
				<span><span style="font-weight: bold;">English Village</span>에 가입하신 것을 환영합니다!</span><br><br>
				<span>로그인 후 정상적으로 서비스를 이용하실 수 있습니다.</span><br>
			</div>
			<div style="display: flex; justify-content: center;">		
				<div id="loginBtn">
					<input id="loginBtn" type="button" value="로그인 페이지로 이동" onclick="moveLoginBtn();">
				</div>
			</div>
	</div>

</body>

</html>