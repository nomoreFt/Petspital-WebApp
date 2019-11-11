<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	/* function commentModify(cId,bId){
	 var content2 = $("textarea#content2").val(); 
	 var result = confirm(content2 +  " 로 댓글을 수정하시겠습니까?");
	
	 if(result){
	 $.ajax({ 
	 url: "commentModify",  
	 type: 'POST',  
	 dataType: 'json', 
	 data: JSON.stringify({ cId: cId, content:content2,bId: bId}),
	 contentType: 'application/json', 
	 mimeType: 'application/json',
	 success: function(response) {
	 if(response.result == true) {
	 commentList();
	 }
	 }, 
	 error:function(xhr, status, message) { 
	 alert(" status111: "+status+" er:"+message);
	 } 
	 });
	 }
	 }//저장 버튼 클릭시 작동
	 */

	$(document).ready(function(e) {

		$('#delete').click(function() {

			var user_pw = $('#user_pw').val()

			$.ajax({
				url : 'deleteUser',
				type : 'POST',
				datatype : 'json',
				data : JSON.stringify({
					user_pw : user_pw
				}),
				contentType : 'application/json',
				mimeType : 'application/json',
				success : function(data) {
					if (data == 1) {

						alert("탈퇴가 완료되었습니다.");
						location.href = '${cp}/main';

					} else if (data == 0) {

						$("#pw_check").text("입력하신 비밀번호는 현재 로그인되어있는 아이디와 안맞아 ");
						$("#pw_check").css("color", "red");
						return false;
					}
				}
			});
		});
	});
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/header/head.jsp"%>
	<div class="container">
		<h1 align="center">회원탈퇴</h1>
		<hr>
		<div class="col-md-6 col-md-offset-3">
			<p>탈퇴를 하시면 회원정보, 쿠폰, 예약 내역이 초기화 되며 복구하실 수 없습니다.</p>
			<p>정말로 탈퇴를 원하신다면 아래에 비밀번호를 입력하시고 탈퇴버튼을 눌러주세요.</p>
			&emsp;&emsp;
		</div>
		<label id="pwCheck" class="col-md-6 col-md-offset-4">비밀번호 </label>
		<div class="col-md-4 col-md-offset-4 col-xs-4">
			<input type="password" class="form-control" id="user_pw"
				name="user_pw" placeholder="PASSWORD" required> <br>
			<br>
		</div>

		<div class= "col-md-5 col-md-offset-7">
			<input type="button"
				class="memeberbtn btn btn-primary"
				value="탈퇴하기" id="delete"> <br>
			<br>
		</div>

	</div>
<%@ include file="/WEB-INF/views/footer/foot_min.jsp" %>
</body>
</html>