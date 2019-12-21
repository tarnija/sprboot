<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/Design_1.css">
<script>
	$(document).ready(function() {
		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').toggleClass('active');
			$(this).toggleClass('active');
		});
	});
</script>
<style type="text/css">
</style>

</head>

<body>

	<div class="wrapper main-container">

		<div class="side-bar" id="sidebar">
			<div class="propic-container">
				<div class="propic">
					<i class="fa fa-user" style="font-size: 5.5em;"></i>
				</div>
				<div class="username">
					<h5>Welcome ${name}!!</h5>
				</div>
				<div class="user-menu-container">
					<ul>
						<li><h6>Profile</h6></li>
						<li><h6>Tasks</h6></li>
						<li><a href="#homeSubmenu" data-toggle="collapse"
							aria-expanded="false">Settings</a>
							<ul class="collapse list-unstyled" id="homeSubmenu">
								<li><a href="#">Page</a></li>
								<li><a href="#">Page</a></li>
								<li><a href="#">Page</a></li>
							</ul>
						<li><h6>Documents</h6></li>
						<li><h6>Category</h6></li>
						<li><h6>Notes</h6></li>

					</ul>
				</div>
				<div class="logout-container">
					<a href="lgot" class="btn btn-block btn-danger a-btn-slide-text"><i
						class="fa fa-sign-out" aria-hidden="true"></i><span><strong>Logout</strong></span></a>
				</div>
			</div>
		</div>


		<div class="main-board content">
			
				


			
			<div class="search-container">
			
				<div class="collbut">
				<button type="button" id="sidebarCollapse" >
					<span></span> <span></span> <span></span>

				</button>
					
				</div>
				<div class="search-field">
				<input type="search" class="form-control search"
						placeholder="Search your tasks...">
				
				</div>
				<!-- <div class="menu">
					<span class="badge badge-dark">Menu</span>
				</div> -->
				<div class="menu"
					style="float: right; margin-right: 20px; width: 120px;">
					
					<a href="" class="btn btn-block btn-info a-btn-slide-text"><i
						class="fa fa-bars" aria-hidden="true"></i><span><strong>
								Menu</strong></span></a>
				</div>
				<div class="notifications"
					style="float: right; margin-right: 20px; width: 150px;">
					<a href="" class="btn btn-block btn-info a-btn-slide-text"><i
						class="fa fa-bell-o" aria-hidden="true"></i><span><strong>
								Notifications</strong></span></a>
				</div>
				<div class="mail"
					style="float: right; margin-right: 20px; width: 120px;">
					
					<a href="" class="btn btn-block btn-info a-btn-slide-text"><i
						class="fa fa-envelope-o" aria-hidden="true"></i><span><strong>
								Mail</strong></span></a>
								
				</div>
				
				<!-- <div class="notifications">
					<span class="badge badge-dark">Notifications</span>
				</div>
 -->
				<!-- <div class="mails">
					<span class="badge badge-dark">Mails</span>
				</div> -->
			</div>
			<div class="summary"
				style="border-bottom: 1px solid #ccc; margin-bottom: 10px; height: 130px; padding: 10px;">
				<h5 id="summary">Summary</h5>
				<div class="progress-container"
					style="width: 100px; height: 100px; float: right; margin: 0px; margin-right: 50px;">
					<!-- <svg width="100%" height="100%" viewbox = "0 0 42 42">
						<circle cx="21" cy="21" r="15.915494" fill="transparent" stroke="#d2d3d4" stroke-width="3"
					stroke-dasharray="100 100" stroke-dashoffset="0"></circle>
						<text x="50%" y="50%" text-anchor="middle" fill="black" font-size="10px"></text>		
					</svg> -->
					<canvas id="myChart" style="width: 100px; height: 100px;"></canvas>
				</div>
			</div>
			<div class="task-board">
				<div class="board">
					<div class="task-board-title">
						<h6>New</h6>
					</div>
					<div class="task-card new-task">
						<h6 class="task-title">Title</h6>
						<p>Some description of the task</p>
						<p>
							<span class="task-category">Category</span> <span
								class="task-date">22/12/2019</span>
						</p>
					</div>
					<div class="show-all-container">
						<button class="btn btn-sm btn-block btn-default show-all-btn">Show
							All</button>
					</div>
				</div>
				<div class="board">
					<div class="task-board-title">
						<h6 class="text-primary" style="font-weight: bolder;">In
							Progress</h6>
					</div>
					<div class="task-card progress-task">
						<h6 class="task-title">Title</h6>
						<p>Some description of the task</p>
						<p>
							<span class="task-category">Category</span> <span
								class="task-date">22/12/2019</span>
						</p>
					</div>


					<div class="task-card progress-task">
						<h6 class="task-title">Title</h6>
						<p>Some description of the task</p>
						<p>
							<span class="task-category">Category</span> <span
								class="task-date">22/12/2019</span>
						</p>
					</div>

					<div class="task-card progress-task">
						<h6 class="task-title">Title</h6>
						<p>Some description of the task</p>
						<p>
							<span class="task-category">Category</span> <span
								class="task-date">22/12/2019</span>
						</p>
					</div>
					<div class="show-all-container">
						<button class="btn btn-sm btn-block btn-primary show-all-btn">Show
							All</button>
					</div>
				</div>
				<div class="board">
					<div class="task-board-title">
						<h6 class="text-success">Completed</h6>
					</div>
					<div class="task-card completed-task">
						<h6 class="task-title">Title</h6>
						<p>Some description of the task</p>
						<p>
							<span class="task-category">Category</span> <span
								class="task-date">22/12/2019</span>
						</p>
					</div>
					<div class="task-card completed-task">
						<h6 class="task-title">Title</h6>
						<p>Some description of the task</p>
						<p>
							<span class="task-category">Category</span> <span
								class="task-date">22/12/2019</span>
						</p>
					</div>
					<div class="show-all-container">
						<button class="btn btn-sm btn-block btn-success show-all-btn">Show
							All</button>
					</div>
				</div>
				<div class="board" style="border: none;">
					<div class="task-board-title">
						<h6 class="text-danger">Delayed</h6>
					</div>
					<div class="task-card delayed-task">
						<h6 class="task-title">Title</h6>
						<p>Some description of the task</p>
						<p>
							<span class="task-category">Category</span> <span
								class="task-date">22/12/2019</span>
						</p>
					</div>

					<div class="show-all-container">
						<button class="btn btn-sm btn-block btn-danger show-all-btn">Show
							All</button>
					</div>
				</div>
			</div>
			</div>
		
	</div>



<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="js/doughnut.js"></script>



</body>

</html>