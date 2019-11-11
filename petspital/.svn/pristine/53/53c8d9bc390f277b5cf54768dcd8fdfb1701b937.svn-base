<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료후기 작성</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- 
<script>
function inputPwd(){
	var userPwdfromServer = ${memPw};
	confirm("??"+userPwdfromServer);
	
}
</script> -->
<script>
	$(document).ready(function() {

		$("#btnDelete").click(function() {

			var userPwdfromServer = "${memPw}";
			if (confirm("삭제하시겠습니까?")) {
				var userPwd = prompt("당신의 패스워드를 작성해주세요.");

				if (userPwdfromServer == userPwd) {
					alert("삭제합니다.");
					document.form1.action = "${cp}/jboard/delete";
					document.form1.submit();
				} else {
					alert("비밀번호가 틀렸습니다. 다시 입력해주세요.");
				}
			}
		});

		$("#btnUpdate").click(function() {
			var title = $("#title").val();
			var content = $("#content").val();
			var writer = $("#writer").val();

			var userPwdfromServer = "${memPw}";
			/* confirm("??"+userPwdfromServer); */
			var userPwd = prompt("당신의 패스워드를 작성해주세요.");

			if (userPwdfromServer == userPwd) {
				alert("수정합니다.");
				document.form1.action = "${cp}/jboard/update";
				document.form1.submit();
			} else {
				alert("비밀번호가 틀렸습니다. 다시 입력해주세요.");
			}

			if (title == "") {
				alert("제목을 입력하세요");
				document.form1.title.focus();
				return;
			}
			if (content == "") {
				alert("내용을 입력하세요");
				document.form1.content.focus();
				return;
			}
			if (writer == "") {
				alert("이름을 입력하세요");
				document.form1.writer.focus();
				return;
			}
			//폼에 입력한 데이터를 서버로 전송

		});
	});
</script>

</head>
<body>
	<%@ include file="/WEB-INF/views/header/head.jsp"%>
	<div class="container" style="width: 1920px;">
	<h2 style="text-align: center">진료후기 보기</h2>
	<hr>
	<br>
	<div class="col-md-6 col-md-offset-3">
		<form id="form1" name="form1" method="post">
			<table class="table table-bordered">
				<tr>
					<td>작성일자:</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${vo.regdate}" /></td>
				</tr>
				<tr>
					<td>조회수:</td>
					<td>${vo.viewcnt}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input name="title" id="title" size="80"
						value="${vo.title}" placeholder="제목을 입력해주세요" class="form-control"></td>
				</tr>

				<tr>
					<td>내용</td>
					<td><textarea name="content" id="content" rows="8" cols="80"
							placeholder="내용을 입력해주세요" class="form-control">${vo.content}</textarea></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input name="writer" id="writer" value="${vo.writer}"
						placeholder="이름을 입력해주세요" readonly="readonly" class="form-control"></td>
				</tr>
				<tr>
					<td>담당선생님</td>
					<td><input name="teacher" id="teacher" value="${vo.teacher}"
						readonly="readonly" class="form-control"></td>
				</tr>
			</table>
			<div>
				<input type="hidden" name="bno" value="${vo.bno}">
				<button type="button" id="btnDelete"
					class="btn btn-default pull-right">삭제</button>
				<button type="button" id="btnUpdate"
					class="btn btn-default pull-right">수정</button>
			</div>
		</form>
	</div>
	</div>
	<%@ include file="/WEB-INF/views/footer/foot.jsp"%>
</body>
</html>