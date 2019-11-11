<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
.fakeimg {
	height: 550px;
	width: 1000px;
	float: center;
}
#sidebar{
margin: 0 0 0 475px; 
float: center; 
width: 1850px; 
heigth: 500px;
}
#container{
width: 1920px; 

float: center;
position:relative;
min-height:100%;

}
#content{
margin: 0 0 0 500px; 
width: 50%;
}
#footer{
clear: both; 

    position:inherit;

    bottom:0;

    width:100%;

    height:70px;   
}
main { 
min-height:100vh; 
}
footer { 
background-color:#000;
height: 200px;
}


.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
  padding: 10px 16px;
}
  
.btn-lg {
  font-size: 18px;
  line-height: 1.33;
  border-radius: 6px;
}

.btn-primary {
  color: #fff;
  background-color: #428bca;
  border-color: #357ebd;
}

.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active,
.open .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #3276b1;
  border-color: #285e8e;
}

.sharp {
  border-radius:0;
}


.btn {
    padding: 14px 24px;
    border: 0 none;
    font-weight: 700;
    letter-spacing: 1px;
    text-transform: uppercase;
    margin-left: 400px;
}
.btn:focus, .btn:active:focus, .btn.active:focus {
    outline: 0 none;
}

.btn-primary {
    background: #0099cc;
    color: #ffffff;
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
    background: #33a6cc;
}
.btn-primary:active, .btn-primary.active {
    background: #007299;
    box-shadow: none;
}

</style>


<body>

	<div id="container">

		<div id="sidebar">

			<!-- Slide Show -->
			<section>
				<img class="fakeimg" src="${cp}/resources/image/petspital.png">
				<img class="fakeimg" src="${cp}/resources/image/3.jpg"> 
				<img class="fakeimg" src="${cp}/resources/image/dog_pen.png">
			</section>

		</div>

		<div id="content">


			<!-- Band Description -->
			<section class="w3-container w3-center w3-content" style="max-width: 600px">
				<h2 class="w3-wide">Petspital</h2>
				<p class="w3-opacity">
					<i>We love animal</i>
				</p>
				<p class="align-center vi">우리는 항상 진심을 다해 고객분들을 모십니다.</p>

			</section>

			<button class="btn btn-primary btn-lg sharp" id="btnInside"
				type="button" onclick="location.href='${cp}/main'">GO Main☞</button>
				
			<br>
			<br>

		</div>


			<!-- Footer -->
		<div id="footer">
			<footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
			 	<div>PET CARE</div>
                <div>@ 2019 dog cat</div>
				<a href="#">
					<i class="fa fa-facebook-official"></i>
				</a> 
				<a href="#">
					<i class="fa fa-pinterest-p"></i>
				</a> <a href="#">
					<i class="fa fa-twitter"></i>
				</a> 
				<a href="#">
					<i class="fa fa-flickr"></i>
				</a>
				<a href="#">
					<i class="fa fa-linkedin"></i>
				</a>
			</footer>
		</div>
	</div>
</body>
	<script>
		// Automatic Slideshow - change image every 3 seconds
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("fakeimg");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 3000);
		}
	</script>
</html>

