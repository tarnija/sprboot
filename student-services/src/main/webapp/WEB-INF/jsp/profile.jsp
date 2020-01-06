<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Profile</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/profile.css">
	<link rel="stylesheet" href="css/dashboard_common.css">
	<link rel="stylesheet" href="css/user_dashboard.css">
	<link rel="stylesheet" href="css/app_common.css">
</head>
<body>
	<div class="wrapper main-container">
		<div class="side-bar" id="sidebar">
			<div style="height: 15px;">
				<a href="#" class="btn btn-block a-btn-slide-text" id="sidebarCollapse"	>
					<i class="fa fa-times" aria-hidden="true"></i>
				</a>
			</div>
			<div class="propic-container">
				<div class="propic">
					<i class="fa fa-user" style="font-size: 5.5em;"></i>
				</div>
				<div class="username">
					<h5>Welcome ${name}!!</h5>
				</div>
				<div class="user-menu-container">
					<ul>
						<li><h6><a href="/profile">Profile</a></h6></li>
						<li><h6><a href="#">Tasks</a></h6></li>
						<li>
							<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Settings</a>
							<ul class="collapse list-unstyled" id="homeSubmenu">
								<li><a href="#">Page</a></li>
								<li><a href="#">Page</a></li>
								<li><a href="#">Page</a></li>
							</ul>
						</li>	
						<li><h6>Documents</h6></li>
						<li><h6>Category</h6></li>
						<li><h6>Notes</h6></li>
					</ul>
				</div>
				<div class="logout-container">
					<a href="lgot" class="btn btn-block btn-danger a-btn-slide-text">
						<i class="fa fa-sign-out" aria-hidden="true"></i>
						<span><strong>Logout</strong></span>
					</a>
				</div>
			</div>
		</div>
		<div class="main-board content">
			<div class="search-container" style="height: 250px;">
				<div class="menu">
					<a href="#" class="btn btn-block a-btn-slide-text app-icon">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</a>
				</div>
				<div class="notifications">
					<a href="#" class="btn btn-block a-btn-slide-text app-icon">
						<i class="fa fa-bell-o" aria-hidden="true"></i>
					</a>
				</div>
				<div class="mail">
					<a href="#" class="btn btn-block a-btn-slide-text app-icon">
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
					</a>
				</div>
				<div class="addTask" data-toggle="modal" data-target="#new-task-modal" id="show">
					<a href="#" class="btn btn-block a-btn-slide-text app-icon">
						<i class="fa fa-plus" aria-hidden="true"></i>
					</a>
				</div>
				<div id="profile-pic-container">
					<form>
  						<input type='file' id="imgInp" />
  						<img id="profile-pic" src="images/pro.png" alt="your image" />
					</form>
				</div>
				<div style="margin:5px auto 0 auto; width: 150px;">
					<button id="add-image" class="btn btn-sm btn-success">Add Profile </button>
				</div>
				
			</div> 
			<div class="profile-container">
				<div class="form-field name">
					<div class="lbl" style="width: 12%; padding: 8px; margin-left: 15%;">
						<label for="name">First Name: </label>
					</div>	
					<div class="fld" style="width: 18%;">
						<input type="text" class="form-control" id="first-name">
					</div>
					<div class="lbl" style="width: 12%; padding: 8px; margin-left: 2.5%;">
						<label for="name">Last Name: </label>
					</div>	
					<div class="fld" style="width: 18%;">
						<input type="text" class="form-control" id="last-name">
					</div>
				</div>
				<div style="width: 100%;">
					<span id="name-error"></span>
				</div>	
				<hr> 
				<div class="name">
					<div class="lbl" style="width: 12%; padding: 8px; margin-left: 15%;">
						<label for="dateofbirth">Date of Birth: </label>
					</div>	
					<div class="lbl" style="width: 50px; padding: 5px 1px;">
						<label for="day">Day</label>
					</div>	
					<div class="fld" style="width: 85px;">
						<select class="form-control" id="day"></select>
					</div>
					<div class="lbl" style="width: 60px; margin-left: 30px; padding: 5px 1px;"">
						<label for="month">Month</label>
					</div>	
					<div class="fld" style="width: 130px;">
						<select  class="form-control" id="month"></select>
					</div>	
					<div class="lbl" style="width: 40px; margin-left: 30px; padding: 5px 1px;"">
						<label for="year">Year</label>
					</div>
					<div class="fld" style="width: 100px;">
						<select  class="form-control" id="year"></select>
					</div>	
				</div>
				<div style="width: 100%;">
					<span id="dob-error"></span>
				</div>	
				<hr>
				<div class="name">
					<div class="lbl" style="width: 12%; padding: 8px; margin-left: 15%;">
						<label for="contact">Contact: </label>
					</div>	
					<div class="fld" style="width: 170px;">
						<input type="text" class="form-control" id="contact" disabled>
					</div>
					<div class="lbl" style="width: 90px; text-align: right; padding-right: 10px;">
						<label for="email">Email: </label>
					</div>	
					<div class="fld" style="width: 270px;">
						<input type="email" class="form-control" id="email" disabled>
					</div>
				</div>
				<div style="width: 100%;">
					<!-- <span style="color: red; font-size: 14px; margin-left: -11%;">*Contact</span>
					<span style="color: red; font-size: 14px; margin-left: 24%;">*Email</span> -->
				</div>
				<hr>
				<div class="name" style="padding-left: 15%; padding-right: 9.5%;">
					<button class="btn btn-warning btn-sm skip">SKIP</button>
					<button class="btn btn-success btn-sm save">SAVE</button>
				</div>
			</div>
		</div>
	</div>
<script src="js/chart.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/profile.js"></script>
<script src="js/doughnut.js"></script>
</body>
