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
</head>
<body>

	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-12 col-md d-flex align-items-center">
					<p class="mb-0 phone">
						
					</p>
				</div>
				<div class="col-12 col-md d-flex justify-content-md-end">
					<p class="mb-0">Mon - Fri / 9:00-21:00, Sat - Sun / 10:00-20:00</p>
					<div class="social-media">
						<p class="mb-0 d-flex">
							
						</p>
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
					<li class="nav-item active"><a href="adminhome.jsp"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="cart.jsp" class="nav-link">Add Menu</a></li>			
					<li class="nav-item"><a href="Payment.jsp" class="nav-link">Payment</a></li>
					<li class="nav-item"><a href="Order.jsp" class="nav-link">Order</a></li>
					<li class="nav-item"><a href="User.jsp" class="nav-link">User</a></li>
					<li class="nav-item"><a href="home.jsp" class="nav-link">LogOut</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
<style>
    .div-1 {
        background-color: #000000;
        opacity: 0.8;
       
    }
    
    .div-2 {
    	padding-left: 210px;
    	
    }
    
    .div-3 {  	
  padding-top: 70px;
  /* padding-right: 50px; */
  padding-bottom: 110px;
  padding-left: 120px;
    }
</style>

	<section class=" div-1">
		<!-- <div class="home-slider owl-carousel  div-1"> -->
		<section class="ftco-section"> 
		<div class=" div-3">
			<div class=" ">
				<div class="col-sm-7 p-4 p-md-5 d-flex align-items-center justify-content-center bg-primary">
					<form action="addmenu" method="POST" class="appointment-form" enctype="multipart/form-data">
						<h3 class="mb-3">Add Menu</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon"><span class="fa fa-chevron-down"></span></div>
											<select name="meal" id="meal" class="form-control">
												<option value="">Meal Type</option>
												<option style="color:black" value="breakfast">BreakFast</option>
												<option style="color:black" value="dinner">Dinner</option>
												<option style="color:black" value="lunch">Lunch</option>
												
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="item" id="item" class="form-control" placeholder="Food Item Name">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="rate" class="form-control" placeholder="Rate">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="quantity" class="form-control" placeholder="Quantity">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="date" class="form-control" name="day" placeholder="Date">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon"><span class="fa fa-chevron-down"></span></div>
											<select name="time" id="time" class="form-control">
												<option value="">Time</option>
												<option style="color:black" value="morning">Morning</option>
												<option style="color:black" value="evening">Evening</option>
											</select>
										</div>
									</div>
								</div>
								</div>
							</div>
							<div class="row">
							<div class="col-md-7">
								<div class="form-group">
									 <h7 style="color:white">Insert Image</h7><input type="file" id="img" name="img" accept="image/*" style="width:500px;font-size:12pt;">
								</div>
							</div>
							</div>
							
							<div class="col-md-8 div-2">
								<div class="form-group">
									<input type="submit" value="Add Menu" class="btn btn-white py-3 px-4">
								</div>
							</div>
						</div>
					</form>
						<!-- <a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
  						<span class="ion-ios-play"></span>
  					</a> -->
  				</div>
  				
			  </div>
			</div>
		
			
		</div>
	</section>

<!-- 
	<section class="ftco-section testimony-section"
		style="background-image: url(images/bg_5.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center mb-3 pb-2">
				<div
					class="col-md-7 text-center heading-section heading-section-white ftco-animate">
					<span class="subheading">Testimony</span>
					<h2 class="mb-4">Happy Customer</h2>
				</div>
			</div>
			<div class="row ftco-animate justify-content-center">
				<div class="col-md-7">
					<div class="carousel-testimony owl-carousel ftco-owl">
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="user-img mb-4"
										style="background-image: url(images/person_1.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">John Gustavo</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="user-img mb-4"
										style="background-image: url(images/person_1.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">John Gustavo</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="user-img mb-4"
										style="background-image: url(images/person_1.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">John Gustavo</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="user-img mb-4"
										style="background-image: url(images/person_1.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">John Gustavo</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<div class="user-img mb-4"
										style="background-image: url(images/person_1.jpg)">
										<span
											class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">John Gustavo</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->


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