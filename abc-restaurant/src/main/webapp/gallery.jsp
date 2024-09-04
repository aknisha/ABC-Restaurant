<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gallery - ABC Restaurant</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="resources/css/styles.css" rel="stylesheet">
    <style>
    
        .gallery-section {
        	background-color: #202020 !important;
        	color: #fff !important;
        }
   
        .gallery-section img {
            width: 95%;
            height: auto;
            border-radius: 10px;
        	box-shadow: 0 4px 8px rgba(233, 226, 230, 0.8);
        	margin-bottom: 30px;
        }
        
        .navbar {
			background-color: #000 !important;
		}
		
		.footer {
			background-color: #000 !important;	
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
                <li class="nav-item active"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                <li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
                <li class="nav-item"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>


    <!-- <section class="gallery-section">
        <div class="container">
            <h2 class="text-center mb-5">Our Gallery</h2>
            <div class="row">
                <!-- Loop through gallery images -->
                <!-- <c:forEach var="galleryImage" items="${galleryImages}">
                    <div class="col-md-4 gallery-item">
                        <div class="card">
                            <img src="${galleryImage.imagePath}" class="card-img-top" alt="Gallery Image">
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section> -->
    
    <!-- Gallery Section -->
        <section class="gallery-section text-center">
        <div class="container"><br><br><br>
            <h2>Gallery</h2><br><br>
            <div class="row">
                <div class="col-md-4">                
                    <img src="resources/images/G1.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G2.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G3.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
          		<div class="col-md-4">                
                    <img src="resources/images/G4.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G5.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G6.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G7.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G8.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G9.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G10.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G11.jpg" class="img-fluid" alt="Sri Lankan Curry">
                </div>
                
                <div class="col-md-4">                
                    <img src="resources/images/G12.jpg" class="img-fluid" alt="Sri Lankan Curry">
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
