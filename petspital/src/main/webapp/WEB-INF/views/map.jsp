<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는길</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
 .bgimg{
  background-color: #F5DA81;
   background-size: cover;	
   opacity: 0.4;
  position: fixed;
   height: 100%;
  width: 100%;
  z-index: -1;
  }
div#map {
	width: 500px;
	height: 500px;
	margin-left: 10%;
	margin-bottom: 5%;
	float: left;
}

#right {
	width: 500px;
	height: 500px;
	margin-left: 10%;
	float: left;
}

#head {
	font-family: arial, helvetica, sans-serif;
	margin-left: 10%;
	margin-right: 10%;
}
</style>


</head>
<body>


<div class="bgimg"></div>

	<%@ include file="/WEB-INF/views/header/head.jsp"%>

	<nav class="navbar navbar-expand-md" style="margin-left: 40%;">

		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${cp}/introduction">병원소개</a></li>
				<li><a href="${cp}/people">의료진 소개</a></li>
				<li><a href="${cp}/map">오시는 길</a></li>
			</ul>
		</div>

	</nav>
<div class="container" style="width: 1920px;">
	<div id="head">
		<h1 align="center">찾아오시는 길</h1>
		<hr>

		<div id="map"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b3a9deeb3efad13e63e8ba209a638b22"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center : new kakao.maps.LatLng(37.571005, 126.992531),
				level : 3
			};

			var map = new kakao.maps.Map(container, options);
		</script>

		<div id="right">
			<table>
				<tr>
					<td colspan="2">주소 : 서울특별시 종로구 돈화문로 26 4층<br> 지번) 서울특별시
						종로구 묘동 56 4층<br> <br>대표번호 : 02-1234-0000
						<hr>
				</tr>
				<tr>
					<td colspan="2" height="40"></td>
				</tr>
				<tr>
					<td width="100">주변버스</td>
					<td>종로3가 버스정류장 하차<br> 105, 201, 202, 241, 260, 270, 271,
						272<br>
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30"></td>
				</tr>
				<tr>
					<td width="100">주변지하철</td>
					<td><img src="resources/image/1sub.png"> <img
						src="resources/image/3sub.png"> <img
						src="resources/image/5sub.png"></td>
				</tr>
				<tr>
					<td></td>
					<td height="50">1,3,5호선 종로3가 하차<br></td>
				</tr>
				<tr>
					<td colspan="2" align="center" height="100"><a
						href="https://map.kakao.com/?nil_profile=title&nil_src=local">
							<input type="button" class="btn btn-danger" value="직접 길찾기">
					</a></td>
				</tr>
			</table>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/footer/foot.jsp" %>
</body>
</html>