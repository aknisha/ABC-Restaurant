<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/styles.css" rel="stylesheet">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <img src="resources/images/logo.png" width="30" height="30" alt="ABC Restaurant">
            ABC Restaurant
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section text-center text-white">
        <div class="container">
            <h1 class="display-4">Welcome to ABC Restaurant</h1>
            <p class="lead">A delightful dining experience in Sri Lanka</p>
            <a href="#" class="btn btn-primary btn-lg">Explore Menu</a>
        </div>
    </section>

    <!-- About Us Section -->
    <section class="about-section py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>About Us</h2>
                    <p>ABC Restaurant offers a unique dining experience, combining authentic flavors with modern culinary techniques. Located in various cities across Sri Lanka, our restaurant is known for its delightful ambiance and exceptional service.</p>
                    <a href="#" class="btn btn-secondary">Learn More</a>
                </div>
                <div class="col-md-6">
                    <img src="resources/images/about.jpg" class="img-fluid" alt="About Us">
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer bg-light py-3">
        <div class="container text-center">
            <span class="text-muted">&copy; 2024 ABC Restaurant. All rights reserved.</span>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="resources/js/scripts.js"></script>
</body>
</html>
