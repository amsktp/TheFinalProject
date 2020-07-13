<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트구매페이지</title>

<style type="text/css">

	table tr td {
 		border: 1px dotted red;  /*테스트용, 페이지완성 후 지울 것 */
		font-size: 20px;
		padding-left: 20px;
		
	} 
	
	td {
		height: 50px;
		width: 300px;
		
	}

	.pricePoint {
		font-size: 20px;
		width: 200px;
		height: 40px;
		margin-bottom: 20px;
	}


</style>
<script type="text/javascript" src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

	$('document').ready(function() {
		
		$('#priceNum').keyup(function() {
			$('#pointNum').val($('#priceNum').val());
			$('#buyPoint').text($('#priceNum').val() + ' 포인트');
			$('#resultPoint').text(parseInt($('#originalPoint').val()) + parseInt($('#priceNum').val()) + ' 포인트');
			$('#realPoint').val(parseInt($('#originalPoint').val()) + parseInt($('#priceNum').val()));
			$('#realPrice').val($('#priceNum').val());
			$('#resultPrice').text($('#priceNum').val() + ' 원')
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
			<div>
				<span id="pageName">포인트구매</span>
				<div>
					<div>
						<input id="priceNum" type="text" class="pricePoint">원
					</div>
					<div>
						<input id="pointNum" type="text" disabled="disabled" class="pricePoint">포인트
					</div>
				</div>
			</div>
			<div>
				<span id="pageName">결제정보</span>
				<table>
					<tr>
						<td>보유포인트</td>
						<td>${member.memberPoint} 포인트</td>
					</tr>
					<tr>
						<td>구매포인트</td>
						<td id="buyPoint">0 포인트</td>
					</tr>
					<tr>
						<td>결제후포인트</td>
						<td id="resultPoint">${member.memberPoint}</td>
					</tr>
					<tr>
						<td>최종결제금액</td>
						<td id="resultPrice">0 원</td>
					</tr>
				</table>
				<input class="blackBtn" type="submit" value="결제하기" style="margin-top: 20px;">
				<input id="originalPoint" type="hidden" value="${member.memberPoint}">
			</div>
		</form>
	</div>
		
</div>

</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</html>