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
		<div id="signupbox" style="margin-top: 50px"
			class="mainbox col-md-7 col-md-offset-2 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Login</div>

				</div>
				<div class="panel-body">
					<font color="red">${errorMessage}</font> <font color="green">${msg}</font>
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">
							<h2>LOGIN</h2>
						</legend>

						<form method="post" action="/j_spring_security_check">
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 col-form-label-lg">UserName</label>
								<div class="controls col-md-6">
									<input type="text" name="name" class="form-control" />
								</div>
							</div>
							<br>
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 col-form-label-lg">Password</label>
								<div class="controls col-md-6">
									<input type="password" name="password" class="form-control" />
								</div>
							</div>
							<div class="col-md-3">
								<input type="submit" class="btn btn-primary mb-3 col-md-12" value="Login" />
							</div>
						</form>
					</fieldset>
					<br> <a href="/forgetCredentials">Forgot Credentials</a><br>
					<br> New User? <a href="/newUser">Click here</a> to create
					account.
				</div>
			</div>
		</div>
	</div>
</body>
</html>