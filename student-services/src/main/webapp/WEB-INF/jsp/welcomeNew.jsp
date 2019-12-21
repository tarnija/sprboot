<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/Design_1.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="main-container">
		<div class="side-bar">
			<div class="propic-container">
				<div class="propic"></div>
				<div class="username">
					<h5>Tarnija Srivastava</h5>
				</div>
				<div class="user-menu-container">
					<ul>
						<li><h6>Profile</h6></li>
						<li><h6>Tasks</h6></li>
						<li><h6>Settings</h6></li>
						<li><h6>Documents</h6></li>
						<li><h6>Category</h6></li>
						<li><h6>Notes</h6></li>
					</ul>
				</div>
				
				<div  class="logout-container">
		<a href="lgot" class="btn btn-danger a-btn-slide-text" ><i class="fa fa-sign-out" aria-hidden="true"></i><span><strong>Logout</strong></span></a>
</div>
			</div>
		</div>
		<div class="main-board">
			<div class="search-container">
				<div style="float: left; width: 20px; margin-right: 30px;">
					<span class = "glyphicon glyphicon-envelope"></span>
				</div>
				<div class="search-field">
					<input type="search" class="form-control search" placeholder="Search your tasks...">
				</div>
				<div class="menu">
					<span class="badge badge-dark">Menu</span>
				</div>
				<div class="notifications">
					<span class="badge badge-dark">Notifications</span>
				</div>
				<div class="mails">
					<span class="badge badge-dark">Mails</span>
				</div>
			</div>
			<div class="summary" style="border-bottom: 1px solid #ccc; margin-bottom: 10px; height: 130px; padding: 10px;">
				<h5 id="summary">Summary</h5>
				<div class="progress-container" style="width: 100px; height: 100px; float: right;margin: 0px; margin-right: 50px;">
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
							<h6>New </h6>
						</div>
						<div class="task-card new-task">
							<h6 class="task-title">Title</h6>
							<p>Some description of the task</p>
							<p> 
								<span class="task-category">Category</span> 
								<span class="task-date">22/12/2019</span> 
							</p>
						</div>
						<div class="show-all-container">
							<button class="btn btn-sm btn-block btn-default show-all-btn">Show All</button>	
						</div>
					</div>
					<div class="board">
						<div class="task-board-title">
							<h6 class="text-primary" style="font-weight: bolder;">In Progress </h6>
						</div>
						<div class="task-card progress-task">
							<h6 class="task-title">Title</h6>
							<p>Some description of the task</p>
							<p> 
								<span class="task-category">Category</span> 
								<span class="task-date">22/12/2019</span> 
							</p>
						</div>


						<div class="task-card progress-task">
							<h6 class="task-title">Title</h6>
							<p>Some description of the task</p>
							<p> 
								<span class="task-category">Category</span> 
								<span class="task-date">22/12/2019</span> 
							</p>
						</div>

						<div class="task-card progress-task">
							<h6 class="task-title">Title</h6>
							<p>Some description of the task</p>
							<p> 
								<span class="task-category">Category</span> 
								<span class="task-date">22/12/2019</span> 
							</p>
						</div>
						<div class="show-all-container">
							<button class="btn btn-sm btn-block btn-primary show-all-btn">Show All</button>	
						</div>
					</div>
					<div class="board">
						<div class="task-board-title">
							<h6 class="text-success">Completed </h6>
						</div>
						<div class="task-card completed-task">
							<h6 class="task-title">Title</h6>
							<p>Some description of the task</p>
							<p> 
								<span class="task-category">Category</span> 
								<span class="task-date">22/12/2019</span> 
							</p>
						</div>
						<div class="task-card completed-task">
							<h6 class="task-title">Title</h6>
							<p>Some description of the task</p>
							<p> 
								<span class="task-category">Category</span> 
								<span class="task-date">22/12/2019</span> 
							</p>
						</div>
						<div class="show-all-container">
							<button class="btn btn-sm btn-block btn-success show-all-btn">Show All</button>	
						</div>
					</div>
					<div class="board" style="border: none;">
						<div class="task-board-title">
							<h6 class="text-danger">Delayed </h6>
						</div>
						<div class="task-card delayed-task">
							<h6 class="task-title">Title</h6>
							<p>Some description of the task</p>
							<p> 
								<span class="task-category">Category</span> 
								<span class="task-date">22/12/2019</span> 
							</p>
						</div>

						<div class="show-all-container">
							<button class="btn btn-sm btn-block btn-danger show-all-btn">Show All</button>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="js/doughnut.js"></script>
</body>
</html>