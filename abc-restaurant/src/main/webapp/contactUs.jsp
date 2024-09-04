<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Contact Us - ABC Restaurant</title>
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
	
    .contact-section {
        padding: 60px 0;
        background-color: #f8f9fa;
    }
    
    .contact-section h2 {
        font-size: 2.5rem;
        margin-bottom: 30px;
    }
    
    .contact-section p {
        font-size: 1.2rem;
        line-height: 1.8;
    }
    
    .contact-section img {
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
                <li class="nav-item"><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="menu.jsp">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                <li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
                <li class="nav-item active"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>

    <!-- Contact Section -->
    <section class="contact-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h2>GET IN TOUCH WITH US...</h2>
                    <p>
                        <h4>Address:</h4> 123 Main Street, Weligama, Sri Lanka
                    </p>
                    <p>
                        <h4>Phone:</h4> (+94) 123 456 789
                    </p>
                    <p>
                        <h4>Opening Hours:</h4>
                        Monday - Friday (7:00 am to 10:00 pm) <br>
                        Saturday - Sunday (8:00 am to 11:00 pm)
                    </p>
                </div>
                <div class="col-md-6">
                    <p><img src="resources/images/C1.jpg" alt="About ABC Restaurant"></p><br>
                    <p><img src="resources/images/C2.jpg" alt="About ABC Restaurant"></p>
                </div>
             
            </div>
        </div>
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
