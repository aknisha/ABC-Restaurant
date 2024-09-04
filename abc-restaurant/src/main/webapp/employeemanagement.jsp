<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">

<style>

body {
    background-color: #f8f9fa;
}

.container {
    margin-top: 50px;
    max-width: 800px;
}

.registration-form {
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
        <h1 class="text-center mt-5">Employee Management</h1>        
       

        <!-- Employee Registration Form -->
        <div id="employeeRegistration" class="registration-form mt-4 d-none">
            <h2 class="text-center">Add Employee</h2>
            <form action="EmployeeRegistrationServlet" method="post">
                <div class="form-group">
                    <label for="employeeName">Name:</label>
                    <input type="text" class="form-control" id="employeeName" name="name" required>
                </div>
                <div class="form-group">
                    <label for="employeeUsername">Username:</label>
                    <input type="text" class="form-control" id="employeeUsername" name="username" required>
                </div>
                <div class="form-group">
                    <label for="employeeEmail">Email:</label>
                    <input type="email" class="form-control" id="employeeEmail" name="email" required>
                </div>
                <div class="form-group">
                    <label for="employeeAddress">Address:</label>
                    <input type="text" class="form-control" id="employeeAddress" name="address" required>
                </div>
                <div class="form-group">
                    <label for="employeePhone">Phone:</label>
                    <input type="text" class="form-control" id="employeePhone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="employeePassword">Password:</label>
                    <input type="password" class="form-control" id="employeePassword" name="password" required>
                </div>
                <div class="form-group">
                    <label for="employeeConfirmPassword">Confirm Password:</label>
                    <input type="password" class="form-control" id="employeeConfirmPassword" name="confirmPassword" required>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Add Employee</button>
            </form>
        </div>
    </div>
</body>
</html>
