<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">

<style>

body {
    background-color: #f8f9fa;
}

.container {
    margin-top: 50px;
    max-width: 600px;
}

.login-form {
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.form-group {
    margin-bottom: 15px;
}

.btn-primary {
    width: 100%;
    margin-top: 15px;
}

</style>

</head>
<body>
    <div class="container">
        <h1 class="text-center mt-5">Login</h1>    

        <!-- User Login Form -->
        <div id="userLogin" class="login-form mt-4">
            <h2 class="text-center">Login</h2>
            <form action="LoginController" method="post">
                <div class="form-group">
                    <label for="userUsername">Username:</label>
                    <input type="text" class="form-control" id="userUsername" name="username" required>
                </div>
                <div class="form-group">
                    <label for="userPassword">Password:</label>
                    <input type="password" class="form-control" id="userPassword" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Login as Customer</button>
            </form>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"></script>    
</body>
</html>
