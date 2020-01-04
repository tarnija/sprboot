<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/app_common.css">
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/register.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/register.js"></script>
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
	<div class="container">
		<div id="signupbox" class="mainbox col-md-9 col-md-offset-2 col-sm-9 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
				</div>
				<div class="panel-body">
					<font color="red" id="err">${errorMessage}</font>
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">
							<h2>REGISTER USER</h2>
						</legend>
						<form autocomplete="off" method="post" id="form1" onsubmit="return mySubmitFunction(event)">
							<div class="form-group row">
								<label for="colFormLabel" class="control-label col-md-3 col-form-label-lg">Name</label>
								<div class="controls col-md-9">
									<input type="text" id="uname" name="name" class="form-control" oninput="checkname()" />
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn">
									<span class="glyphicon">&#xe013;</span> 
									<font color="green">Valid username</font>
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn2">
									<span class="glyphicon">&#xe014;</span> 
									<font color="red">User Already Exists</font>
								</div>
							</div>
							
							<div class="form-group row">
								<label for="colFormLabel" class="control-label col-md-3 col-form-label-lg">Email</label>
								<div class="controls col-md-9">
									<input type="email" name="email" class="form-control" id="user_email" oninput="checkemail()" />
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn3">
									<span class="glyphicon">&#xe013;</span> 
									<font color="green">Valid email</font>
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn4">
									<span class="glyphicon">&#xe014;</span> 
									<font color="red">User Already Exists with this email</font>
								</div>
							</div>
							<div class="form-group row">
								<label for="colFormLabel" class="control-label col-md-3 col-form-label-lg">Password</label>
								<div class="controls col-md-9">
									<input type="password" name="password" class="form-control" id="pass" oninput="pas()" onkeypress="return AvoidSpace(event)" />
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn5">
									<span class="glyphicon">&#xe013;</span> 
									<font color="green">Valid password</font>
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn6">
									<span class="glyphicon">&#xe014;</span> 
									<font color="red"></font>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-3 col-form-label-lg">Confirm Password</label>
								<div class="controls col-md-9">
									<input type="password" name="repassword" class="form-control" id="repass" oninput="matchpas()" onfocus="checkPass()" onkeypress="return AvoidSpace(event)" />
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn7">
									<span class="glyphicon">&#xe013;</span> 
									<font color="green">Password match</font>
								</div>
								<div class="col-md-12 col-md-offset-3" id="icn8">
									<span class="glyphicon">&#xe014;</span> 
									<font color="red">Password do not match</font>
								</div>
							</div>
							<div class="form-group row">
								<label for="colFormLabel" class="control-label col-md-3 col-form-label-lg">Security Question</label>
								<div class="dropdown controls col-md-9">
									<select class="form-control" id="sel1" name="ques">
										<option value="" selected disabled hidden>Choose here</option>
										<option>What's your favourite colour?</option>
										<option>What's your father's name?</option>
										<option>What's your pet name?</option>
									</select>
								</div>
								<div class="col-md-12" id="icn9">
									<span class="glyphicon">&#xe014;</span> 
									<font color="red">Please select a question</font>
								</div>
							</div>
							<div class="form-group row">
								<label id="labelsel" class="control-label col-md-3 col-form-label-lg">Enter your Name</label>
								<div class="controls col-md-7">
									<input id="sel" class="form-control" type="text" name="ans"></input>
								</div>
								<div class="col-md-12" id="icn10">
									<span class="glyphicon">&#xe014;</span> <font color="red">This field is required</font>
								</div>
							</div>
							<div class="col-md-12">
								<input id="submit" type="submit" class="btn btn-sm btn-block btn-primary mb-3 col-md-12" />
							</div>
						</form>
					</fieldset>
					<p class="text-center">
						Already a User? <a href="/login">Click here</a> to login.
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
