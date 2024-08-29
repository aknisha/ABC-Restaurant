<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>About Us - ABC Restaurant</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="resources/css/styles.css" rel="stylesheet">
<style>

    .navbar {
		background-color: #000 !important;
	}

	.footer {
		background-color: #000 !important;	
	}
	
    .about-section {
        padding: 60px 0;
        background-color: #f8f9fa;
    }
    
    .about-section h2 {
        font-size: 2.5rem;
        margin-bottom: 30px;
    }
    
    .about-section p {
        font-size: 1.2rem;
        line-height: 1.8;
    }
    
    .about-section img {
        max-width: 85%;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    
     .team-members img {
        max-width: 80%;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }	
</style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <img src="resources/images/logo.png" width="250" height="100"
			alt="ABC Restaurant">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item active"><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="menu.jsp">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                <li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
                <li class="nav-item"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>

    <!-- About Section -->
    <section class="about-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h2>Our Story...</h2>
                    <p>
                        Welcome to ABC Restaurant, where we offer a delightful dining experience that combines 
                        the best of local and international cuisine. Located in the heart of Sri Lanka, our restaurant 
                        provides a unique ambiance perfect for any occasion - whether it's a family gathering, a romantic 
                        dinner, or a casual meal with friends.
                    </p>
                    <p>
                        Our chefs are passionate about crafting dishes that are both delicious and beautifully 
                        presented, using only the freshest ingredients sourced from local markets. Founded in 2005 with 
                        a passion for authentic Sri Lankan cuisine and exceptional hospitality, ABC Restaurant is dedicated 
                        to providing exceptional service and making every visit memorable.
                    </p>
                    <br><br>
                    <h2>Our Mission</h2>
                    <p>
                    	Our mission is to create a warm, inviting space where guests can savor the rich flavors and 
                    	traditions of Sri Lanka in every bite.
                    </p>
                </div>
                <div class="col-md-6">
                    <p><img src="resources/images/interior.jpg" alt="About ABC Restaurant"></p><br>
                    <p><img src="resources/images/kitchen.jpg" alt="About ABC Restaurant"></p>
                </div>
             
            </div>
        </div>
    </section>
    
    <!-- Team -->
    <section class="team-members text-center">
        <div class="container"><br><br><br>
            <h2>Meet Our Team</h2><br><br>
            <div class="row">
                <div class="col-md-4">
                
                    <img src="resources/images/manager.jpg" class="img-fluid" alt="Sri Lankan Curry">
                    <h4>Lisa Perera</h4>
                    <p>Manager</p>
                </div>
                
                <div class="col-md-4">
                    <img src="resources/images/chef1.jpg" class="img-fluid" alt="Grilled Seafood Platter">
                    <h4>Chef Kumar</h4>
                </div>
                
                <div class="col-md-4">
                    <img src="resources/images/chef2.jpg" class="img-fluid" alt="Chocolate Lava Cake">
                    <h4>Chef Anji</h4>
                </div>
            </div>
        </div>
            <br><br>
    </section>

    <!-- Footer -->
    <footer class="footer bg-dark text-white text-center py-3">
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
