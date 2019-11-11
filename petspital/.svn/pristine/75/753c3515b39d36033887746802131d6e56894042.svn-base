<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  
  <script type="text/javascript">
  


   $(document).ready(function(e) {
         $('#coupon').click(function() {
               coupon_check();
         });
         $('#update').click(function() {
             userUpdate();
       });
       
   });       
            
   
    function coupon_check() {
      
       var mem_num = $("#user_id").val();
       
      $.ajax({
         url : 'couponNum?mem_num='+mem_num,
         type : 'get',
         success : function(data) {
            
               $("#coupon").val(data);
            
      
            }, error : function(jqXHR, error) {
               console.log("Error "+error);
            }
         });
   
      };
  
      function userUpdate(){
    	  
    	  if($('#user_pw').val()==""){
		      alert("비밀번호를 입력해주셔야지 수정이 가능합니다.");
		      $("#user_pw").val("");
		      $("#user_pw").focus();
		      return false;
		    }
    	  
    	  if ($('#user_pw').val() != $('#user_pw2').val()) {
				alert('패스워드가 다릅니다.');
				$('#user_pw').focus();
				$("#user_pw2").val("");
				return false;
			}
    	  
    	  	var user_name = $("#user_name").val();
			var user_id = $("#user_id").val();
			var user_pw = $("#user_pw").val();
			var user_phone = $("#user_phone").val();
			var user_addr = $("#user_addr").val();
      
    	  $.ajax({
              url : 'updateUser',
              type : 'POST',
              datatype : 'json',
              data: JSON.stringify({user_name: user_name,user_id :user_id,user_pw: user_pw,user_phone:user_phone,user_addr:user_addr}),
              contentType: 'application/json', 
              mimeType: 'application/json',
              success : function(data) {
                 if (data == 1) {
                	 
                    alert("수정이 완료되었습니다.");
                   	location.href='${cp}/main';
                   	
                 } else if (data == 0) {
                 	alert("수정 실패!!!!!!!큰일큰일@!!!!다시 입력해주세용~~")
                 	location.href='${cp}/member/mypage';
                 }
              }
           });
       
      }
      
  </script>
  
  
</head>
<body>
<%@ include file="/WEB-INF/views/header/head.jsp" %>
<div class = "container">
   <h1 align="center">My Page</h1>
   <hr>
      <!-- 이름 -->
      <div class="form-group">
         <label for="user_name">이름</label> 
         <input type="text" class="form-control" id="user_name" name="user_name" value="${mem.user_name}" required readonly>
         <div class="check_font" id="name_check"></div>
      </div>
      <!-- 아이디 -->
      <div class="form-group">
         <label for="user_id">아이디</label> 
         <input type="text" class="form-control" id="user_id" name="user_id" value="${mem.user_id}" required readonly>
      </div>
      <!-- 비밀번호 -->
      <div class="form-group">
         <label for="user_pw">비밀번호</label> 
         <input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="PASSWORD" required>
         <div class="check_font" id="pw_check"></div>
      </div>
      <!-- 비밀번호 재확인 -->
      <div class="form-group">
         <label for="user_pw2">비밀번호 확인</label> 
         <input type="password" class="form-control" id="user_pw2" name="user_pw2" placeholder="Confirm Password" required>
         <div class="check_font" id="pw2_check"></div>
      </div>
      <!-- 휴대전화 -->
      <div class="form-group">
         <label for="user_phone">휴대전화 ('-'를 포.함.한 번호를 입력해주세요)</label> 
            <input type="text" class="form-control" id="user_phone" name="user_phone" value="${mem.user_phone}" required>
         <div class="check_font" id="phone_check"></div>
      </div>
      <!-- 주소 -->
      <div class="form-group">
         <label for="user_email">주소</label> 
            <input type="text" class="form-control" id="user_addr" name="user_addr" value="${mem.user_addr}" required>
         <div class="check_font" id="addr_check"></div>
      </div>

      
      <div class="reg_button ">
         <a class="btn btn-danger px-3"
            href="${pageContext.request.contextPath}"> <i
            class="joinbtn" aria-hidden="true"></i>취소하기
         </a>&emsp;&emsp;
         
         <input class="btn btn-primary px-3" type="button" class="upd88atebtn" value="수정하기" id="update">
      </div>
      <p>&nbsp;</p>
      <div class="reg_button">
         <input  type="button" class="couponbtn btn btn-default" value="보유쿠폰확인" id="coupon">
         <br>
      </div>
        <p>&nbsp;</p>
      <div class="reg_button">
         <input class="btn btn-default" type="button" value="예약내역 보기" id="reserveList" onclick="location.href='${cp}/reserve/reserveList'">
      </div>
      
      <br><br><br>
      <div class="form-group col-md-5 col-md-5 col-md-offset-2">
         <textarea rows="20" cols="100" readonly="readonly" disabled>제7조(회원탈퇴 및 자격상실 등)
         
         
① 회원은 언제든지 탈퇴신청을 할 수 있으며, 이 경우 petspital은 즉시 회원탈퇴를 처리합니다.
② 회원이 다음 각 호의 사유에 해당하는 경우 대한항공은 서비스 이용을 제한 또는 해지시킬 수 있습니다.


1. 회원 사망 시
2. 가입 신청 시 허위 내용을 기재하거나 2이상의 I.D.로 이중 등록한 경우
3. petspital 웹사이트에서 구매한 상품 등의 대금지급채무 및 기타 사이트 이용과 관련하여 회원이 부담하는 채무를 불이행하는 경우
4. 타인의 petspital 웹사이트 이용을 방해하거나 타인의 개인정보를 도용하는 등 전자거래질서를 침해·위협하는 경우
5. petspital 웹사이트를 이용하여 이 약관이 금지하는 행위 또는 법령, 공서양속 등에 반하는 행위를 하는 경우
6. 회원가입 후, 연속하여 1년 동안 petspital 웹사이트를 이용하기 위해 로그인한 기록이 없는 경우


③ petspital 서비스 이용을 제한·정지하고자 할 때에는 미리 그 사유, 일시, 기간을 전자우편, 전화, 서면 등으로 이용자에게 통지합니다. 다만 긴급을 요할 경우에는 조치 후에 통지할 수 있습니다.
④ petspital 서비스이용을 제한·정지시킨 후 그 제재사유가 된 행위가 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 대한항공은 회원자격을 상실시킬 수 있습니다.
⑤ petspital 회원자격을 상실시키는 경우에는 회원등록을 말소하며, 이 경우 말소 전에 회원에게 이를 통지합니다. 단, 상기 2항의 6에 의하여 이용자의 회원자격을 상실시킬 경우에는 자격 상실 30일 전까지 동 내용에 대한 안내문을 제 8조에 의거 통지하며, 자격이 상실된 회원의 개인정보는 인터넷 개인정보취급방침 사.항에 따라 파기합니다.
⑥ 서비스이용의 제한, 정지, 회원자격의 상실로 인한 손해에 대해서 petspital은 책임을 지지 않습니다.

</textarea><br>
         <input class="btn btn-basic" type="button" id="delete_check" value="탈퇴하러가기..." onclick="location.href='${cp}/member/delete'">
         <div class="check_font" id="user_delete"></div>
      </div>
</div>
<%@ include file="/WEB-INF/views/footer/foot.jsp" %>
</body>
</html>