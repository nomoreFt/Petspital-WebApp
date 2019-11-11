<%@page import="com.or.petspital.reserve.vo.Reservation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

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

th{
	background-color:#FBEFF2;
}

</style>

</head>
<body>

<div class="bgimg"></div>



<%@ include file="/WEB-INF/views/header/head.jsp" %>
   
   <div class="table-responsive">
   <div  class="col-md-6 col-md-offset-3">
   <h4>
   	<span class="glyphicon glyphicon-heart" aria-hidden="true"></span> 
   		나의 예약 내역 
   	<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
   </h4>
   
   <table border="1" id="showList" class="table">
      <tr>
         <th>날짜</th>
         <th>시간</th>
         <th>메모</th>
      </tr>
      
      <c:forEach var="reserveVo" items="${reserveList}">
      <tr>
         <td>${reserveVo.res_date}</td>
         <td><a href="${cp}/reserve/reserveMemo?res_num=${reserveVo.res_num}">${reserveVo.res_time}</a></td>
         <td>${reserveVo.res_memo}</td>
      </tr>
      </c:forEach>
   </table>
   <h4><a href="${cp}/reserve/reserveDateForm">[새로운 예약 하러가기]</a></h4>
   </div>
   </div>
<%@ include file="/WEB-INF/views/footer/foot_min.jsp" %>
</body>
</html>   
</body>
</html>