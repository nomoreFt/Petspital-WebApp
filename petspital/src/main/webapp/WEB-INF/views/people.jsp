<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의료진 소개</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!--  33-->
<style>
#people{
margin-left:10%;
margin-right:10%;
}
#section{
width:70%;
margin-left:15%;
margin-top:20px;
}
#img{
width:180px;
heigt:220px;
}
</style>
</head>
<body>

<%@ include file="/WEB-INF/views/header/head.jsp"%>

	<nav class="navbar navbar-expand-md" style="margin-left: 40%;">
<div class="container" style="width: 1920px;">
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${cp}/introduction">병원소개</a></li>
				<li><a href="${cp}/people">의료진 소개</a></li>
				<li><a href="${cp}/map">오시는 길</a></li>
			</ul>
		</div>

	</nav>
<div id="people">
<h1 align="center">의료진 소개</h1>
<hr>
<!-- Band Members -->
<div id="section">
<section class="w3-row-padding w3-center w3-light-grey">
<br>
  <article class="w3-third">
    <p>원장    심 명 주</p>
    <img id="img" src="${cp}/resources/image/doctor2.jpg" alt="Random Name"  class="img-circle">
    <br><br>
    <p>약력</p>
    <p>서운대학교 야생동물과 졸업</p>
    <p>서운대학교 야생동물과 박사 수료</p>
    <p>쥬먼지동물병원 진료수의사</p>
    <p>현 Petspital병원 원장(내과)</p>
    
  </article>
  <article class="w3-third">
    <p>원장   권 민 덩</p>
    <img id="img" src="${cp}/resources/image/doctor3.jpg" alt="Random Name" class="img-circle">
    <br><br>
    <p>약력</p>
    <p>겅국대학교 수의과대학 졸업</p>
    <p>WOW동물병원 진료 수의사</p>
    <p>삼숭동물병원 진료 수의사</p>
    <p>현 Petspital병원 원장(외과)</p>
    
  </article>
  <article class="w3-third">
    <p>원장   박 효 영</p>
    <img id="img" src="${cp}/resources/image/doctor1.jpg" alt="Random Name" class="img-circle"><br>
    <br><br>
    <p>코려대학교 수의과대학 졸업</p>
    <p>코려대학교 부속 동물병원 인턴 및 레지던트</p>
    <p>현 Petspital병원 원장(내과)</p>
  </article>  
</section>
</div>

  <br><br>
</div>

<%@ include file="/WEB-INF/views/footer/foot.jsp" %>
</body>
</html>