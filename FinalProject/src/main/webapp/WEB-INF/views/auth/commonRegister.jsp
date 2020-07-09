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
		height: 800px;
		width: 400px; 
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
	
	#secondTitleBox {
		font-size: 25px;
		font-weight: bold;
		padding-left: 37px;
		margin-bottom: 20px;		
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
	
	.oneBarInputBox {
		width: 300px;
		height: 30px;
		margin-bottom: 10px;
	}
	
	#memberEmail {
		width: 175px;
		height: 30px;
		float: left;
		margin-right: 10px;
	}
	
	#pressEmailCheck {
		width: 115px;
		height: 36px;
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
	
	#selectCountry {
		width: 180px;
		height: 35px;
		margin-right: 10px;
	}

	#selectGender {
		width: 118px;
		height: 35px;
	}

</style>
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">


	$(document).ready(function() {
		
		var verifyNum = Math.floor(Math.random() * 9999);
		

		$('#sendVerifyNum').val(verifyNum);
		
		
		$('#authBtn').click(function() {
			
			alert($('#memberEmail').val() + '로 인증번호를 전송하였습니다.');
			
			$.ajax({
			      url : "/englishvillage/authSendMailVerifyNumCtr.do",
			      type : "POST",
			      data : "memberEmail=" + $('#memberEmail').val() + "&verifyNum=" + $('#sendVerifyNum').val(),
			      success : function(data) {
			    	  
		          console.log("1 = 이메일 o / 0 = 이메일 x : "+ data);                     

		          alert('이메일을 전송하였습니다. 확인해보세요');

			      }, error : function() {
			               console.log("실패");
		    
			      }
		 
			});

		});
		
	});
	

	function emailChkFnc() {
		$.ajax({
			url: "/englishvillage/emailCheck.do",
			type: "POST",
			data: "memberEmail=" + $("#memberEmail").val(),
			success: function(data) {
				if(data == 1){
					alert("중복된 아이디입니다.");
				} else if(data == 0) {
					$("#emailCheck").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
				
			}
			
		});
				
	}

	function backPageBtn() {
		location.href = "login.do";
	}

	function registerCompleteBtn() {
		location.href = "commonRegisterComplete.do";
	}
	
	function checkNumFnc() {
		var inputVerifyNumObj = document.getElementById('inputVerifyNum');
		var sendVerifyNumObj = document.getElementById('sendVerifyNum');
		var verifyNumResultObj = document.getElementById('verifyNumResult');
		
		if(inputVerifyNumObj.value == sendVerifyNumObj.value){
			verifyNumResultObj.value = "Y";
			alert("인증이 성공됐습니다.");
		}
		
		else if(inputVerifyNumObj.value != sendVerifyNumObj.value){
			verifyNumResultObj.value = "N";
			alert("인증번호가 일치하지 않습니다.");
		}
		
	}
	
	/* 회원가입 유효성 */
	function commonRegisterBtn(){
		
		var memberNameObj = document.getElementById('memberName');
		var memberEmailObj = document.getElementById('memberEmail');
		var verifyNumObj = document.getElementById('verifyNum');
		var memberPasswordObj = document.getElementById('memberPassword');
		var verifyPasswordObj = document.getElementById('verifyPassword');
		var memberBirthDateObj = document.getElementById('memberBirthDate');
		
		if(memberNameObj.value.length == 0){		
			alert("이름을 입력해주세요.");
			return false;
		} else if(memberEmailObj.value.length == 0){		
			alert("이메일을 입력해주세요.");
			return false;
		} else if(verifyNumObj.value.length == 0){		
			alert("인증번호를 입력해주세요.");
			return false;
		} else if(memberPasswordObj.value.length == 0){		
			alert("비밀번호를 입력해주세요.");
			return false;
		} else if(verifyPasswordObj.value.length == 0){		
			alert("비밀번호 확인을 입력해주세요.");
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
			회원가입
		</div>
		<div id="secondBox">
			<form action="./commonRegisterCtr.do" method="post" onsubmit="return commonRegisterBtn();">
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
						<input id="memberEmail" type="email" name="memberEmail" placeholder="이메일을 입력하세요" >
					</div>
					<div>
						<input id="pressEmailCheck" type="button" value="이메일 중복 확인" onclick="emailChkFnc();">
					</div>
				</div>
				<div class="wrapInputBox">
					<div>
						<input id="authBtn" class="threeBarInputBox" type="button" value="인증번호 요청" style="width: 100px; height: 36px;" >
					</div>
					<div>
						<input class="threeBarInputBox" id="inputVerifyNum" type="text" style="width: 80px;">
						<input type="hidden" id="sendVerifyNum" value="5325">
					</div>
					<div>
						<input type="hidden" id="verifyNumResult" value="N">
					</div>
					
					<div>
						<input class="threeBarInputBox" type="button" value="인증번호 확인"	style="width: 100px; height: 36px;" onclick="checkNumFnc();">
					</div>
				</div>
				<div>
					<div>
						비밀번호
					</div>
					<div>
						<input class="oneBarInputBox" id="memberPassword" type="password" name="memberPassword" placeholder="비밀번호를 입력하세요">
					</div>
					<div>
						비밀번호 확인
					</div>
					<div>
						<input class="oneBarInputBox" id="verifyPassword" type="password" placeholder="비밀번호를 입력하세요">
					</div>
				</div>
				<div>
					<div>
						생년월일
					</div>
					<div>
						<input class="oneBarInputBox" id="memberBirthDate" type="date" name="birthDate" placeholder="생년월일을 입력하세요">
					</div>
					<div class="wrapInputBox">
						<div>
							<div>
								국적
							</div>
							<select id="selectCountry" name="memberCountry">
    							<option value="KOREA">한국</option>
    							<option value="USA">미국</option>
    							<option value="Ireland">아일랜드</option>
    							<option value="England">영국</option>
    							<option value="Canada">캐나다</option>
  							</select>
						</div>
						<div>
							<div>
								성별
							</div>
							<select id="selectGender" name="memberGender" >
    							<option value="M">남</option>
    							<option value="F">여</option>
  							</select>
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