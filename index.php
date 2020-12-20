<?php
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Fastian's Store</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}


.full {
    width: 100%;    
}
.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}
.footer {
	background: #191919;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}
.footer p {
	margin: 0;
}
.footer img {
	max-width: 100%;
}
.footer h3 {
	color: white;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 0px;
	text-transform: uppercase;
  margin-bottom: 15px;
}

.footer h4 {
	color: white;
	font-size: 2em;
	font-weight: 600;
	line-height: 38px;
	padding: 40px 0 10px;
	font-family: cursive;
  font-weight: lighter
}

.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 0px;
	color: #7F8C8D;
  padding: 0 0 8px 0;
}

.email{
  border-bottom: 3px solid #fff;
}
.footer ul li a {
	padding: 0 0 12px 0;
	display: block;
}
.footer a {
	color: white;
  font-weight: lighter;
}

.footer p {
	color: white;
  font-weight: lighter;
  font-size: 
}

.footer a:hover {
	text-decoration:none;
  font-weight: bold;
}
.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}

.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}

}
.footer a {
	color: #78828D
}

.footer-bottom {
  margin-top: 2em;
	border-top: 1px solid #DDDDDD;
	padding-top: 20px;
	padding-bottom: 10px;
}
.footer-bottom p.pull-left {
	padding-top: 6px;
  font-size: 0.75em
}


</style>

	</head>
<body>


	
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="index.php" class="navbar-brand" style="padding-right: 10px;">Fastian's Store</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<!--<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"style="padding-right: 5px;"></span>Home</a></li>
				<li><a href="#"></span>Product</a></li>
				<li><a href="#"></span>About us</a></li>
				<li><a href="#"></span>Contact us</a></li>
			</ul>-->
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="index.php"></span>Product</a></li>
				<li><a href="speakers.html"></span>About us</a></li>
				<li><a href="contact.html"></span>Contact us</a></li>
				<li style="width:200px;left:10px;top:10px;"><input style="border: 4px solid skyblue;  border-radius: 0px;" type="text" class="form-control" id="search"></li>
				<li style="top:10px;left:10px; "><button style=" border-radius: 0px; width:200px;left:10px;top:10px;" class="btn btn-primary" id="search_btn">Search</button></li>
			</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge">0</span></a>
					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>
							</div>
							<div class="panel-body">
								<div id="cart_product">
								<!--<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>-->
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>SignIn</a>
					<ul class="dropdown-menu">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Login</div>
								<div class="panel-heading">
									<form onsubmit="return false" id="login">
										<label for="email">Email</label>
										<input type="email" class="form-control" name="email" id="email" required/>
										<label for="email">Password</label>
										<input type="password" class="form-control" name="password" id="password" required/>
										<p><br/></p>
										<a href="#" style="color:white; list-style:none;">Forgotten Password</a><input type="submit" class="btn btn-success" style="float:right;">
									</form>
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row" >
		<div >
  <img class="mySlides" src="images/cover2.jpg" style="width:100%; height: 60vh;">
  <img class="mySlides" src="images/cover2.jpg" style="width:100%; height: 60vh;">
  <img class="mySlides" src="images/cover3.jpg" style="width:100%; height: 60vh;">
  <img class="mySlides" src="images/cover3.jpg" style="width:100%; height: 60vh;">


  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>
	</div>
</div>
	<p><br/><br><br></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-xs-12">
				<div id="get_category">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Categories</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
				<div id="get_brand">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Brand</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
			</div>
			<div class="col-md-8 col-xs-12">
				<div class="row">
					<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
				</div>
				<!--<div class="panel panel-info">
					<div class="panel-heading">Products</div>-->
					
						<div class="panel-body">
						<div id="get_product">
							<!--Here we get product jquery Ajax Request-->

						</div>
						<!--<div class="col-md-4">
							<div class="panel panel-info">
								<div class="panel-heading">Samsung Galaxy</div>
								<div class="panel-body">
									<img src="product_images/images.JPG"/>
								</div>
								<div class="panel-heading">$.500.00
									<button style="float:right;" class="btn btn-danger btn-xs">AddToCart</button>
								</div>
							</div>
						</div> -->

                  
                        
					</div>
					
					<div class="panel-footer">&copy; 2019</div>
				<!--</div>-->
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<center>
					<ul class="pagination" id="pageno">
						<li><a href="#">1</a></li>
					</ul>
				</center>
			</div>
         <div class="col-sm-3"></div>
         <div class="col-sm-7" style="border-top:  2px solid blue;">
         <div class="col-sm-1"></div>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v5.0&appId=633492930728978&autoLogAppEvents=1"></script>

<div class="fb-comments" data-href="http://localhost/Manish/index.php" data-width="300px" data-numposts="3"></div>
         </div>
		</div>
	</div>


<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <h4> Fastian's Store </h4>
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                    <h3> Contact </h3>
                    <ul>
                    	<li><p>contact no: +923032831741</p></li>
                        <li><a class="email"href="#"> </a></li>
                        <br/>
                        <li> <p> Address 1: Gulshan-e-hadeed Phase2 </p> </li>
                        <li> <p> Address 2: Fast NUCES shah latif town </p> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                    <ul>
                        <li> <h5> <a href="#" style="margin-top: 5em"> ABOUT US</a> <h5></li>
                        <li> <h5><a href="#"> Contact Us </a> <h5></li>
                        <li> <h5><a href="#"> Location </a> <h5></li>
                        <li> <h5><a href="#"> Product </a> <h5></li>
                    </ul>
                </div>
               
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
                          
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left copyright"> Design and Developed By Ashish Kumar, Nitesh kumar and Manish kumar</p>
       
        </div>
    </div>
    <!--/.footer-bottom--> 

</footer>



<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5d99b7156c1dde20ed053e3a/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->





</body>
</html>
















































