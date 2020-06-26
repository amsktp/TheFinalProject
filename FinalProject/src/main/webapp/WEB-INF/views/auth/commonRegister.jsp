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
		height: 600px;
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
		text-align: center;
		margin-bottom: 20px;
		border: 1px dotted blue;
	}
	
	.oneBarInputBox {
		width: 300px;
		height: 30px;
		margin-bottom: 10px;
	}
	
	.wrapInputBox {
		display: flex; 
		justify-content: flex-start;
		margin-bottom: 10px;
	}
	
	.twoBarInputBox {
		width: 141px;
		height: 30px;
		margin-right: 10px;
	}
		
	.twoBarInputBoxBtn {
		width: 150px;
		height: 40px;
		margin-right: 10px;
		margin-top: 10px; 
		text-align: center;
		font-weight: bold;
	}
	
	.threeBarInputBox {
		width: 88px;
		height: 30px;
		margin-right: 10px;
		text-align: center;
	}
	
	



</style>
<script type="text/javascript">
	function backPageBtn() {
		location.href = "login.do";
	}

	function registerCompleteBtn() {
		location.href = "commonRegisterComplete.do";
	}
	

</script>


</head>
<body>

	<div id="mainBox">
		<div id="titleBox">
			ENGLISH VILLAGE
		</div>
		<div id="secondBox">
			<form action="./commonRegisterCtr.do" method="post">
				<div>
					<div>
						이름
					</div>
					<div>
						<input class="oneBarInputBox" type="text" name="memberName" placeholder="이름을 입력하세요">
					</div>
				</div>
				<div>
					<div>
						이메일
					</div>
					<div>
						<input class="oneBarInputBox" type="email" name="memberEmail" placeholder="이메일을 입력하세요">
					</div>
				</div>
				<div class="wrapInputBox">
					<div>
						<input class="threeBarInputBox" type="button" value="인증번호 요청"
							style="width: 100px; height: 36px;">
					</div>
					<div>
						<input class="threeBarInputBox" type="text" style="width: 80px;">
					</div>
					<div>
						<input class="threeBarInputBox" type="button" value="인증번호 확인"
							style="width: 100px; height: 36px;">
					</div>
				</div>
				<div>
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
						<input class="oneBarInputBox" type="password" placeholder="비밀번호를 입력하세요">
					</div>
				</div>
				<div>
					<div>
						생년월일
					</div>
					<div>
						<input class="oneBarInputBox" type="date" name="birthDate" placeholder="생년월일을 입력하세요">
					</div>
					<div class="wrapInputBox">
						<div>
							<div>국적</div>
							<input class="twoBarInputBox" type="text" name="memberCountry" placeholder="국적을 입력하세요">
						</div>
						<div>
						
							<select name="fruit" id="fruit" class="fruit">
    							<option value="apple">사과</option>
    							<option value="orange">오렌지</option>
							    <option value="banana">바나나</option>
  							</select>
						
							<div>성별</div>
							여자<input class="twoBarInputBox" type="radio" name="memberGender" value="F" >
							남자<input class="twoBarInputBox" type="radio" name="memberGender" value="M" >
						</div>
					</div>
					<div class="wrapInputBox">
						<div>
							<input class="twoBarInputBoxBtn" type="button" value="뒤로가기" onclick="backPageBtn();">
						</div>
						<div>
							<input class="twoBarInputBoxBtn" type="submit" value="입력완료" >
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>

</html>