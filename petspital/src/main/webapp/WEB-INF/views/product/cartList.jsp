<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="com.or.petspital.product.vo.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
   rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style>
 .bgimg{
  background-color: #F5DA81;
   background-size: cover;	
   opacity: 0.4;
  position: fixed;
   height: 100%;
  width: 100%;
  z-index: -1;
  }
#TextArea {
   display: block;
   clear: both;
   margin-bottom: 50px;
   margin-top: 50px;
   text-align: center;
   font-size: 18px;
   font-weight: 400;
   color: #999;
   letter-spacing: -0.03em;
   text-align: center;
}

#href {
   text-align: center;
   margin-bottom: 200px;
}

.line {
   margin-bottom: 5%;
}

#img_cart {
   width: 400px;
   height: 200px
}

table.table th {
   width: 150px;
   font-weight: bold;
   text-align: center;
   border-bottom: 1px solid #ccc;
   background: #FBEFF2;
}

table.table td {
   width: 30px;
   text-align: center;
   border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>

<div class="bgimg"></div>



   <%@ include file="/WEB-INF/views/header/head.jsp"%>

   <div class="container" style="width: 1920px;">
   <div id="TextArea">
      <h1>장바구니</h1>
   </div>
   <hr>

   <%
      request.setCharacterEncoding("UTF-8");
   %>

   <%
      HttpSession sess = request.getSession();
      Map<String, ProductVO> map = (Map<String, ProductVO>) sess.getAttribute("map");
   %>
   <div class="col-md-6 col-md-offset-3">
      <table class=" table table-striped">
         <tr>
            <th></th>
            <th>상품명</th>
            <th>종류</th>
            <th>가격</th>
            <th>수량</th>
            <th>합계</th>
         </tr>


         <%
            for (Map.Entry<String, ProductVO> entry : map.entrySet()) {
         %>
         <%-- ${error} --%>
         <tr>
            <td id="img_cart"><img
               src="${cp}/resources/image/<%=entry.getValue().getProduct_name() %>"
               style="width: 100%; height: 200px;"></td>
            <td><%=entry.getValue().getProduct_img()%></td>
            <td><%=entry.getValue().getProduct_kind()%></td>
            <td><%=entry.getValue().getProduct_price()%></td>
            <td><%=entry.getValue().getProduct_count()%></td>
            <td><%=entry.getValue().getProduct_price() * Integer.parseInt(entry.getValue().getProduct_count())%></td>
         </tr>


         <%
            }
         %>

         <tr>
            <td colspan="6" style="border-bottom: 0"><a
               href="${cp}/product/cartRemove"><input type="button"
                  id="delete" value="장바구니 삭제" class="btn btn-default pull-right"></a>
               <a href="${cp}/shopping/ShoppingList"><input type="button"
                  id="goshopping" value="쇼핑하러 가기" class="btn btn-default pull-right"></a></td>
         </tr>
      </table>
   </div>
</div>

   <%@ include file="/WEB-INF/views/footer/foot.jsp"%>
</body>
</html>