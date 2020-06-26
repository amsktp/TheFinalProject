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
		margin-bottom: 50px;
		border: 1px dotted blue;
		text-align: center;
	}
	
	#loginBtn {
		width: 308px;
		height: 40px;
		margin-bottom: 20px;
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
			<div>
				<span>English Village에 가입하신것을 진심으로 환영합니다.!</span>
				<span>로그인 후 정상적으로 서비스를 이용하실 수 있습니다.</span>
			</div>
			<div>		
				<div id="loginBtn">
					<input id="loginBtn" type="button" value="로그인 페이지로 이동" onclick="moveLoginBtn();">
				</div>
			</div>
	</div>

</body>

</html>