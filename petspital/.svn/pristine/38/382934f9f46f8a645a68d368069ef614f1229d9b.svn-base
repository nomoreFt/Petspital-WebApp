<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  
#img_hyo{
background-size: contain;
background-position: center;

margin-left: 35%;
}
#header {
    width: 100%;
}
body{
border-top: 5px solid #FFD966;
}

.inbox {
    width: 1000px;
    margin-left: 25%;
}
#header .inbox h1 {
    text-align: center;
    padding: 15px 0 10px;
}


#img2{
	width: 30px;
}
.navbar-nav > li{
  padding-left:10px;
  padding-right:10px;
}
  </style>
</head>
<body>

<header>
<div class="inbox">
<h1>
<a href="${cp}/main">
<img id="img_hyo" src="${cp}/resources/image/header1.png">
</a>
</h1>
<nav class="navbar navbar-default">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">
		<img id ="img2" src="${cp}/resources/image/nav.png">
	</a>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${cp}/main">Home</a></li>
        
        <li><a href="${cp}/introduction">병원소개</a></li>
        <li><a href="${cp}/reserve/reserveDateForm">예약하기</a></li>
        
        <li><a href="${cp}/shopping/ShoppingList">상품구매</a></li>    
        
        <c:set var="id" value="${sessionScope.memLoginOk}" />
        
        <c:if test="${empty id}">
              <li><a href="${cp}/member/memberlogin">로그인</a></li>
       </c:if>
       
       <c:if test="${not empty id}">
              <li><a href="${cp}/member/mypage">마이페이지</a></li>
              <li><a href="${cp}/member/memberlogout">로그아웃</a></li>
       </c:if>
       <li><a href=" ${cp}/jboard/jboardList">진료후기 게시판</a></li>
        <li><a href="${cp}/board/showList?pagenum=1&contentnum=10">QnA</a></li>
      </ul>
    </div>
    
  </div>
</nav>
</div>
</header>
</body>
</html>