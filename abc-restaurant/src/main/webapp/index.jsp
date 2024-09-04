<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ABC Restaurant</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">
<style>

	.body{
		padding-top: 110px;
	}
	

	.hero-section {
		background: url('resources/images/bg.jpg') no-repeat center center/cover;
	}
	
	.navbar {
		background-color: #000 !important;
	}
	
	.footer {
		background-color: #000 !important;	
	}
	
	.about-section {
		background-color: #000 !important;
		color: #FFF !important;
	}
	
	.featured-dishes {
		background-color: #202020 !important;
		color: #FFF !important;
	}
	
	.featured-dishes img {
        max-width: 80%;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

</style>
</head>

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		 <img src="resources/images/logo.png" width="250" height="100"
			alt="ABC Restaurant">
		
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
				<li class="nav-item"><a class="nav-link" href="MenuController">Menu</a></li>
				<li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
				<li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
				<li class="nav-item"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
			</ul>
		</div>
	</nav>

	<!-- Hero Section -->
	<section class="hero-section text-center text-white">
		<div class="container">
			<h1 class="display-4">ABC Restaurant</h1>
			<p class="lead">A delightful dining experience in Sri Lanka</p>
			<a href="menu.jsp" class="btn btn-primary btn-lg">Explore Menu</a>
		</div>
	</section>

	<!-- About Us Section -->
	<section class="about-section py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-6"><br>
					<p>Welcome to ABC Restaurant, where the rich culinary traditions of Sri Lanka 
					meet contemporary dining. Nestled in the heart of Weligama, our restaurant is 
					more than just a place to eat - it's an experience. We pride ourselves on offering a 
					diverse menu that showcases the vibrant flavors of Sri Lanka, from the fiery spices 
					of our famous curries to the delicate sweetness of our tropical desserts. Whether you're 
					looking for a romantic dinner, a family gathering, or a special celebration, ABC Restaurant 
					provides an inviting ambiance that blends warmth, elegance, and comfort. Join us for a journey 
					through the tastes of Sri Lanka, where each dish tells a story of culture, heritage, and passion for food.</p>
					
					<br>
					
					<p>At ABC Restaurant, we offer a unique culinary journey 
					with a blend of traditional Sri Lankan flavors and contemporary cuisine. 
					Join us for an unforgettable dining experience.</p>
					
					<a href="aboutUs.jsp" class="btn btn-secondary">Learn More</a>
				</div>
				
				<div class="col-md-6">
					<br><img src="resources/images/Restaurant.jpg" length="550px" width="500px" class="img-fluid"
						alt="About Us">
				</div>
			</div>
		</div>
	</section>
	
	<!-- Featured Dishes -->
    <section class="featured-dishes text-center">
        <div class="container"><br><br><br>
            <h2>. . . Featured Dishes . . .</h2><br><br>
            <div class="row">
                <div class="col-md-4">
                
                    <img src="resources/images/Blue Lagoon.jpg" class="img-fluid" alt="Sri Lankan Curry">
                    <h4>Blue Lagoon Mocktail</h4>
                    <p>Refreshing, citrusy, and tropical blue delight.</p>
                </div>
                
                <div class="col-md-4">
                    <img src="resources/images/Seafood.jpg" class="img-fluid" alt="Grilled Seafood Platter">
                    <h4>Grilled Seafood Platter</h4>
                    <p>Freshly grilled seafood with a variety of sauces.</p>
                </div>
                
                <div class="col-md-4">
                    <img src="resources/images/Lava Cake.jpg" class="img-fluid" alt="Chocolate Lava Cake">
                    <h4>Chocolate Lava Cake</h4>
                    <p>A rich, molten chocolate cake.</p>
                </div>
            </div>
        </div>
            <br><br>
    </section>

	<!-- Footer -->
	<footer class="footer bg-dark py-3">
		<div class="container text-center">
			<span class="text-muted">&copy; 2024 ABC Restaurant. All rights reserved.</span>
		</div>
		
	</footer>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>
</html>
