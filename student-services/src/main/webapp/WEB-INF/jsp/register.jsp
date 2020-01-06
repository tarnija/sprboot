<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="css/app_common.css"> -->	
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/register.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/register.js"></script>


</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-dark bg-faded bg-info">
  <div class="container-fluid">
    <div class="navbar-header">
     <a class="navbar-brand" id="site-name" href="/">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="nav-item"><a  class="nav-link" href="/">Home</a></li>
      <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
      <li class="nav-item active"><a class="nav-link" href="#">Register</a></li>
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


	<div class="container-fluid" id="test">
	<div class="row">
	<div  class="col col-md-3" style="margin-top:2%;width:5%"><img alt="" src="images/left.png" style="width:75%;height:50%;margin-top:100%"></div>
		<div id="signupbox" 
			class="mainbox col-md-6 col-md-offset-2 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				
				<div class="panel-body">
					<font color="red" id="err">${errorMessage}</font>
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">
							<h2>REGISTER USER</h2>
						</legend>
						<hr>
						<form autocomplete="off" method="post" id="form1"
							onsubmit="return mySubmitFunction(event)">
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 col-form-label-lg">Name</label>
								<div class="controls col-md-9">
									<input type="text" id="uname" name="name" class="form-control"
										oninput="checkname()" />
								</div>
								<div class="col-md-12 offset-md-3" id="icn" style="display: none;">
									<span class="glyphicon">&#xe013;</span> <font color="green">Valid
										username</font>
								</div>
								<div class="col-md-12 offset-md-3" id="icn2" style="display: none;">
									<span class="glyphicon">&#xe014;</span> <font color="red">User
										Already Exists</font>
								</div>

							</div>
							<br>
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 col-form-label-lg">Email</label>
								<div class="controls col-md-9">
									<input type="email" name="email" class="form-control"
										id="user_email" oninput="checkemail()" />
								</div>
								<div class="col-md-12 offset-md-3" id="icn3" style="display: none;">
									<span class="glyphicon">&#xe013;</span> <font color="green">Valid
										email</font>
								</div>
								<div class="col-md-12 offset-md-3" id="icn4" style="display: none;">
									<span class="glyphicon">&#xe014;</span> <font color="red">User
										Already Exists with this email</font>
								</div>
							</div>
							<br>
							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 col-form-label-lg">Password</label>
								<div class="controls col-md-9">
									<input type="password" name="password" class="form-control"
										id="pass" oninput="pas()"
										onkeypress="return AvoidSpace(event)" />
								</div>
								<div class="col-md-12 offset-md-3" id="icn5" style="display: none;">
									<span class="glyphicon">&#xe013;</span> <font color="green">Valid
										password</font>
								</div>
								<div class="col-md-12 offset-md-3" id="icn6" style="display: none;">
									<span class="glyphicon">&#xe014;</span> <font color="red"></font>
								</div>
							</div>
							<br>
							<div class="form-group row">
								<label
									class="control-label col-md-3 col-form-label-lg">Re-Password</label>
								<div class="controls col-md-9">
									<input type="password" name="repassword" class="form-control"
										id="repass" oninput="matchpas()" onfocus="checkPass()"
										onkeypress="return AvoidSpace(event)"></input>
								</div>
								<div class="col-md-12 offset-md-3" id="icn7" style="display: none;">
									<span class="glyphicon">&#xe013;</span> <font color="green">Password
										match</font>
								</div>
								<div class="col-md-12 offset-md-3" id="icn8" style="display: none;">
									<span class="glyphicon">&#xe014;</span> <font color="red">Password
										do not match</font>
								</div>

							</div>
							<br>

							<div class="form-group row">
								<label for="colFormLabel"
									class="control-label col-md-3 col-form-label-lg">Select
									a Security Question</label>
								<div class="dropdown controls col-md-9">

									<select class="form-control" id="sel1" name="ques">
										<option value="" selected disabled hidden>Choose here</option>
										<option>What's your favourite colour?</option>
										<option>What's your father's name?</option>
										<option>What's your pet name?</option>
									</select>

								</div>

								<div class="col-md-12 offset-md-3" id="icn9" style="display: none;">
									<span class="glyphicon">&#xe014;</span> <font color="red">Please
										select a question</font>
								</div>

							</div>
							<div class="form-group row">
								<label style="display: none;" id="labelsel"
									class="control-label col-md-3 col-form-label-lg">Enter
									your Name</label>
								<div class="controls col-md-9">
									<input style="display: none;" id="sel" class="form-control"
										type="text" name="ans"></input>
								</div>
								<div class="col-md-12 offset-md-3" id="icn10" style="display: none;">
									<span class="glyphicon">&#xe014;</span> <font color="red">This
										field is required</font>
								</div>
							</div>
							<br>
							<div class="col-md-8 offset-md-2">
								<input type="submit" class="btn btn-primary btn-block btn-md" />
							</div>
						</form>
					</fieldset><br>
					<div class="offset-md-1">
					Already a User? <a href="/login">Click here</a> login.
					</div>
				</div>
			</div>
		</div>
			<div class="col col-md-3" style="margin-top:2%;width:5%"><img alt="" src="images/right.png" style="width:70%;height:50%;margin-top:100%"></div>
		
		</div>
	</div>
</body>
</html>