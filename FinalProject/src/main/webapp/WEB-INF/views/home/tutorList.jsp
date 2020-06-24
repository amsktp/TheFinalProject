<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Home</title>

<style type="text/css">
#wrap {
   width: 1000px;
   height: 1000px;
   border: 3px solid #87CEFA;
   border-radius: 50px;
   background-color: #E0FFFF;
   margin: auto;
   text-align: center;
}

#headerTxt {
   color: #00BFFF;
}

.headerTxt {
   color: #FFB6C1;
}

.pageBtn {
   width: 200px;
   height: 50px;
   border: 2px solid #F0E68C;
   border-radius: 10px;
   background-color: #FFFFE0;
   color: #F0E68C;
   font-size: 16px;
   cursor: pointer;
   outline: none;
}

.pageBtn:hover {
   background-color: #F0E68C;
   color: #fff;
}
</style>

<script type="text/javascript">
   var loginMove = function() {
      location.href = './login.do'
   }
</script>

</head>

<body>

<%--    <jsp:include page="/WEB-INF/views/Header.jsp" /> --%>
<!-- <div style="height: 1000px;"> -->

<!-- </div> -->
   <div id='wrap'>
      <h1 id='headerTxt'>Hello Spring Projects..</h1>

      <div class='btnArea'>
         <h2 class='headerTxt'>Get-Post</h2>
         <form action="./home.do" method="post">
            <input class='pageBtn' type="button" value='Get페이지 이동'
               onclick="location.href='./home.do'" />
               <input class='pageBtn' type="submit" value='Post페이지 이동' />
         </form>
      </div>

      <div class='btnArea'>
         <h2 class='headerTxt'>MemberListView</h2>
         <input class='pageBtn' type="button" value='Get페이지 이동'
            onclick="location.href='./member/list.do'" />
      </div>

      <div class='btnArea'>
         <h2 class='headerTxt'>Login Page</h2>
         <input class='pageBtn' type="button" value='로그인 페이지 이동'
            onclick="loginMove();" />
      </div>
   </div>

<%--    <jsp:include page="/WEB-INF/views/Tail.jsp" /> --%>

</body>
</html>