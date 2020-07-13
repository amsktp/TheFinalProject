<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트구매페이지</title>

<style type="text/css">

	table tr td {
		font-size: 18px;
		padding-left: 20px;
	} 
	
	td {
		height: 40px;
		width: 150px;
	}

	.pricePoint {
		font-size: 18px;
		width: 130px;
		border: 1px solid red;
		text-align: right;
		padding-right: 20px;
	}
	
	.payBtn {
		width: 370px;
		height: 50px;
		color: white;
		font-weight: bold;
		font-size: 20px;
		background-color: black;
		border: none;
		margin-left: 10px;
		margin-top: 40px;
	}

	.numberAlign {
		text-align: right;
		padding-right: 20px;
	}

</style>
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

	$('document').ready(function() {
		
		$('#priceNum').keyup(function() {
			$('#pointNum').val($('#priceNum').val());
			$('#buyPoint').text($('#priceNum').val());
			$('#resultPoint').text(parseInt($('#originalPoint').val()) + parseInt($('#priceNum').val()));
			$('#realPoint').val(parseInt($('#originalPoint').val()) + parseInt($('#priceNum').val()));
			$('#realPrice').val($('#priceNum').val());
			$('#resultPrice').text($('#priceNum').val())
		});
		
	});

	function buyPointBtn(){
		
		var priceNumObj = document.getElementById('priceNum');
	
		if(priceNumObj.value.length == 0){		
			alert("구매금액을 입력해주세요.");
			return false;
		}
	}
</script>
</head>

<body>
	<header><jsp:include page="/WEB-INF/views/common/Header.jsp" /></header>
	<div class="container bs-docs-container contentBox">
		<jsp:include page="/WEB-INF/views/common/memberLayoutEx.jsp" />
		<div class="col-md-9" style="margin-top: 40px">
	
		<form action="./buyPointCtr.do" method="post" onsubmit="return buyPointBtn();">
			<div style="margin-top: 30px;">
				<span id="pageName">포인트구매</span>
				<table>
					<tr>
						<td>
							<span>결제금액</span>						
						</td>
						<td>
							<input id="priceNum" type="text" class="pricePoint">
						</td>
						<td>원</td>
					</tr>
					<tr>
						<td>
							<span>구매포인트</span>
						</td>
						<td>
							<input id="pointNum" type="text" disabled="disabled" class="pricePoint">
						</td>
						<td>포인트</td>
					</tr>
				</table>
			</div>
			<div style="margin-top: 50px;">
				<span id="pageName">결제정보</span>
				<table>
					<tr>
						<td>보유포인트</td>
						<td class="numberAlign">${member.memberPoint}</td>
						<td>포인트</td>
					</tr>
					<tr>
						<td>구매포인트</td>
						<td id="buyPoint" class="numberAlign">0</td>
						<td>포인트</td>
					</tr>
					<tr>
						<td>결제후포인트</td>
						<td id="resultPoint" class="numberAlign">${member.memberPoint}</td>
						<td>포인트</td>
					</tr>
					<tr>
						<td>최종결제금액</td>
						<td id="resultPrice" class="numberAlign">0</td>
						<td>원</td>
					</tr>
				</table>
				<input class="payBtn" type="submit" value="결제하기">
				<input id="originalPoint" type="hidden" value="${member.memberPoint}">
			</div>
		</form>
	</div>
		
</div>

</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>