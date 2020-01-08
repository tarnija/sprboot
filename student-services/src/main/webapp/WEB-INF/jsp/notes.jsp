<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Notes</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/dashboard_common.css">
	<link rel="stylesheet" href="css/user_dashboard.css">
	<link rel="stylesheet" href="css/app_common.css">
	<link rel="stylesheet" href="css/notes.css">
	<link rel="stylesheet" href="css/bootstrap-tagsinput.css">
</head>
<body>
	<div class="wrapper main-container">
		<div class="side-bar" id="sidebar">
			<jsp:include page="sideMenu.jsp"></jsp:include>
		</div>
		<div class="main-board content">
			<div class="search-container">
				<div class="search-field">
					<input type="search" class="form-control search" placeholder="Search your notes...">
				</div>
				<jsp:include page="actionMenu.jsp"></jsp:include>
			</div>
			<div id="notes-container">
				<div id="no-note-container">
					<h1 id="no-note-msg">Nothing Here!!!</h1>
					<div class="text-center">
						<button id="add-first-note" class="btn btn-primary">Add Now</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal" id="new-note-modal">
    		<div class="modal-dialog modal-dialog-centered modal-lg">
      			<div class="modal-content">
        			<div class="modal-header">
			       		<h4 class="modal-title">Create a New Note</h4>
                 		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          					<span aria-hidden="true">&times;</span>
          				</button>
        			</div>
        			<div>
        				<div class="modal-body">
         					<div id="form">
  								<fieldset  class="scheduler-border">
	   								<div class="form-group row">
	  									<div class="col-md-1">
						       				<label for="colFormLabel" class="col-form-label-lg">Title:</label>
						       			</div>
	    								<div class="col-md-11">
	     									<input class="form-control" id="title" type="text" name="title">
	     								</div>
	    							</div>
	       							<div class="form-group row">
						       			<div class="col-md-1">
						       				<label for="colFormLabel" class="col-form-label-lg">Content :</label>
						       			</div>
	     								<div class="col-md-11">  
	      									<textarea class="form-control" id="note-content" rows="5" cols="50"></textarea>
	      								</div>
	    							</div>
	     							<div class="form-group row">
	      								<div class="col-md-1">
						       				<label for="colFormLabel" class="col-form-label-lg">Tags:</label>
						       			</div>
	    								<div class="col-md-11">
	     									<input class="form-control" id="tags" type="text" name="tags" data-role="tagsinput">
	     								</div>
	   								</div>
  								</fieldset>
  							</div>
       	 				</div>
        				<div class="modal-footer">
         						<button class="btn btn-danger btn-task" id="close-note-btn" data-dismiss="modal">Close</button>
         						<button class="btn btn-success btn-task" id="add-note-btn" >Add</button>
	          					<input class="btn btn-warning btn-task" id="reset-note-btn" type="reset"  value="Reset" />
        				</div>
	       			</div>
      			</div>
    		</div>
  		</div>
	<script src="js/user_dashboard.js"></script>
	<script src="js/notes.js"></script>
	<script src="js/bootstrap-tagsinput.min.js"></script>
</body>
</html>
