<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Menu - ABC Restaurant</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="resources/css/styles.css" rel="stylesheet">
    <style>
    	
        .menu-section {
            padding: 60px 0;
        }
        
        .menu-item {
            margin-bottom: 30px;
        }
        
        .menu-item img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }
        
        .menu-item h5 {
            font-size: 1.25rem;
            margin-top: 10px;
        }
        
        .menu-item p {
            font-size: 1rem;
            color: #555;
        }
        
        .menu-item .price {
            font-weight: bold;
            color: #ff7f50;
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
                <li class="nav-item active"><a class="nav-link" href="menu.jsp">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                <li class="nav-item"><a class="nav-link" href="reservation.jsp">Reservation</a></li>
                <li class="nav-item"><a class="nav-link" href="contactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>

    <!-- Menu Section -->
    <section class="menu-section">
        <div class="container">
            <h2 class="text-center mb-5">Our Menu</h2>
            <div class="row">
                <!-- Loop through menu items -->
                <c:forEach var="menuItem" items="${menuItems}">
                    <div class="col-md-4 menu-item">
                        <div class="card">
                            <img src="${pageContext.request.contextPath}/uploads/${menuItem.imagePath}" class="card-img-top" alt="${menuItem.title}">
                            <div class="card-body">
                                <h5 class="card-title">${menuItem.title}</h5>
                                <p class="card-text">${menuItem.description}</p>
                                <p class="price">${menuItem.price} LKR</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
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
