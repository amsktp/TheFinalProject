<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>비밀번호 찾기</title>
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
	
	#secondBox {
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	#titleBox {
		font-size: 40px;
		font-weight: bold;
		text-align: center;
		margin-bottom: 70px;
		border: 1px dotted blue;
	}
	
	#secondTitleBox {
		font-size: 25px;
		font-weight: bold;
		padding-left: 37px;
		margin-bottom: 20px;		
	}
	
	.oneBarInputBox {
		width: 300px;
		height: 30px;
		margin-bottom: 10px;
	}
	
	.wrapInputBox {
		display: flex; 
		justify-content: flex-start;		
	}
	
	.twoBarInputBoxBtn {
		width: 150px;
		height: 40px;
		margin-right: 10px;
		margin-top: 10px; 
		text-align: center;
		font-weight: bold;
	}
	
</style>
<script type="text/javascript">
	function backPageBtn() {
		location.href = "login.do";
	}

	
	/* 비밀번호 찾기 유효성 */
	function findPasswordBtn(){
		var memberNameObj = document.getElementById('memberEmail');
		var memberEmailObj = document.getElementById('memberPwd');
		var memberBirthDateObj = document.getElementById('memberBirthDate');
		
		if(memberNameObj.value.length == 0){		
			alert("이름을 입력해주세요.");
			return false;
		} else if(memberEmailObj.value.length == 0){		
			alert("이메일을 입력해주세요.");
			return false;
		} else if(memberBirthDateObj.value.length == 0){		
			alert("생일을 입력해주세요.");
			return false;
		}
		
	}

</script>


</head>
<body>

	<div id="mainBox">
		<div id="titleBox">
			ENGLISH VILLAGE
		</div>
		<div id="secondTitleBox">
			비밀번호 찾기
		</div>
		<div id="secondBox">
			<form action="./findPasswordCtr.do" method="post" onsubmit="return findPasswordBtn();">
				<div>
					<div>
						이름
					</div>
					<div>
						<input class="oneBarInputBox" id="memberName" type="text" name="memberName" placeholder="이름을 입력하세요">
					</div>
				</div>
				<div>
					<div>
						이메일
					</div>
					<div>
						<input class="oneBarInputBox" id="memberEmail" type="email" name="memberEmail" placeholder="이메일을 입력하세요">
					</div>
				</div>
				<div>
					<div>
						생년월일
					</div>
					<div style="margin-bottom: 20px;">
						<input class="oneBarInputBox" id="memberBirthDate" type="date" name="memberBirthDate" placeholder="생년월일을 입력하세요">
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