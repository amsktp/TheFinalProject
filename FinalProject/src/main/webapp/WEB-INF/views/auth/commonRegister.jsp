<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입</title>
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
	
	#titleBox {
		font-size: 40px;
		font-weight: bold;
		text-align: center;
		margin-bottom: 50px;
		border: 1px dotted blue;
	}
	
	.oneBarInputBox {
		width: 300px;
		height: 30px;
		margin-bottom: 20px;
	}
	
	.twoBarInputBox {
		width: 50px;
		height: 35px;
		margin-right: 20px;
		float: left;
		text-align: center;
	}
		
	.threeBarInputBox {
		width: 136px;
		height: 35px;
		margin-right: 20px;
		float: left;
		text-align: center;
	}
	
	
	

</style>

</head>
<body>

	<div id="mainBox">
		<div id="titleBox">
			ENGLISH VILLAGE
		</div>
	
		<form action="/englishvillage/commonRegisterCtr.do" method="post">
			<div>
				<div>
					이름
				</div>
				<div>
					<input class="oneBarInputBox" type="text" name="memberName" placeholder="이름을 입력하세요">
				</div>
				<div>
					이메일
				</div>
				<div>
					<input class="oneBarInputBox" type="email" name="memberEmail" placeholder="이메일을 입력하세요">
				</div>
				<div>
					비밀번호
				</div>
				<div>
					<input class="oneBarInputBox" type="password" name="memberPassword" placeholder="비밀번호를 입력하세요">
				</div>
				<div>
					비밀번호 확인
				</div>
				<div>
					<input class="oneBarInputBox" type="password" name="memberPassword" placeholder="비밀번호를 입력하세요">
				</div>
			</div>
			
			<div>
				<div>
					생년월일
				</div>
				<div>
					<div>
						<input class="twoBarInputBox" value="뒤로가기">
					</div>
					<div>
						<input class="twoBarInputBox" value="가입하기">
					</div>
					<div>
						<input class="twoBarInputBox" value="가입하기">
					</div>
				</div>
			</div>
			<div>
				<div>
					<div>
						<input class="twoBarInputBox" value="뒤로가기">
					</div>
				</div>
				<div>
					<div>
						<input class="twoBarInputBox" value="뒤로가기">
					</div>
					<div>
						<input class="twoBarInputBox" value="가입하기">
					</div>
				</div>
			</div>
			
			
			
			
			
			
			
			
			<div>
				<div>
					<input class="findPwdAndRegister" value="뒤로가기">
				</div>
				<div>
					<input class="findPwdAndRegister" value="가입하기">
				</div>
			</div>
		</form>
	</div>

</body>

</html>