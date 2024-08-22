<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Menu Item</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.container {
	margin-top: 50px;
	max-width: 600px;
}

.form-group {
	margin-bottom: 15px;
}

.btn-primary {
	width: 100%;
}

.menu-item {
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 15px;
	margin-bottom: 20px;
	text-align: center;
}

.menu-item img {
	max-width: 100%;
	height: auto;
	margin-bottom: 10px;
}

.menu-item h5 {
	margin-bottom: 10px;
	font-weight: bold;
}

.menu-item p {
	margin-bottom: 5px;
}

.action-buttons {
	margin-top: 15px;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="text-center">
			<c:choose>
				<c:when test="${not empty menuItem}">Edit Menu Item</c:when>
				<c:otherwise>Add Menu Item</c:otherwise>
			</c:choose>
		</h1>
		<form action="MenuManagement?action=${not empty menuItem ? 'update' : 'add'}"
			method="post" enctype="multipart/form-data">
			<c:if test="${not empty menuItem}">
				<input type="hidden" name="id" value="${menuItem.id}">
			</c:if>
			<div class="form-group">
				<label for="title">Title:</label> <input type="text"
					class="form-control" id="title" name="title"
					value="${menuItem.title}" required>
			</div>
			<div class="form-group">
				<label for="price">Price:</label> <input type="number"
					class="form-control" step="0.01" id="price" name="price"
					value="${menuItem.price}" required>
			</div>
			<div class="form-group">
				<label for="description">Description:</label>
				<textarea class="form-control" id="description" name="description"
					rows="4" required>${menuItem.description}</textarea>
			</div>
			<div class="form-group">
				<label for="category">Category:</label> <input type="text"
					class="form-control" id="category" name="category"
					value="${menuItem.category}" required>
			</div>
			<div class="form-group">
				<label for="image">Upload Image:</label> <input type="file"
					class="form-control-file" id="image" name="image" accept="image/*">
				<c:if test="${not empty menuItem.imagePath}">
					<p>
						Current Image: <a
							href="${pageContext.request.contextPath}/uploads/${menuItem.imagePath}"
							target="_blank">View Image</a>
					</p>
				</c:if>
			</div>
			<button type="submit" class="btn btn-primary">${not empty menuItem ? 'Update Menu Item' : 'Add Menu Item'}</button>
		</form>
	</div>

	<div class="container">
		<h1 class="text-center mt-5">Menu Items</h1>
		<div class="row">
			<c:forEach var="menuItem" items="${menuItems}">
				<div class="col-md-4">
					<div class="menu-item">
						<img
							src="${pageContext.request.contextPath}/uploads/${menuItem.imagePath}"
							alt="${menuItem.title}">
						<h5>${menuItem.title}</h5>
						<p>
							<strong>Price:</strong> Rs.${menuItem.price}
						</p>
						<p>
							<strong>Category:</strong> ${menuItem.category}
						</p>
						<p>${menuItem.description}</p>
						<div class="action-buttons">
							<a href="MenuManagement?action=edit&id=${menuItem.id}"
								class="btn btn-warning">Edit</a> <a
								href="MenuManagement?action=delete&id=${menuItem.id}"
								class="btn btn-danger"
								onclick="return confirm('Are you sure you want to delete this item?');">Delete</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
