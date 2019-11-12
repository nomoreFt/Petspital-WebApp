<%@page import="com.or.petspital.shopping.vo.ReplyVO"%>
<%@page import="com.or.petspital.shopping.DAO.ShoppingDAO"%>
<%@page import="com.or.petspital.shopping.vo.ShoppingVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">

.btn {
	border: none;
	color: white;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
}

.s {
	background-color: #FFFF00;
	color: black;
	font-weight: bold;
}

.s:hover {
	background-color: #333333;
	color: white;
}

.b {
	background-color: #f44336;
	font-weight: bold;
}

.b:hover {
	background-color: #333333;
	color: white;
}

.ta1 td {
	font-size: 28px;
	font-weight: normal;
}

th, td {
	padding: 16px;
	text-align: center;
}

.btn2 {
	border-radius: 4px;
	background-color: #333333;
	border: none;
	color: white;
	text-align: center;
	font-size: 13px;
	padding: 13%;
	width: 100px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
	display: inline;
	width: 120px;
}

.btn3 {
	border-radius: 4px;
	background-color: #FFFF00;
	border: none;
	color: black;
	text-align: center;
	font-size: 17px;
	padding: 13%;
	width: 100px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
	display: inline;
	font-weight: bold;
	width: 120px;
}

#leftbanner {
	position: fixed;
	_position: absolute;
	_z-index: -1;
	width: 170px;
	overflow: hidden;
	left: 30px;
	top: 300px;
	background-color: transparent;
	margin: 0;
	padding: 0;
}

#leftbanner li {
	list-style-type: none;
}

#leftbanner img {
	width: 100px;
	height: 100px;
}

#floatdiv {
	position: fixed;
	_position: absolute;
	_z-index: -1;
	width: 170px;
	overflow: hidden;
	right: 0px;
	top: 300px;
	background-color: transparent;
	margin: 0;
	padding: 0;
}

#floatdiv ul {
	list-style: none;
	padding-left: 0px;
}

.text2 button {
	font-size: 40px;
	width: 66px;
	height: 56px;
}

.text1 {
	padding-left: 0px;
	padding-right: 0px;
}

.text1 input {
	font-size: 40px;
	font-weight: bold;
	width: 30px;
	height: 20px;
	width: 30px;
	text-align: center;
}

#totalPrice {
	height: 50px;
	font-size: 30px;
	font-weight: bold;
	width: 200px;
	color: red;
	width: 200px;
	text-align: right;
}

.itemgoods {
	border-top: 2px solid #333;
	border-bottom: 1px solid #cccccc;
	background: #f2f2f2;
	letter-spacing: -1px;
}

.itemgoods li.in {
	margin-top: 0;
	z-index: 20;
}

.itemgoods ul {
    margin-left: 300px;
    margin-bottom : 0px;
    margin-top : 0px;
    margin-right : 113px;
	float: none;
	width: 1200px;
	height: 55px;
	padding: 0 335px 0 0;
	font-size: 0;
	-webkit-box-sizing: border-box;
}

.itemgoods li {
	float: left;
	position: relative;
	width: 25%;
	font-size: 12px;
	text-align: center;
	z-index: 10;
	list-style-type: none;
}

.itemgoods li a {
	display: block;
	margin: 0 0 0 -1px;
	padding: 12px 0 13px 0;
	color: #333333;
	font-size: 20px;
	font-weight: 400;
	border: 1px solid #cccccc;
	border-top: none;
	border-bottom: 1px solid #cccccc;
	background: #f2f2f2;
}

/* a {
	text-decoration: none;
} */

.replyContent {
	padding: 10px;
	margin: 20px 0;
}

.data {
	color: #999;
	display: inline-block;
	margin-left: 10px;
}

#btnDelete {
	color: black;
	background-color: yellow;
	font-weight: bold;
}
 .bgimg{
  background-color: #F5DA81;
   background-size: cover;	
   opacity: 0.4;
  position: fixed;
   height: 100%;
  width: 100%;
  z-index: -1;
  }

.btn33{
	border-radius: 10px;
	color: black;
	background-color: yellow;
}
.btn33:hover{
	background-color: red;
	color: white;
}

.btn3:hover{
	background-color: red;
	color: white;
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

<script>
	function fnMove(seq) {
		var offset = $("#div" + seq).offset();
		$('html, body').animate({
			scrollTop : offset.top
		}, 400);
	}

	function form_btn(n) {
		var text = document.getElementById("number"); // 폼 선택
		var text2 = document.getElementById("price").value;
		var totalPrice = document.getElementById("totalPrice");
		// 폼 값을 숫자열로 변환
		text_val = parseInt(text.value);
		text_val += n; // 계산
		
		
		
		text.value = text_val; // 계산된 값을 바꾼다

		if (text_val <= 0) {
			text.value = 1; // 만약 값이 0 이하면 1로 되돌려준다, 1보다 작은 수는 나타나지 않게하기 위해   
		}
		totalPrice.value = text2 * text_val;
	}

	
	$(function() {
		commentList();

		commentDelete();

		commentInsert();

	});

	function commentList() {
		var gdsNum = $('input:hidden[name="gdsNum"]').val();
		$.ajax({
			url : 'commentList/' + gdsNum,
			type : 'GET',
			contentType : 'application/json;charset=utf-8',
			dataType : 'json',
			error : function(xhr, status, msg) {
				alert("상태값 :" + status + " Http에러메시지 :" + msg);
			},
			success : commentListResult
		});
	}//userList

	//사용자 목록 조회 응답
	function commentListResult(xhr) {
		$("#commentBody").empty();

		$
				.each(
						xhr.data,
						function(idx, item) {
							$('<tr id = '+item.repNum+'>')
									.append($('<td>').html(item.userId))
									.append($('<td>').html(item.repCon))
									.append(
											$('<td>')
													.html(
															'<button  class = "btn btn-danger" id=\'btnDelete\'>삭제</button>'))
									.append(
											$(
													'<input type=\'hidden\' id=\'hidden_gdsNum\'>')
													.val(item.gdsNum))
									.append(
											$(
													'<input type=\'hidden\' id=\'hidden_repNum\'>')
													.val(item.repNum))
									.append(
											$(
													'<input type=\'hidden\' id=\'hidden_repCon\'>')
													.val(item.repCon))
									.append(
											$(
													'<input type=\'hidden\' id=\'hidden_userId\'>')
													.val(item.userId))
									.appendTo('#commentBody');
						});//each
	}//userListResult
	/*  $('#btnInsert').on('click',function(){ */
	//사용자 등록 요청
	function commentInsert() {
		//등록 버튼 클릭

		$('#btnInsert').click(function() {
			var userId = $('textarea#userId').val();
			var repCon = $('textarea#repCon').val();
			var gdsNum = $('input:hidden[name="gdsNum"]').val();

			$.ajax({
				url : "commentList",
				type : 'POST',
				dataType : 'json',
				data : JSON.stringify({
					userId : userId,
					repCon : repCon,
					gdsNum : gdsNum
				}),
				contentType : 'application/json',
				mimeType : 'application/json',
				success : function(response) {
					if (response.result == true) {
						commentList();
					}
				},
				error : function(xhr, status, message) {
					alert(" status: " + status + " er:" + message);
				}
			});
		});//등록 버튼 클릭
	}//userInsert

	//사용자 삭제 요청
	function commentDelete() {
		//삭제 버튼 클릭
		$('#commentBody').on('click', '#btnDelete', function() {

			var gdsNum = $(this).closest('tr').find('#hidden_gdsNum').val();
			var repNum = $(this).closest('tr').find('#hidden_repNum').val();
			var result = confirm("정말로 삭제하시겠습니까?");

			if (result) {
				$.ajax({
					url : 'comment/' + repNum,
					type : 'DELETE',
					contentType : 'application/json;charset=utf-8',
					dataType : 'json',
					error : function(xhr, status, msg) {
						console.log("상태값 :" + status + " Http에러메시지 :" + msg);
					},
					success : function(xhr) {
						console.log(xhr.result);
						commentList();
					}
				});
			}//if
		}); //삭제 버튼 클릭
	}//userDelete
</script>


</head>
<body>
<div class="bgimg"></div>
<%@ include file="/WEB-INF/views/header/head.jsp" %>

<div class="frm"  style="text-align: center;">
	<form action="${cp}/product/cartList">

   <table border="0" class="ta1">
      <tr>
         <td rowspan="5" style = "padding-left: 300px;padding-right: 50px;"><img alt="사진 공간"
            src="${cp}/resources/image/${shoppingVO.product_img}"></td>
      </tr>
      <tr>
         <td class="fontfix" style="padding-left: 50px;">상품 이름</td>
         <td class="fontfix" >${shoppingVO.product_name}</td>
      </tr>
      <tr>
         <td class="fontfix" style="padding-left: 50px;">상품 가격</td>
         <td class="fontfix">${shoppingVO.product_price}원</td>
      </tr>
      <tr>
         <td class="fontfix" style="padding-left: 50px;">수량</td>
         <td class="fontfix"><input type="number"  min="0" max="20" name="product_count"></td>
      </tr>

      <tr>
         <td colspan="2">
            <button class="btn33"style="width: 166px; height: 56px;">구매</button>
            <input type="hidden" id = js-img name="product_name" value="${shoppingVO.product_img}">
            <input type="hidden" name="product_img" value="${shoppingVO.product_name}">
            <input type="hidden" name="product_price" value="${shoppingVO.product_price}">
            <input type="hidden" name="product_num" value="${shoppingVO.product_num}">
            <input type="hidden" name ="product_kind" value="${shoppingVO.product_kind}">
             <input class="btn33" type="submit" style="width: 166px; height: 56px;" value="장바구니">
         </td>
      </tr>
   </table>
</form>

	<br>
	<br>
	<br>
	<br>
	<!-- ====================================================================================================== -->
	<div id="div1"></div>
	<div class="itemgoods">
		<ul>
			<li><a class="fontfix" href=javascript:void(0); onclick="fnMove('1')">상세 소개</a></li>
			<li><a class="fontfix" href=javascript:void(0); onclick="fnMove('2')">댓글 목록</a></li>
			<li><a class="fontfix" href=javascript:void(0); onclick="fnMove('3')">배송/교환/반품</a></li>
		</ul>
	</div>




	<!-- ====================================================================================================== -->










	<div  style="padding-left: 300px;padding-right: 300px;">
		<h2 class="fontfix" style="text-align: center;">상세 소개</h2>
		<div id="div1"></div>
		<c:forEach var="detailPicture" items="${list1 }">
			<img style="width: 100%;height: auto;" alt="사진 공간"
				src="${cp}/resources/image/${detailPicture.d_img}">

		</c:forEach>
	</div>
	<br>
	<br>
	<br>
	<br>
	<hr>
	<!-- ======================================================================================================= -->


	<div id="div2"></div>

	<div id="reply">

		<h2 class="fontfix">댓글 목록</h2>
		<form action="${cp}/shopping/Shop" method="post" autocomplete="off">
			<div class="input_area">
				<input type="hidden" name="gdsNum"
					value="${shoppingVO.product_num }"> <input type="hidden"
					name="product_num" value="${shoppingVO.product_num }"> <input
					type="hidden" name="product_img" value="${shoppingVO.product_img }">
				<input type="hidden" name="product_name"
					value="${shoppingVO.product_name }"> <input type="hidden"
					name="product_price" value="${shoppingVO.product_price }">

				<textarea name="userId" id="userId" style=" margin: 0px;width: 79px;height: 54px;" placeholder="아이디"></textarea>
				<textarea name="repCon" id="repCon" style=" margin: 0px; width: 755px;height: 54px;" placeholder="댓글내용"></textarea>
			</div>

			<div class="input_area">

				<input type="button" class="fontfix" value="소감 남기기" id="btnInsert">
				<!-- 		<button  id="btnInsert">소감 남기기</button>
		 -->
			</div>

		</form>


		<div class="container">
			<h2 class="fontfix">댓글 목록</h2>
			<table class="table text-center" border="0">
				<thead>
					<tr>
						<th class="text-center">아이디</th>
						<th class="text-center">내용</th>
					</tr>
				</thead>

				<tbody id="commentBody"></tbody>

			</table>
		</div>

	</div>

	<br>
	<br>
	<hr>

	<div id="div3" ></div>
	<h4 class="fontfix" style="color: red">배송안내</h4>
	<div class="fontfix">
	-업체가 지정한 택배사(업체별 상이)
	<br> -배송기간 결제 완료 후 2일 ~ 7일(주문 제작 상품의 경우 더 소요될 수 있습니다.)
	<br> -조건부 무료배송(업체별 상이)
	<br> -도서 산간지역의 경우 별도의 추가 운임료가 부과될 수 있습니다.
	<br> -일요일 및 법정 공휴일은 출고되지 않습니다.
	<br> -군부대는 배송이 불가합니다.
	<br> -구매 상품의 각 업체가 다를 경우 업체별 배송 정책이 적용됩니다.
	<br>
	<h4  class="fontfix"style="color: red">교환&반품 불가 안내</h4>
	-수령하신 날짜로부터 7일이 지난 경우
	<br> -제품을 개봉하거나 사용 또는 훼손,취급 부주의로 파손,고장,오염으로 인해 제품의 가치를 떨어뜨려 재품의
	가치를 떨어뜨려 재판매가 불가능한 경우
	<br> -슬링백,이동장,의류의 경우 개봉 및 시박 후에는 단순변심으로 반품 또는 교환이 불가능 합니다.
	<br> -개별적으로 주문제작되는 상품으로 재판매가 불가능한 경우(이니셜 표시 상품,사이즈 맞춤 상품등)
	<br> -복제가 가능한 상품등의 포장을 훼손한 경우
</div>

	<br>
	<br>
	<br>
	<br>
	<br>


	<div id="leftbanner">
		<span style="font: monospace; size: 10px">장바구니</span>
		<ul id = "js-cart">
		
		</ul>
	</div>


	<div id="floatdiv">
		<ul>
			<li><a class="btn2" href="#" style="font-size: 25px"> Top </a></li>
			<br>
			<li><button class="btn3" onclick="fnMove('1')">상세소개</button></li>
			<li><button class="btn3" onclick="fnMove('2')">댓글목록</button></li>
			<li><button class="btn3" onclick="fnMove('3')">배송안내</button></li>

		</ul>
	</div>
	</div>
	


<%@ include file="/WEB-INF/views/footer/foot.jsp"%>

</body>
<script src="${cp}/resources/js/ajaxShoppingCart.js"></script>
</html>