<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>पूर्णब्रह्म भोजनालय</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">
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
<%@ page import= "java.sql.*" %>
<% 
ResultSet rs=null;
Connection con=null;
PreparedStatement ps=null;

String query = "select * from MenuMaster";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mess","root","mysql");
	ps=con.prepareStatement(query);
	
	rs=ps.executeQuery();
	
	
 		
		%>
	
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
					<li class="nav-item "><a href="home.jsp"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
					<li class="nav-item active"><a href="menu.jsp" class="nav-link">Menu</a></li>			
					<li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
					<li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
					<li class="nav-item"><a href="register.jsp" class="nav-link">Register</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	
	<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate text-center mb-5">
					<h1 class="mb-2 bread">Menu</h1>
					<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Menu <i class="fa fa-chevron-right"></i></span></p>
				</div>
			</div>
		</div>
	</section>

	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".strawberry">BreakFast</li>
                            <li data-filter=".berry">Lunch</li>
                            <li data-filter=".lemon">Dinner</li>
                        </ul>
                    </div>
                </div>
            </div>
			<div class="">
				<%
	while(rs.next()){
		 String img="";
		String item="";
		String rate=""; 
		String meal=rs.getString(2);
		item=rs.getString(3);
		rate=rs.getString(5);
		img=rs.getString(8);
		%>
			
				<div class="col-lg-4 col-md-6 text-center berry">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="images/<%=img%>" alt=""></a>
						</div>
						<h3><%=item %></h3>
						<p class="product-price"><span></span> <%=rate %> Rs</p>
					</div>
				</div>
			
		
				<!-- <div class="col-lg-4 col-md-6 text-center berry">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-2.jpg" alt=""></a>
						</div>
						<h3>Berry</h3>
						<p class="product-price"><span></span> 70$ </p>
						
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center lemon">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-3.jpg" alt=""></a>
						</div>
						<h3>Lemon</h3>
						<p class="product-price"><span></span> 35$ </p>
						
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-4.jpg" alt=""></a>
						</div>
						<h3>Avocado</h3>
						<p class="product-price"><span></span> 50$ </p>
						
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-5.jpg" alt=""></a>
						</div>
						<h3>Green Apple</h3>
						<p class="product-price"><span></span> 45$ </p>
						
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center strawberry">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-6.jpg" alt=""></a>
						</div>
						<h3>Strawberry</h3>
						<p class="product-price"><span></span> 80$ </p>
						
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="pagination-wrap">
						<ul>
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a class="active" href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
				</div>
			</div> -->
		
	
	<!-- end products -->


<% 				
}
}
	catch (ClassNotFoundException e) {
	e.printStackTrace();
	} catch (SQLException e) {
	
	e.printStackTrace();
}
finally{
	out.println("");
}

%>
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
		<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
		
		<script src="js/google-map.js"></script>
		<script src="js/main.js"></script>
		
	<!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>
		
	</body>
	</html>
