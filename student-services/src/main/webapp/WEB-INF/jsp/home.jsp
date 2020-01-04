<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Task Manager</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="images/logo1.png" type="image/x-icon"> 
	<link rel="stylesheet" href="css/bootstrap.min.css">  
	<link rel="stylesheet" href="css/app_common.css">
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/home.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse bg-info">
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
	</nav>
	<div class="hea">
		<h2>Organize it all with us</h2>
		<a href="/login" class="btn btn-danger" >
			<span><strong>Click here to begin</strong></span>
		</a>
	</div> 
</body>
</html>
