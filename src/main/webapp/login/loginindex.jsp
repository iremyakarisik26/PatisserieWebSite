<%@ page import="Class.Baglanti" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!--A Design by W3layouts
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>GIRIS</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Project Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<!-- Google fonts -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<!-- Google fonts -->

<!-- css files -->
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">   
<!-- //css files -->

<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->

<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" /> <!-- popup box css -->

</head>
<!-- body starts -->
<body>

<!-- section -->
<section class="register">
	<div class="header">
		<div class="logo">
			<a href="#">IREM PASTANESİ</a>
		</div>
	<div class="social">
			<li><a href="#"><span class="fa fa-facebook"></span></a></li>
			<li><a href="#"><span class="fa fa-twitter"></span></a></li>

	</div>
		<div class="clear"></div>
	</div>

	<div class="register-full">
		
		<div class="register-right">
			<div class="register-in">
				<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog2">KAYIT OL:»</a>
			</div>
			<div class="register-in middle">
				<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">KULLANICI GİRİŞ:»</a>
			</div>
			<div class="register-in ">
				<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog1"> ADMİN GİRİŞ:»</a>
			</div>
			<div class="register-in">
				<a href="ilksayfaindex.jsp">ZİYARETÇİ GİRİŞ»</a>
			</div>
			<div class="clear"> </div>
		</div>
	<div class="clear"> </div>
	</div>
	<!-- copyright -->
	
	<!-- //copyright -->
</section>
<!-- //section -->



<!-- login form popup-->
<div class="pop-up"> 
	<div id="small-dialog" class="mfp-hide book-form">

		<div class="login-form login-form-left"> 
			<div class="agile-row">
				<h3>KULLANICI GİRİŞ</h3>
				<span class="fa fa-lock"></span>
				<div class="clear"></div>
				<div class="login-agileits-top"> 	
					<form action="kullanicigiriskontrol.jsp" method="post"> 
						<input type="email" class="email" name="kullanici_mail" Placeholder="E-MAIL" />
						<input type="password" class="password" name="kullanici_sifre" Placeholder="SIFRE" />
						<input type="submit" value="GIRIS"> 
					</form> 	
				</div> 
				
			</div>  
		</div> 
		
	</div>  
</div>
<!-- //login form popup-->

<!-- subscribe form popup-->
<div class="pop-up"> 
	<div id="small-dialog1" class="mfp-hide book-form">

		<div class="login-form login-form-left"> 
			<div class="agile-row">
				<h3>ADMİN GİRİŞ</h3>
				<p></p>
				<div class="clear"></div>
				<div class="login-agileits-top"> 	
					<form  action="admingiriskontrol.jsp" method="post"> 
						<input type="email" class="email" name="admin_mail" Placeholder="E-MAİL" />
						<input type="password" class="password" name="admin_sifre" Placeholder="SİFRE" />
						<input type="submit" value="GİRİŞ"> 
					</form> 	
				</div>
			</div>  
		</div> 
		
	</div>  
</div>
<!-- //subscribe form popup-->

<!-- register form popup-->
<div class="pop-up"> 
	<div id="small-dialog2" class="mfp-hide book-form">
	
		<div class="login-form login-form-left"> 
			<div class="agile-row">
				<h3>KAYIT OL</h3>
				<div class="login-agileits-top"> 	
					<form action="kullanicikayit.jsp" method="post"> 
						<input type="email" class="email" name="kullanici_mail" Placeholder="GIRIS"/>
						<input type="password" class="password" name="kullanici_sifre" Placeholder="SIFRE"/>
						<div class="login-check">
						</div>
						<input type="submit" value="KAYIT"> 
					</form> 	
				</div>
			</div>
		</div>
		
	</div>
</div>
<!-- //register form popup-->

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->

<!--popup-js-->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
 <script>
	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script>
<!--//popup-js-->

</body>	
<!-- //body ends -->
</html>
