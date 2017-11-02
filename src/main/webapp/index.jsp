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
var menuItems;
$.ajax( {
	type:'Get',
	contentType : "application/json",
	dataType : 'json',
	url:'http://localhost:8080/EethuisScharlo/menu',
	success:function(data) {
	 menuItems = JSON.stringify(data);
	},
	error : function(e) {
		console.log("ERROR: ", e);
	},
	done : function(e) {
		console.log("DONE");
	}

	});

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
						<div class="ribbon-fold"><h1> <a href="index.html">Eethuis Scharlo</a></h1></div>
					</div>
					<h2>100% Halal</h2>
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
								<li><a onclick="handleTabs(0);" class="active">Huis</a></li>
								<li><a onclick="handleTabs(1);">Menu</a></li>
								<li><a onclick="handleTabs(2);">Winkelwagen</a></li>	
								<li><a onclick="handleTabs(3);">Contact</a></li>
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
	<%@include file="../WEB-INF/views/Welcome.html" %>
	<%@include file="../WEB-INF/views/Menu.html" %>
	<%@include file="../WEB-INF/views/Cart.html" %>
	<%@include file="../WEB-INF/views/Contact.html" %>


	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-left">
				<h4>Adres</h4>
				<ul>
					<li>Eethuis Scharlo</li>
					<li>Scharlo 32</li>
					<li>1815 CP Alkmaar</li>
					<li>072 515 10 81</li>
				</ul>				
			</div>
			<div class="col-md-3 footer-left">
				<h4>Populaire</h4>
				<ul>
					<li><a href="#">Kapsalon</a></li>
					<li><a href="#">Broodjes</a></li>
					<li><a href="#">Turkse Pizza's & Durum</a></li>
					<li><a href="#">Schotels</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-left">
		 		<h4>Nuttige links</h4>
				<ul>
					<li><a href="about.html">Huis</a></li>
					<li><a href="#">Menu</a></li>
					<li><a href="#">Winkelwagen</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-right">
				<p> © 2017 Eethuis Scharlo . All rights reserved</a></p>
				<div class="icons">
				<ul>
					<li><a href="https://www.facebook.com/Scharlo-food-1698619000390160/" class="twitter facebook"> </a></li>
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
    <script>
    function handleTabs(divRef) {
        if (divRef === 0){
        	$('#welcome').removeClass('hidden');
        	$('#menu').addClass('hidden');
        	$('#cart').addClass('hidden');
        	$('#contact').addClass('hidden');
        }else if (divRef === 1){
        	$('#welcome').addClass('hidden');
        	$('#menu').removeClass('hidden');
        	$('#cart').addClass('hidden');
        	$('#contact').addClass('hidden');
        }else if (divRef === 2){
        	$('#welcome').addClass('hidden');
        	$('#menu').addClass('hidden');
        	$('#cart').removeClass('hidden');
        	$('#contact').addClass('hidden');
        }else if (divRef === 3){
        	$('#welcome').addClass('hidden');
        	$('#menu').addClass('hidden');
        	$('#cart').addClass('hidden');
        	$('#contact').removeClass('hidden');
        }
    }
    </script>
</body>
</html>