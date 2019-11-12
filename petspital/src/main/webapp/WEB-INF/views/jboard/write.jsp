<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


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
<script>
$(document).ready(function(){
   $("#btnSave").click(function(){
      var title=$("#title").val();
      var content=$("#content").val();
      var writer=$("#writer").val();
      if(title==""){
         alert("제목을 입력하세요");
         document.form1.title.focus();
         return;
      }
      if(content==""){
         alert("내용을 입력하세요");
         document.form1.content.focus();
         return;
      }
      if(writer==""){
         alert("이름을 입력하세요");
         document.form1.writer.focus();
         return;
      }
      document.form1.action = "${cp}/jboard/insert";
      document.form1.submit();
      
   });
});
</script>
</head>
<body>
   <%@ include file="/WEB-INF/views/header/head.jsp"%>
   <div class="container" style="width: 1920px;">
   <h2 style="text-align: center">진료후기 작성</h2>
   <hr>
   <br>

   <div class="col-md-6 col-md-offset-3">
      <form id="form1" name="form1" method="post" >
         <table class="table table-bordered">
            <h4 style="text-align: center">제목, 내용, 이름을 입력하시고 담당선생님을 선택하신 후
               확인버튼을 눌러주세요.</h4>
            <tr>
               <td>제목</td>
               <td><input name="title" id="title" size="80"
                  placeholder="제목을 입력해주세요" class="form-control"></td>
            </tr>
            <tr>
               <td>내용</td>
               <td><textarea name="content" id="content" rows="8" cols="75"
                     placeholder="내용을 입력해주세요" class="form-control"></textarea></td>
            </tr>
            <tr>
               <td>이름</td>
               <td><input name="writer" id="writer" placeholder="이름을 입력해주세요"
                  class="form-control"></td>
            </tr>
            <tr>
               <td>담당선생님</td>
               <td><select name="teacher" id="teacher" class="form-control">
                     <option>김원장</option>
                     <option>심원장</option>
                     <option>장원장</option>
                     <option>박원장</option>
                     <option>권원장</option>
               </select></td>
            </tr>

            <tr>
               <td colspan="2"><button type="button" id="btnSave"
               class="btn btn-default pull-right">확인</button>
                  <button type="reset" class="btn btn-default pull-right">취소</button></td>
            </tr>
         </table>
      </form>
   </div>
   </div>
   <%@ include file="/WEB-INF/views/footer/foot.jsp"%>
</body>
</html>