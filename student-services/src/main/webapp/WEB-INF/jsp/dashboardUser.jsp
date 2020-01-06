<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Dashboard</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
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
						<li><h6>Tasks</h6></li>
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
			<div class="search-container">
				<div class="search-field">
					<input type="search" class="form-control search" placeholder="Search your tasks...">
				</div>
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
			</div>
			<div id="summary">
				<h5>Summary</h5>
				<div class="summary-details">
					<div class="summary-section" style="border-right:1px solid #ccc;">
						<p class="summary-data">
							<span class="summary-title">Tasks</span>
							<span class="summary-count">20</span>
						</p>
						<p class="summary-data">
							<span class="summary-title">Mails</span>
							<span class="summary-count">8</span>
						</p>
					</div>
					<div class="summary-section" style="border-right:1px solid #ccc;">
						<p class="summary-data">
							<span class="summary-title">In Progress</span>
							<span class="summary-count">10</span>
						</p>
						<p class="summary-data">
							<span class="summary-title">Notes</span>
							<span class="summary-count">15</span>
						</p>
					</div>
					<div class="summary-section" style="border-right:1px solid #ccc;">
						<p class="summary-data">
							<span class="summary-title">Completed</span>
							<span class="summary-count">8</span>
						</p>						
						<p class="summary-data">
							<span class="summary-title">Documents</span>
							<span class="summary-count">5</span>
						</p>
					</div>
					<div class="summary-section" >
						<p class="summary-data">
							<span class="summary-title">Delayed</span>
							<span class="summary-count">7</span>
						</p>
						<p class="summary-data">
							<span class="summary-title">Reminders</span>
							<span class="summary-count">4</span>
						</p>
					</div>		
				</div>
				<div class="progress-container">
					<canvas id="myChart"></canvas>
				</div>
			</div>
			<div class="task-board">
				<div class="board" id="new-task-board">
					<div class="task-board-title">
						<h6>New</h6>
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
						<button class="btn btn-sm btn-block show-all-btn btn-outline-primary">Show All</button>
					</div>
				</div>
				<div class="board">
					<div class="task-board-title">
						<h6 class="text-primary" style="font-weight: bolder;">In Progress</h6>
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
						<h6 class="text-success">Completed</h6>
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
						<h6 class="text-danger">Delayed</h6>
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
	
	<div class="modal" id="new-task-modal">
    		<div class="modal-dialog modal-dialog-centered modal-lg">
      			<div class="modal-content">
        			<div class="modal-header">
			       		<h4 class="modal-title">Add your task:</h4>
                 		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          					<span aria-hidden="true">&times;</span>
          				</button>
        			</div>
        			<div>
        				<div class="modal-body">
         					<div id="form">
  								<fieldset  class="scheduler-border">
	   								<div class="form-group row">
	  									<div class="col-md-2">
						       				<label for="colFormLabel" class="col-form-label-lg">Title :</label>
						       			</div>
	    								<div class="col-md-10">
	     									<input class="form-control" id="title" type="text" name="title">
	     								</div>
	    							</div>
	       							<div class="form-group row">
						       			<div class="col-md-2">
						       				<label for="colFormLabel" class="col-form-label-lg">Description :</label>
						       			</div>
	     								<div class="col-md-10">  
	      									<textarea class="form-control" id="description" rows="3" cols="50"></textarea>
	      								</div>
	    							</div>
	     							<div class="form-group row">
	       								<div class="col-md-2">
						       				<label for="colFormLabel" class="col-form-label-lg">Start On :</label>
						       			</div>
									    <div class="col-md-4">  
									    	<input class="form-control" id="starton" type="date" name="starton">
									    </div>
									    <div class="col-md-2">
						       				<label for="colFormLabel" class="col-form-label-lg">Done By :</label>
						       			</div>
									    <div class="col-md-4">  
									    	<input class="form-control" id="doneby" type="date" name="doneby">
									    </div>
	    							</div>
	     							<div class="form-group row">
	      								<div class="col-md-2">
	      									<label for="colFormLabel" class="col-form-label-lg"> Status : </label>
	      								</div>
										<div class="col-md-4">     
									     	<select disabled class="form-control" id="status"> 
									        	<option value="New">New</option> 
									            <option value="In Progress">In Progress</option>
									            <option value="Completed">Completed</option> 
									            <option value="Delayed">Delayed</option> 
									        </select> 
									  	</div>
									  	<div class="col-md-2">
						       				<label for="colFormLabel" class="col-form-label-lg">Assignee :</label>
						       			</div>
									    <div class="col-md-4">  
									    	<input class="form-control" id="assignee" type="text" name="assignee">
									    </div>
	   								</div>
  								</fieldset>
  							</div>
       	 				</div>
        				<div class="modal-footer">
         					<div style="margin-right: 50%;">
         						<button class="btn btn-danger btn-task" data-dismiss="modal">Close</button>
	          				</div>	
         					<div style="padding-right: 10px;">
	          					<input class="btn btn-warning btn-task" type="reset"  value="Reset" />
	          				</div>
	          				<div style="padding-right: 30px;">
         						<button class="btn btn-success btn-task" >Add</button>
         					</div>
        				</div>
	       			</div>
      			</div>
    		</div>
  		</div>
  	
  	<div class="task-card new-task hidden-task" id="demo-task" >
		<h6 class="task-title" id="demo-task-title"></h6>
		<p id="demo-task-description"></p>
		<p>
			<span id="demo-task-category" class="task-category"></span> 
			<span id="demo-task-date" class="task-date"></span>
		</p>
	</div>
	<script src="js/chart.js"></script>
	<script src="js/doughnut.js"></script>
	<script src="js/user_dashboard.js"></script>
</body>
</html>
