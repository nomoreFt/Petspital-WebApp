<%@page import="com.or.petspital.shopping.controller.ShoppingController"%>
<%@page import="com.or.petspital.shopping.vo.ShoppingVO"%>
<%@page import="java.util.List"%>
<%@page import="com.or.petspital.shopping.DAO.ShoppingDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

* {
	box-sizing: border-box;
}

body {
	background-color: #f1f1f1;
	font-family: Arial;
}

.btn.active {
	background-color: #666;
	color: white;
}

.btn:hover {
	background-color: #ddd;
}

.btn {
	border: none;
	outline: none;
	padding: 12px 16px;
	background-color: white;
	cursor: pointer;
}

.column {
	float: left;
	width: 33.33%;
	display: none; /* Hide all elements by default */
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.content {
	background-color: #F7CECE;
	padding: 10px;
}
.content:hover{
	background-color: black;
	color: white;
}

.show {
	display: block;
}

.row {
	margin: 10px -16px;
}

.row, .row>.column {
	padding: 8px;
}

h1 {
	font-size: 50px;
	word-break: break-all;
}

a:link {
	text-decoration: none;
	color: #333333;
}

a:visited {
	text-decoration: none;
	color: #333333;
}

a:active {
	text-decoration: none;
	color: #333333;
}

a:hover {
	text-decoration: underline;
	color: red;
}

@font-face {
 font-family: "ng";
 src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/CookieRunOTF-Bold00.woff') format('woff');
 font-weight: normal; 
 font-style: normal;
 }
 
.fontfix{
  font-weight: bold;
  font-size: 18px;
  font-family: "ng";
 }
</style>

</head>
<body>

<div class="bgimg"></div>
<%@ include file="/WEB-INF/views/header/head.jsp" %>
	<h1 style=" margin-left: 10%;">쇼핑리스트</h1>
	<div id="myBtnContainer"style=" margin-left: 10%;">
		<button class="btn active" onclick="filterSelection('all')">
			전체 목록</button>
		<button class="btn" onclick="filterSelection('feed')">사료</button>
		<button class="btn" onclick="filterSelection('snack')">간식</button>
		<button class="btn" onclick="filterSelection('fashion')">패션/의류</button>
		<button class="btn" onclick="filterSelection('beauty')">
			미용/목욕</button>
	</div>



	<div class="row" style="margin-left: 10%; margin-right: 10%;">
		<c:forEach var="amugona" items="${list}">
			<div class="column ${amugona.product_kind}">
	
				<a
					href="${cp}/shopping/Shop?product_img=${amugona.product_img}&product_name=${amugona.product_name}&product_kind=${amugona.product_kind }&product_price=${amugona.product_price}&product_num=${amugona.product_num}">
					<div class="content">
						<img src="${cp}/resources/image/${amugona.product_img}"
							alt="사진 공간" style="width: 100%; height: 250px;">
						<h4 class="fontfix">${amugona.product_name}</h4>
						<p class="fontfix">${amugona.product_kind }</p>
						<p class="fontfix">${amugona.product_price}원</p>
					</div>
				</a>

			</div>
		</c:forEach>
	</div>





	<script type="text/javascript">
		filterSelection("all")
		function filterSelection(c) {
			var x, i;
			x = document.getElementsByClassName("column");
			if (c == "all")
				c = "";
			for (i = 0; i < x.length; i++) {
				w3RemoveClass(x[i], "show");
				if (x[i].className.indexOf(c) > -1)
					w3AddClass(x[i], "show");
			}
		}

		function w3AddClass(element, name) {
			var i, arr1, arr2;
			arr1 = element.className.split(" ");
			arr2 = name.split(" ");
			for (i = 0; i < arr2.length; i++) {
				if (arr1.indexOf(arr2[i]) == -1) {
					element.className += " " + arr2[i];
				}
			}
		}

		function w3RemoveClass(element, name) {
			var i, arr1, arr2;
			arr1 = element.className.split(" ");
			arr2 = name.split(" ");
			for (i = 0; i < arr2.length; i++) {
				while (arr1.indexOf(arr2[i]) > -1) {
					arr1.splice(arr1.indexOf(arr2[i]), 1);
				}
			}
			element.className = arr1.join(" ");
		}

		// Add active class to the current button (highlight it)
		var btnContainer = document.getElementById("myBtnContainer");
		var btns = btnContainer.getElementsByClassName("btn");
		for (var i = 0; i < btns.length; i++) {
			btns[i].addEventListener("click", function() {
				var current = document.getElementsByClassName("active");
				current[0].className = current[0].className.replace(" active",
						"");
				this.className += " active";
			});
		}
	</script>

<%@ include file="/WEB-INF/views/footer/foot.jsp"%>
</body>
</html>