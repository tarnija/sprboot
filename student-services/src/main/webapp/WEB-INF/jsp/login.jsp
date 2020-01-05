<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/login.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-toggleable-md navbar-dark bg-faded bg-info">
  <div class="container-fluid">
    <div class="navbar-header">
     <a class="navbar-brand" id="site-name" href="/">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="nav-item"><a  class="nav-link" href="/">Home</a></li>
      <li class="nav-item active"><a class="nav-link" href="#">Login</a></li>
      <li class="nav-item"><a class="nav-link" href="/newUser">Register</a></li>
    </ul>
   <!--  <form class="navbar-form " action="/action_page.php"  style="float:right">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->
  </div>
</nav>
<div class="bd">
	<div class="container-fluid">
	<div class="row">
		<div  class="col col-md-3" style="width:5%"><img alt="" src="images/login1.png" style="width:70%;height:50%;margin-top:85%"></div>
	
		<div id="signupbox" 
			class="mainbox col-md-6 col-md-offset-3 col-sm-9 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
				
				</div>
				<div class="panel-body">
					<font color="red">${errorMessage}</font> <font color="green">${msg}</font>
							<h2 style="text-align:center;">LOGIN</h2>
					<hr>
						<form method="post" action="/j_spring_security_check" style="align-items:center;">
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 offset-md-1 col-form-label-lg">UserName</label>
								<div class="controls col-md-7">
									<input type="text" name="name" class="form-control" />
								</div>
							</div>
							<br>
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 offset-md-1 col-form-label-lg">Password</label>
								<div class="controls col-md-7">
									<input type="password" name="password" class="form-control" />
								</div>
							</div>
							<div class="col-md-8 offset-md-2" >
								<input type="submit" class="btn btn-primary btn-block btn-md " value="Login" />
							</div>
						</form>
					<div class="offset-md-1">
					<a href="/forgetCredentials">Forgot Credentials</a><br>
					<br> New User? <a href="/newUser">Click here</a> to create
					account.
					</div>
					 
				</div>
			</div>
		</div>
		</div>
	</div>
<!--  	<img src="images/bg.jpg" class="im1">-->
	</div>
</body>
</html>