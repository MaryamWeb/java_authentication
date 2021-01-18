<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Basic Authentication</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row d-flex justify-content-between">
			<div class="col-6">
				<form:form action="/register" method="post" modelAttribute="newUser">
					<div class="form-group">
						<h3 class="main-color text-center">Registration</h3>
						<label class="col-form-label">Username:</label>
						<form:input path="username" class="form-control" />
						<form:errors path="username" class="text-danger" />
					</div>
					<div class="form-group">
						<label class="col-form-label">Email:</label>
						<form:input path="email" class="form-control" />
						<form:errors path="email" class="text-danger" />
					</div>
					<div class="form-group">
						<label class="col-form-label">Password:</label>
						<form:password path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<div class="form-group">
						<label class="col-form-label">Confirm:</label>
						<form:password path="confirm" class="form-control" />
						<form:errors path="confirm" class="text-danger" />
					</div>
					<input type='submit' value='Register'
						class="btn main-bg-color btn-block text-white mt-4">
				</form:form>
			</div>
			<div class="col-4">
				<form:form action="/login" method="post" modelAttribute="newLogin">
					<div class="form-group">
						<h3 class="main-color text-center">Login</h3>
						<label class="col-form-label">Email:</label>
						<form:input path="email" class="form-control" />
						<form:errors path="email" class="text-danger" />
					</div>
					<div class="form-group">
						<label class="col-form-label">Password:</label>
						<form:password path="password" class="form-control" />
						<form:errors path="password" class="text-danger" />
					</div>
					<input type='submit' value='Log in'
						class="btn main-bg-color btn-block mt-4 text-white">
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>