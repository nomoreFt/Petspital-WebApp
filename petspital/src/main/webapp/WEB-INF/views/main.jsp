<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
  <title>Bootstrap Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  
  
.dogblock {
    width: 90%;
    height: 45%;
}
  .dogblock .dogimg{
 	 width: 100%;
 	 height: 100%;
  }
  
  .immuneimg{
  	width: 90%;
  	height: 35%;
  }
  
 /*  .bgimg {
  background-image: url('${cp }/resources/image/배경.jpg');
  background-repeat : no-repeat;
  opacity: 0.4;
  position: fixed;
  background-size: cover;	
  height: 100%;
  width: 100%;
  } */
  
 .bgimg{
  background-color: #F5DA81;
   background-size: cover;	
   opacity: 0.4;
  position: fixed;
   height: 100%;
  width: 100%;
  z-index: -1;
  }
  
  
  .fontfix{
  font-weight: bold;
  font-size: 18px;
  font-family: "ng";
  }
  .fontfix div, .col-sm-8 div{
  color: red;
  display: inline;
  }
  
 .col-sm-8 h2,.col-sm-4 h2 {
    font-size: 40px;
    font-family: "ng";
}


@font-face {
 font-family: "ng";
 src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/CookieRunOTF-Bold00.woff') format('woff');
 font-weight: normal; 
 font-style: normal;
 }
  


  </style>
</head>
<body>
<div class="bgimg"></div>


<%@ include file="/WEB-INF/views/header/head.jsp" %>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h2>어서 오시개~</h2>
      <h5>Photo of PETSPITAL:</h5>
      
      <div class="dogblock">
      	<img class="dogimg" alt="fakeImg" src="${cp }/resources/image/어서오시개.png">
      </div>
      <div class="fontfix">
  	   모든 진료는<div>예약제</div>로 진행 됩니다.<br> <div>예약하기</div> 로 예약하시고 내원해주시면 대기시간을 줄이실 수 있습니다.
      </div>
      <h3>협력 업체</h3>
      <p>서울 종로구 동물병원</p>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">효자동물병원</a></li>
        <li><a href="#">누리봄동물병원</a></li>
        <li><a href="#">광화문동물병원</a></li>
      </ul>
    <!--날씨  -->
       <h3>오늘의 날씨</h3>
      <p>강아지와의 산책을 나가보시는건 어떤가요~?</p>
      <span class = js-weather>
      </span>
      <div class="js-clock">
    <h1>00:00</h1>
	</div>
  
      <hr class="hidden-sm hidden-md hidden-lg">
    </div>
    <div class="col-sm-8">
      <h2>최초 애견을 위한 <div>면역체계</div> 발견</h2>
      <h5>반려견을 더 소중히, Dec 7, 2017</h5>
      
    	 <img class="immuneimg" alt="fakeImg" src="${cp }/resources/image/면역.jpg">
      
      <p class="fontfix">아픈 강아지가 보내는 9가지 증상</p>
      <p class="fontfix">최첨단 영상장비를 통해 더욱 정확한 진단이 가능합니다.</p>
      <br>
      <h2><div>대형 견</div>들을 위한 시설 구비</h2>
      <h5>입마개는 물론 필수, Sep 2, 2017</h5>
      <div class="youtube"><iframe width="560" height="315" src="https://www.youtube.com/embed/NgXYqDhyW8s" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
     
      <p class="fontfix"> 10월의 화창한 어느 날.<br> 가평에 사는 셰퍼드 레오는 동네 자라섬으로 마실 다녀왔습니다.<br>자라섬에서 수잔 누나도 구조하고  콘개팀도 수색해드렸어요 'ㅅ'<br>특히 보듬의 보안 팀장 레오로서<br> 댕댕이페스티벌 한정으로 꾸며진 댕댕프리존에서 열심히 놀았...아니 보안도 확인했답니다!
<br>강아지 여러분! 여러분도, 주말 서울 가까운 곳으로 당일치지 여행 어떠신지요!</p>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/views/footer/foot.jsp" %>

 <script>
		window.onload = function() {
			popup();
		}

		function popup() {
			var url = "https://www.naver.com";
			var name = "popup test";
			var option = "width = 500, height = 500, top = 300, left = 200, location = no"
			window.open(url, name, option);
		}
	</script>

</body>
<script src="${cp}/resources/js/weather.js"></script>
<script src="${cp}/resources/js/clock.js"></script>

</html>
