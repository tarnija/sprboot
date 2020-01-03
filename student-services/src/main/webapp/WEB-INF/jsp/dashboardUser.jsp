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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/Design_1.css">
	<script>
		$(document).ready(function() {
			$('#sidebarCollapse, .menu').on('click', function() {
				$('#sidebar').toggleClass('active');
				$(this).toggleClass('active');
			});
		});
	</script>
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
						<li><h6>Profile</h6></li>
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
				<!-- <div class="add-new-task">
					<a href="#" class="btn btn-block a-btn-slide-text">
						Add New Task
					</a>
				</div> -->
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
				<div class="addTask" data-toggle="modal" data-target="#myModal" id="show">
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
				<div class="board">
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
						<button class="btn btn-sm btn-block btn-default show-all-btn">Show All</button>
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
	  <div class="container">
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-dialog-centered modal-lg">
      <div class="modal-content">
        <div class="modal-header">
         
          <h4 class="modal-title">Add your task:</h4>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form autocomplete="off" method="post" id="myForm">
        <div class="modal-body">
         <div id="form">
  
  <font color="red" id="err">${errorMessage}</font>
  <fieldset  class="scheduler-border">
    
   <div class="form-group row">
  <label for="colFormLabel" class="col-md-3 col-form-label-lg">Title : </label>
    <div class="col-md-9">
     <input class="form-control" id="task" type="text" name="task">
     </div>
     <div class="col-sm-2" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">User Exists</font></div>
    <div class="col-sm-2" id="icn2" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Does Not Exists</font></div>
    </div>
   
       <div class="form-group row">
       <label for="colFormLabel" class="col-sm-3 col-form-label-lg">Descrpition : </label>
     <div class="col-md-9">  
      <textarea class="form-control"  rows="4" cols="50"></textarea>
      </div>
       <div class="col-sm-2" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">User Exists</font></div>
    <div class="col-sm-2" id="icn2" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Does Not Exists</font></div>
    </div>
  
     <div class="form-group row">
       <label for="colFormLabel" class="col-md-3 col-form-label-lg"> Date : </label>
    <div class="col-md-9">  
    <input class="form-control" id="date" type="date" name="date">
    </div>
    </div>
   
     <div class="form-group row">
      <label for="colFormLabel" class="col-md-3 col-form-label-lg"> Status : </label>
      <div class="col-md-9">  
   
     <select disabled class="form-control"> 
            <option value="binary">New</option> 
            <option value="linear">Linear Search</option> 
            <option value="interpolation">Interpolation Search</option> 
        </select> 
     </div>
   </div>
   
     
  </fieldset>

  </div>
        </div>
        <div class="modal-footer">
       
         <input class="btn btn-primary " type="button" value="Add Task" onclick="addTask()">
          <input type="reset" value="Reset" class="btn btn-default" />
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
       </form>
        
      </div>
    </div>
  </div>
  
  
  
  
  
  
  </div>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="js/doughnut.js"></script>
</body>
</html>
