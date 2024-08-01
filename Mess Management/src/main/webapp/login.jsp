<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>पूर्णब्रह्म भोजनालय</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/style.css">

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts_login/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css_login/style2.css">
</head>
<body>

	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-12 col-md d-flex align-items-center">
					<p class="mb-0 phone"></p>
				</div>
				<div class="col-12 col-md d-flex justify-content-md-end">
					<p class="mb-0">Mon - Fri / 9:00-21:00, Sat - Sun / 10:00-20:00</p>
					<div class="social-media">
						<p class="mb-0 d-flex"></p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">अन्न हेच <span font-size:10%>पूर्णब्रह्म !!! </span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="home.jsp"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
					<li class="nav-item"><a href="menu.jsp" class="nav-link">Menu</a></li>			
					<li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
					<li class="nav-item active"><a href="login.jsp" class="nav-link">Login</a></li>
					<li class="nav-item"><a href="register.jsp" class="nav-link">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->


	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_5.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate text-center mb-5">
					<h1 class="mb-2 bread"></h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.jsp">
							
					</p>

					<!-- Sing in  Form -->
					
					
						<div class="container1">
							<div class="signin-content">
								<div class="signin-image">
									<figure>
										<img src="images_login/signin-image.jpg" alt="sing up image">
									 <p style=color:black><%= request.getParameter("msg") %></p> 
										<a href="register.jsp" class="signup-image-link">Create an account</a>
									</figure>
									
									
								</div>

								<div class="signin-form">
									<h2 class="form-title">Sign In</h2>
									<form method="POST" action="LoginServlet" class="register-form" id="login-form">
										<div class="form-group">
											<label for="your_name"><i
												class="zmdi zmdi-account material-icons-name"></i></label> <input
												type="text" name="name" id="your_name"
												placeholder="Your Name" />
										</div>
										<div class="form-group">
											<label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
											<input type="password" name="pass" id="your_pass"
												placeholder="Password" />
										</div>
										<div class="form-group">
											<input type="checkbox" name="remember-me" id="remember-me"
												class="agree-term" /> <label for="remember-me"
												class="label-agree-term"><span><span></span></span>Remember
												me</label>
										</div>
										<div class="form-group form-button">
											<input type="submit" name="signin" id="signin"
												class="form-submit" value="Log in" />
										</div>
									</form>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		
		
<footer class="ftco-footer ftco-no-pb ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">पूर्णब्रह्म</h2>
						<p>Discover the Authentic Taste of Maharashtrian Cuisine </p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
							
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Open Hours</h2>
						<ul class="list-unstyled open-hours">
							<li class="d-flex"><span>Monday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Tuesday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Wednesday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Thursday</span><span>9:00 -
									24:00</span></li>
							<li class="d-flex"><span>Friday</span><span>9:00 -
									02:00</span></li>
							<li class="d-flex"><span>Saturday</span><span>9:00 -
									02:00</span></li>
							<li class="d-flex"><span>Sunday</span><span> Closed</span></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Instagram</h2>
						<div class="thumb d-sm-flex">
							<a href="#" class="thumb-menu img"
								style="background-image: url(images/insta-1.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-2.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-3.jpg);"> </a>
						</div>
						<div class="thumb d-flex">
							<a href="#" class="thumb-menu img"
								style="background-image: url(images/insta-4.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-5.jpg);"> </a> <a
								href="#" class="thumb-menu img"
								style="background-image: url(images/insta-6.jpg);"> </a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2"></h2>
						<p>Serving The Traditional, Home Style Food</p>
						<form action="#" class="subscribe-form">
							<div class="form-group">
								<input type="text" class="form-control mb-2 text-center"
									placeholder="Enter email address"> <input type="submit"
									value="Subscribe" class="form-control submit px-3">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid px-0 bg-primary py-3">
			<div class="row no-gutters">
				<div class="col-md-12 text-center">

					<p class="mb-0">
						
						
					</p>
				</div>
			</div>
		</div>
	</footer>
	


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js_login/main.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>