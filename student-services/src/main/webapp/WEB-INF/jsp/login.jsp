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
<style>
.im1{
display: block;
margin: auto;
width:100%;
margin-top:-100px;
position:relative;
}
html{
height:100%;
background-image: url(images/bg.jpg) ;
  background-size: 1200px 600px ;
  background-position:center 300px;
  background-repeat: no-repeat;
}
.bd{
height:10rem;
width:100%;
}
.container{
height:100px;
}

</style>
<body>

<nav class="navbar navbar-inverse bg-info">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="/">Home</a></li>
      <li class="active"><a href="#">Login</a></li>
      <li><a href="/newUser">Register</a></li>
    </ul>
    <form class="navbar-form " action="/action_page.php"  style="float:right">
      <div class="input-group">
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
<div class="bd">
	<div class="container">
		<div id="signupbox" 
			class="mainbox col-md-7 col-md-offset-2 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title" >Login</div>
				</div>
				<div class="panel-body">
					<font color="red">${errorMessage}</font> <font color="green">${msg}</font>
							<h2 style="text-align:center;">LOGIN</h2>
					<hr>
						<form method="post" action="/j_spring_security_check" style="align-items:center;">
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
					
					<br> <a href="/forgetCredentials">Forgot Credentials</a><br>
					<br> New User? <a href="/newUser">Click here</a> to create
					account.
				</div>
			</div>
		</div>
		
	</div>
<!--  	<img src="images/bg.jpg" class="im1">-->
	</div>
</body>
</html>