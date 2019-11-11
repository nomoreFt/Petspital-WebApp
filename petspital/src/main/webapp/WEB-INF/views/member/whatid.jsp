<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

   $('#btn').click(function() {
      //var user_name = $('#user_name').val();
      //var user_phone = $('#user_phone').val();
      
      if($('#user_name').val() == null) {
          alert("이름을 입력해 주세요");
          $("#user_name").focus();
          return false;
      }
      
      if($('#user_phone').val() == null) {
          alert("핸드폰번호를 입력해 주세요");
          $("#user_phone").focus();
          return false;
      }
      
      var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
        if (!(regExp.test($('#user_phone').val()))){
         alert("핸드폰번호를 정확하게 입력해 주세요")
          $("#user_phone").val("");
          $("#user_phone").focus();
          return false;
        }
             
             var user_name = $("#user_name").val();
             var user_phone = $("#user_phone").val();
        
/*           $.ajax({
             
            url : 'what_id?user_name='+user_name+'&user_phone='+user_phone,
            type : 'post',
            success : function(data) {
               if (data == null) {
                  alert("입력하신정보로 아이디없다. 돌아가");
                  return false;
               } else {
                  return true;
               }
            }
         });  */
   });
   
   
</script>

</head>
<body>
<%@ include file="/WEB-INF/views/header/head.jsp" %>
<div class="container">

   <form action = "${cp}/member/what_id" method="post" name="whatid" id="whatid">

<h1 align="center">아이디찾기</h1>

<div class="col-md-4 col-md-offset-4">
   <table class=table>
      <tr>
         <td>
            <input type="text" name="user_name" id="user_name" placeholder="이름" required class="form-control">
         </td>
      </tr>
      <tr>
         <td>
            <input type="text" name="user_phone" id = "user_phone" placeholder="핸드폰번호 ('-'를 포.함.한 번호를 입력해주세요)" required class="form-control">
         </td>
      </tr>
      <tr>
      <td>
      <input type="submit" id="btn" value="확인" class="btn btn-default pull-right">
      </td>
      </tr>
   </table>
   </div>
</form>
</div>
<%@ include file="/WEB-INF/views/footer/foot_min.jsp" %>

</body>
</html>