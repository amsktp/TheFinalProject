<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	
	#mainBox {
		height: 600px;
		width: 400px;
 		position: absolute; 
 		top: 50%;
 		left: 50%;
 		transform: translate(-50%, -50%);
 		background-color: white;
	}
	
	#loginDiv{
		width: auto;
		height: auto;
		text-align: center;
		margin-bottom: 30px;
	
	}
	
	#contentsDiv {
		display: flex;
		justify-content: center;
		align-items: center;
		font-weight: bold;
	}
	
	#titleBox {
		background-color: black;
		color: white;
		font-size: 40px;
		font-weight: bold;
		margin-bottom: 70px;
		text-align: center;
	}
	
	#subTitleBox {
		font-size: 25px;
		font-weight: bold;
		padding-left: 37px;
		margin-bottom: 20px;		
	}
	
	.inputIdPwd {
		width: 300px;
		height: 40px;
		margin-bottom: 10px;
		border: 1px solid black;
		padding-left: 10px;
	
	}
	
	#loginBtn {
		width: 312px;
		height: 40px;
		margin-bottom: 20px;
		font-size: 17px;
		font-weight: bold;
		border: none;
		background-color: black;
		color: white;
	}
	
	.findPwdAndRegister {
		width: 148px;
		height: 40px;
		margin-right: 10px;
 		font-weight: bold; 
 		border: none;
 		background-color: black;
		color: white;
	}
</style>
<script type="text/javascript">

	/* 로그인 유효성 */
	function loginBtn(){
		var memberIdObj = document.getElementById('memberId');
		var memberPwdObj = document.getElementById('memberPassword');
		
		if(memberIdObj.value.length == 0){		
			alert("ID를 입력해주세요.");
			return false;
		} else if(memberPwdObj.value.length == 0){		
			alert("패스워드를 입력해주세요.");
			return false;
		}
	}
	
</script>

</head>
<body>

	<div id="loginFormDiv">
	
		
		<!-- 이메일, 비밀번호 입력란  -->
		
		<div id="contentsDiv">
			
			<form action="/snaptag/admin/loginCtr.do" method="post" onsubmit="return loginBtn();">
				
				<div id="loginDiv">
					로그인
				</div>
				
				<div>
					<div>
						<span>이메일</span>
					</div>
					
					<div>
						<input class="inputIdPwd" id="memberId" type="text"
							name="memberId" value="snaptag">
					</div>
					
					<div>
						<span>비밀번호</span>
					</div>
					<div style="margin-bottom: 20px;">
						<input class="inputIdPwd" id="memberPassword" type="password" name="memberPassword" 
						 value="Snaptag200911">
					</div>
				</div>
				<!-- 로그인 버튼, 비밀번호찾기 버튼, 회원가입 버튼  -->
				<div>		
					<div>
						<input id="loginBtn" type="submit" value="로그인">
					</div>
				</div>

			</form>
		</div>
	</div>

</body>

</html>