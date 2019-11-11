<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

  <style>
#bottom_wrap {
  
    width: 100%;
    height: 222px;
    margin: 0 auto;
    text-align: center;
    z-index: 1000;
    bottom: 0px;
    position: inherit;
    

}

#bottom {
    width: 1260px;
    height: 111px;
    margin: 0 auto;
    
}
#bottom_center {
    width: 1195px;
    height: 111px;
    float: left;
    text-align: left;
}
#bottom_center #left_copy {
    width: 100%;
    height: 111px;
    float: left;
}
#bottom_center #left_copy #footer {
    font: bold 12px 'Dotum';
    color: #6c6c6c;
    padding: 34px 0 0 5px;
    line-height: 24px;
}
ul, li {
    margin: 0 auto;
    padding: 0;
    list-style: none;
    font-weight: normal;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
ul, li {
    margin: 0 auto;
    padding: 0;
    list-style: none;
    font-weight: normal;
} 
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.btn_top {
height:50px;
width:50px;
position:fixed;
right:5px;
bottom:5px;
z-index:1;
background-image: url("https://img.icons8.com/ios-glyphs/60/000000/circled-chevron-up.png");
border-radius : 50px;
background-size: contain;
}

  </style>
</head>
<body>

	<div id="bottom_wrap">
		<div id="bottom">
			<div id="bottom_center">
				<div id="left_copy">
					<div id="footer">
								
								
								
								
									
							
						<ul style="margin: 20px; margin-left: 64px;">
							<li><img src="${cp}/resources/image/foot.png"
								style="padding-top: 28px;"></li>
							<li style="float: right; margin-right: 180px; margin-top: -40px;">24시PET동물병원
								| 서울특별시 종로구 돈화문로 26 4층 | 대표전화 02.1234.0000 | 팩스 02.888.7777<br>
								사업자번호 123-11-12345 &nbsp; 대표 단성사 Copyright (C)2010 ~2013 <u>PETSPITAL</u>
								ALL RIGHTS RESERVED.
							</li>
							<li style="margin-left: 988px;"><img
								style="margin-top: -100px;" src="${cp}/resources/image/QR.PNG"></li>
							<li style="margin-left: 450px;" class="w3-container  w3-xlarge">
								<a href="#"> <i class="fa fa-facebook-official"> </i>
							</a> <a href="#"> <i class="fa fa-pinterest-p"> </i>
							</a> <a href="#"> <i class="fa fa-twitter"> </i>
							</a> <a href="#"> <i class="fa fa-flickr"> </i>
							</a> <a href="#"> <i class="fa fa-linkedin"> </i>
							</a> <a href="#"> <input type="button" class="btn_top">
							</a>
							</li>
						</ul>
									
					</div>
					</div>

		</div>
	</div>
</div>
</body>
</html>