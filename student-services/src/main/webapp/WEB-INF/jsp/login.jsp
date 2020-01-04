<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/app_common.css">
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/login.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<!-- <nav class="navbar navbar-inverse bg-info">
  		<div class="container-fluid">
    		<div class="navbar-header">
      			<a class="navbar-brand" id="site-name" href="#">WebSiteName</a>
    		</div>
    		<ul class="nav navbar-nav">
		    	<li class="active"><a href="#">Home</a></li>
		      	<li><a href="/login">Login</a></li>
		      	<li><a href="/newUser">Register</a></li>
    		</ul>
		    <form class="navbar-form " action="/action_page.php"  style="float:right">
		    	<div class="input-group" id="search">
		        	<input type="text" class="form-control" placeholder="Search" name="search">
		        	<div class="input-group-btn">
		          		<button class="btn btn-default" type="submit">
		            		<i class="glyphicon glyphicon-search"></i>
		          		</button>
		        	</div>
		      	</div>
		  	</form>
  		</div>
	</nav> -->
	<div class="bd">
	<div class="container">
		<div id="signupbox" 
			class="mainbox col-md-7 col-md-offset-3 col-sm-9 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<!-- <div class="panel-title" >Login</div> -->
				</div>
				<div class="panel-body" style="text-align: center;">
					<font color="red">${errorMessage}</font> <font color="green">${msg}</font>
					<h2 >LOGIN</h2>
					<!-- <hr> -->
					<form method="post" action="/j_spring_security_check" style="align-items:center;">
						<div class="form-group row">
							<label for="colFormLabel"
									class="control-label col-md-3 col-md-offset-1 col-form-label-lg">UserName</label>
								<div class="controls col-md-9">
									<input type="text" name="name" class="form-control" />
								</div>
							</div>
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 col-md-offset-1 col-form-label-lg">Password</label>
								<div class="controls col-md-9">
									<input type="password" name="password" class="form-control" />
								</div>
							</div>
							<div class="col-md-12">
								<input id="submit" type="submit" class="btn btn-primary btn-block btn-sm mb-3 col-md-12" value="Login" />
							</div>
						</form>
						<p><a href="/forgetCredentials">Forgot Credentials</a></p>
					 <p>New User? <a href="/newUser">Click here</a> to create account.</p>
				</div>
			</div>
		</div>
		
	</div>
<!--  	<img src="images/bg.jpg" class="im1">-->
	</div>
</body>
</html>
