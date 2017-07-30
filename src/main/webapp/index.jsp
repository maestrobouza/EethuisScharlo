<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Eethuis Scharlo | Home :: Eethuis Scharlo<</title>
<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pizza Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="resources/css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="resources/css/style.css" type="text/css" rel="stylesheet">
<!--js-->
<script src="resources/js/jquery-1.11.1.min.js"></script> 
<script src="resources/js/modernizr.custom.js"></script>
<!-- //js -->
<script>
	$(document).ready(function () {
	    size_li = $("#myList li").size();
	    x=1;
	    $('#myList li:lt('+x+')').show();
	    $('#loadMore').click(function () {
	        x= (x+1 <= size_li) ? x+1 : size_li;
	        $('#myList li:lt('+x+')').show();
	    });
	    $('#showLess').click(function () {
	        x=(x-1<0) ? 1 : x-1;
	        $('#myList li').not(':lt('+x+')').hide();
	    });
	});
</script>
</head>
<body>
	<!--banner-->
	<div class="banner">
		<div class="banner-info">
			<div class="container">
				<div class="logo">
					<div class="ribbon">
						<div class="ribbon-fold"><h1> <a href="index.html">Scharlo</a></h1></div>
					</div>
					<h2>Eethuis Scharlo Food</h2>
				</div>			
				<!--navigation-->
				<div class="top-nav">
					<nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-center cl-effect-14">
								<li><a href="index.html" onclick="handleTabs();" class="active">Home</a></li>
								<li><a href="codes.html">Menu</a></li>
								<li><a href="gallery.html">Cart</a></li>	
								<li><a href="contact.html">Contact</a></li>
							</ul>	
							<div class="clearfix"> </div>
						</div>	
					</nav>		
				</div>	
				<!--navigation-->
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--banner-bottom-->
	<div class="banner-bottom">
		<div class="container">
			<!--welcome-->
			<div class="welcome">
				<h3 class="title">Welcome</h3>
				<p>Welkom bij Eethuis Scharlo Food restaurant, de specialist in Italiaanse pizza en Turkse gerechten</p>
				<div class="welcome-info">
					<div class="col-md-6 welcome-grids">
						<div class="welcome-img">
							<img src="resources/images/doner.jpg" class="img-responsive zoom-img" alt=""/>
						</div>
					</div>
					<div class="col-md-6 welcome-grids">
						<div class="welcome-img">
							<img src="resources/images/turkish_pizza.jpeg" class="img-responsive zoom-img" alt=""/>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
<!-- 				<p>Nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae </p>			 -->
			</div>
			<!--//welcome-->
		</div>
	</div>
	<!--//banner-bottom-->
	<!--//menu-->
	<!-- testimonial -->
	<div class="testimonial">
		<!-- container -->
		<div class="container">
			<h3 class="title">About us</h3>
			<!-- banner-text Slider starts Here -->
			<script src="resources/js/responsiveslides.min.js"></script>
			 <script>
				// You can also use "$(window).load(function() {"
					$(function () {
					// Slideshow 4
						$("#slider3").responsiveSlides({
						auto: true,
						pager:true,
						nav:false,
						speed: 500,
						namespace: "callbacks",
						before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
						}
					});	
				});
			</script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="testimonial-grids">
							<div class="testimonial-left">
								<img src="resources/images/t1.jpg" alt="" />
							</div>
							<div class="testimonial-right">
								<h5>Amgad Gandy</h5>
								<p><span>"</span> Chef-kok Amgad heeft een 30-jarige ervaring in Italiaanse en Turkse keuken. Het heeft de lachende en gastvrije karakter, waardoor u zich thuis voelt<span>"</span>
								</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- //container -->
	</div>
	<!-- //testimonial -->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-left">
				<h4>Address</h4>
				<ul>
					<li>Eethuis Scharlo</li>
					<li>Scharlo 32</li>
					<li>1815 CP Alkmaar</li>
					<li>072 515 10 81</li>
				</ul>				
			</div>
			<div class="col-md-3 footer-left">
				<h4>Popular</h4>
				<ul>
					<li><a href="#">Kapsalon</a></li>
					<li><a href="#">Broodjes</a></li>
					<li><a href="#">Turkse Pizza's & Durum</a></li>
					<li><a href="#">Schotels</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-left">
		 		<h4>Details</h4>
				<ul>
					<li><a href="about.html">Home</a></li>
					<li><a href="#">Menu</a></li>
					<li><a href="#">Cart</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-right">
				<p> © 2017 Eethuis Scharlo . All rights reserved</a></p>
				<div class="icons">
				<ul>
					<li><a href="https://www.facebook.com/search/top/?q=scharlo%20food" class="twitter facebook"> </a></li>
				</ul>
			</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//footer-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/bootstrap.js"></script>
</body>
</html>