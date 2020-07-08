<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
<link rel= "stylesheet" type="text/css" href="/englishvillage/resources/css/bootstrap.css?ver=1.2">
	<script type="text/javascript"
	src="/englishvillage/resources/js/bootstrap.js"></script>




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

.liLeft {
float: left;
}

.liRight {
float: right;
}
</style>

   
  
    <nav class="navbar navbar-inverse navbar-static-top">
    
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
            <li class="liLeft"><a href="#">튜터목록</a></li>
            <li class="liLeft"><a href="tutorRegister.do">튜터신청</a></li>
            <li class="liLeft"><a href="#">수강권</a></li>
            <li class="dropdown" style="float: right;">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${member.memberName} 회원님 <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li class="liLeft"><a href="myPage.do">마이 페이지</a></li>
                <li class="liLeft"><a href="myInfo.do">회원정보 수정</a></li>
                <li class="liLeft"><a href="#">보유 포인트 : ${member.memberPoint}</a></li>
                <li class="divider" style="clear: both;"></li>
                
                <li class="liLeft"><a href="studyList.do">수강내역</a></li>
                <li class="liLeft"><a href="QuestionList.do">문의내역</a></li>
                <li class="divider" style="clear: both;"></li>
                <li class="liLeft"><a href="<%=request.getContextPath()%>/logout.do">로그아웃</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
      <input id="sessionNo" type="text" value="${member.memberNo}" style="display: none; height: 0px;">
      <input id="alertStr" type="text" style="display: none; height: 0px;">
    </nav>
    
    
    
    