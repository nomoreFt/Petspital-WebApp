<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<%@ include file="/WEB-INF/views/header/head.jsp" %>
<div class="container">
<h1 align="center">아이디찾기</h1>
<hr>
<br>
<div class="col-md-6 col-md-offset-4">
   	아이디 : <span id= "id" style="color : red">${mem.user_id}</span>
   <br><br>
   <p>${mem.user_name} 고객님 즐거운 하루되세엽!
   <br><br>
   <p>고객님의 아이디 찾기가 성공적으로 이루어졌습니다.</p>
   <p>항상 고객님의 즐겁고 편리한 병원이용을 위해</p>
   <p>최선의 노력을 다하는 병원이 되도록 하겠습니다.</p>
</div>


<div class="col-md-7">
<br><br>
<button id= "login" class="btn btn-default pull-right" onclick="location.href = '${cp}/member/memberlogin'">로그인</button>
<button id = "gopw" class="btn btn-primary pull-right" onclick="location.href = '${cp}/member/whatpw'">비밀번호찾기</button>
<br><br><br><br>
</div>
</div>
<%@ include file="/WEB-INF/views/footer/foot_min.jsp" %>
</body>
</html>