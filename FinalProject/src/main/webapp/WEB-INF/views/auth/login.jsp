<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	
	#mainBox {
		border: 1px solid red;
		height: 500px;
		width: 400px;
 		position: absolute; 
 		top: 50%;
 		left: 50%;
 		transform: translate(-50%, -50%);
	}
	
	#secondBox {
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	#titleBox {
		font-size: 40px;
		font-weight: bold;
		margin-bottom: 50px;
		border: 1px dotted blue;
		text-align: center;
	}
	
	.emailPwdBox {
		width: 300px;
		height: 30px;
		margin-bottom: 20px;
		font-weight: bold;
	}
	
	#loginBtn {
		width: 308px;
		height: 40px;
		margin-bottom: 20px;
		font-size: 17px;
		font-weight: bold;
	}

	.findPwdAndRegister {
		width: 141px;
		height: 35px;
		margin-right: 10px;
 		float: left; 
 		text-align: center;
 		font-weight: bold; 
	}

</style>

</head>
<body>

	<div id="mainBox">
		<div id="titleBox">
			ENGLISH VILLAGE
		</div>
		<!-- 이메일, 비밀번호 입력란  -->
		<div id="secondBox">
			<form action="/englishvillage/loginCtr.do" method="post">
				<div>
					<div>
						이메일
					</div>
					<div>
						<input class="emailPwdBox" type="email" name="memberEmail" 
							placeholder="이메일을 입력하세요" value="chan@naver.com">
					</div>
					<div>
						비밀번호
					</div>
					<div style="margin-bottom: 40px;">
						<input class="emailPwdBox" type="password" name="memberPassword" 
							placeholder="비밀번호를 입력하세요" value="test2">
					</div>
				</div>
				
				<!-- 로그인 버튼, 비밀번호찾기 버튼, 회원가입 버튼  -->
				<div>		
					<div id="loginBtn">
						<input id="loginBtn" type="submit" value="로그인">
					</div>
				</div>
				<div>
					<div>
						<input class="findPwdAndRegister" value="비밀번호찾기">
						<input class="findPwdAndRegister" value="회원가입">
					</div>
					<div>
					
					</div>
				</div>
			</form>
		</div>
	</div>

</body>

</html>