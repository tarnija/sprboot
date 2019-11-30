<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<font color="red">${errorMessage}</font> <font color="green">${msg}</font>
<fieldset class="scheduler-border">
	<legend class="scheduler-border">	<h2>LOGIN</h2></legend>
		
		<form method="post" action="/j_spring_security_check">
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label-lg">Name</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" />
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label-lg">Password</label>
				<div class="col-sm-3">
					<input type="password" name="password" class="form-control" />
				</div>
			</div>
			<div class="col-auto">
			<input type="submit" class="btn btn-primary mb-2" />
			</div>
		</form>
		</fieldset><br>
		<a href="/forgetCredentials">Forgot Credentials</a><br> <br> New
		User? <a href="/newUser">Click here</a> to create account.
	</div>
</body>
</html>