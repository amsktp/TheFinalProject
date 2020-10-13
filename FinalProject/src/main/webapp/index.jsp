<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Hello Spring</title>

<style type="text/css">
	#menuList > div {
		border: 1px solid black; width: 200px;
		background-color: orange;
		margin: 20px;
	}
</style>

<script type="text/javascript">

	window.onload = function () {

//		location.href = '/snaptag/admin/login';
		
	}

</script>


<body>

<input type="button" onclick="location.href='/snaptag/admin/login.do'" value="login">
<input type="button" onclick="location.href='/snaptag/admin/dataManagement.do'" value="dataInput">

	
</body>

</html>