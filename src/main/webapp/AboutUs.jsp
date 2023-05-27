<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>About Us</title>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<meta name="description" content="">

		<!-- STYLESHEET CSS FILES -->
		<link rel="stylesheet" href="./CSS/main.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/animate.min.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<link rel="stylesheet" href="./CSS/styleAbout.css">
		<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	</head>

	<body>
		<jsp:include page="header.jsp"/>

		<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">



			<!-- home section -->
			<section id="home">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<img src="./siteImages/logo.png" alt="" width="200" height="100" margin:right="100%">
							<hr>
							<h3><span class="bold">WE ARE Alpha Gaming</h3>
							<h1 class="heading">from California</h1>
							<a href="#about" class="smoothScroll btn btn-default">Our Process</a>
						</div>
					</div>
				</div>
			</section>

			<!-- about section -->
			<section id="about">
				<div class="container">
					<center>
						<img src="./siteImages/logo.png" alt="" width="200" height="100" margin:right="100%">
					</center>
					<div class="row">

						<div class="col-md-12 col-sm-12 text-center">

							<h1 class="heading bold">ABOUT US</h1>
							<h2 class="subheading">WE ARE TALANTED GAMING DESIGNERS &amp; DEVELOPERS</h2><br><br><br>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
							<i class="fa fa-cloud"></i>
							<img src="./siteImages/workus.webp" alt="" width="80%" height="200" margin:right="100%">
							<h2><b style="font-size:20px">How We Work Together</b></h2>
							<p style="font-size:15px">Bringing People together through play is at the heart of Alpha
								Gaming.We are fun-loving but focused, collaborative and friendly.Everyone is part of the
								Alpha family-we are there for each other in good times and bad.</p>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
							<i class="fa fa-laptop"></i>
							<img src="./siteImages/charact.webp" alt="" width="80%" height="200" margin:right="100%">
							<h2><b style="font-size:20px">Our characteristics</b></h2>
							<p style="font-size:15px">We don't feel the need to follow the crowd and often been seen as
								the underdog in our industry.Our vision is to become the world's most populer games
								company,and we aom to achieve that by straight-talking, trusted by players and respected
								by peers.</p>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="1s">
							<i class="fa fa-globe"></i>
							<img src="./siteImages/workus.webp" alt="" width="80%" height="200" margin:right="100%">
							<h2><b style="font-size:20px">How show up in industry</b></h2>
							<p style="font-size:15px">We know that to grow and continue to be successful, we have to
								maintain the all that has made us so successful so far.Developing new ways of working
								and looking for different approches will help us make the most of every opprtunity.</p>
						</div>
						<hr>
						<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.6s">
							<img src="./siteImages/about-img.png" class="img-responsive" alt="about img" style="width:80%">
						</div>
						<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
							<h2 class="text"><b style="font-size:20px">Our Values</b></h2>
							<p style="font-size:15px">Alpha Gaming's purpose is to unleash the gamer in everyone by
								connecting people around the world through our games. Our values help us to succeed in
								creating an employee culture defining everyday actions lived by Alpha team and chosen by
								Alpha tea. They are an authentic reflection in the way we work and play together, the
								way we do business, and support our communities.</p>
							<span><i class="fa fa-mobile"><img src="./siteImages/cloud.jpg" alt="" width="11%"
										height="auto"></i> <b style="font-size:20px">Cloud Engineering &
									Security</b></span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="80"
									aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
							</div>
							<span><i class="fa fa-link"><img src="./siteImages/dataEngIcon.jpg" alt="" width="11%"
										height="auto"></i> <b style="font-size:20px">Data Engineering</b></span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="90"
									aria-valuemin="0" aria-valuemax="100" style="width: 90%;"></div>
							</div>
							<span><i class="fa fa-cloud"></i> <img src="./siteImages/gameDesign.jpg" alt="" width="11%"
									height="auto"><b style="font-size:20px">Game Design</b></span>
							<div class="progress">
								<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="75"
									aria-valuemin="0" aria-valuemax="100" style="width: 75%;"></div>
							</div>
						</div>
					</div>
				</div>
			</section>



			<jsp:include page="footer.jsp" />

		</body>

	</html>