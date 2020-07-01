<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/bootstrap.css?ver=1.2">
<script type="text/javascript"
	src="/englishvillage/resources/js/jquery-3.5.1.js"></script>
	<script type="text/javascript"
	src="/englishvillage/resources/js/bootstrap.js"></script>
<script type="text/javascript">

</script>
<style>

#naviUl > li > a{

	font-size: 20px;
    font-weight: bold;
    color: white;
}

#naviUl > li > a:hover{

	color: #d9edf7;
}

a.navbar-brand.active {
    font-size: 30px;
    font-weight: bold;
    color: white;
}

.dropdown-menu {
min-width: 172px;

}

</style>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand active" href="home.do">English Village</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="naviUl" class="nav navbar-nav">
            <li><a href="#">튜터목록</a></li>
            <li><a href="tutorRegister.do">튜터신청</a></li>
            <li><a href="#">수강권</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${member.memberName} 회원님 <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="myPage.do">마이 페이지</a></li>
                <li><a href="myInfo.do">회원정보 수정</a></li>
                <li><a href="#">보유 포인트 : ${member.memberPoint}</a></li>
                <li class="divider"></li>
<!--                 <li class="dropdown-header">----</li> -->
                <li><a href="QuestionList.do">문의내역</a></li>
                <li><a href="<%=request.getContextPath()%>/logout.do">로그아웃</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    

    
    
    