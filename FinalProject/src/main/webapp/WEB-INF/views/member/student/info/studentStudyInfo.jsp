<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생페이지</title>
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(document).ready(function(){
    $('.layoutUl').children().eq(2).addClass('on');

// #gnb에 자식 요소(li)가 몇번째인지를 확인한 후 on이라는 클래스 추가

});
</script>


<style type="text/css">


#layoutBox {


}

#profileBox {


}

#profileImg {

}

</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/Header3.jsp" />
	
	<div id="pageSize">
	<jsp:include page="/WEB-INF/views/memberLayout.jsp" />
	

	<div id="myPageBox">
	
	<input type="text">
	<h1 class="infoFont">수강내역</h1>
	</div>
	
	
	</div>






</body>
</html>