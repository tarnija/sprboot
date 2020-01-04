<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Restore Credentials</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/restore.js"></script>
</head>
<body>
	<div class="container">
		<div id="signupbox" class="mainbox col-md-7 col-md-offset-2 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
				</div>
				<div class="panel-body">
   					<font color="red">${errorMessage}</font>
   					<font color="green">${msg}</font>
   					<fieldset class="scheduler-border">
	  					<legend class="scheduler-border"> 
	  						<h2>Restore Credentials</h2>
	  					</legend>
	    				<form autocomplete="off" method="post" action="restoreCredentials">
					    	<div class="form-group row">
					      		<label for="colFormLabel" class="control-label col-md-6 col-form-label-lg">Please enter email/username : </label>
					      		<div class="controls col-md-6">
					     			<input type="text" name="email" class="form-control" oninput="doneTyping()" id="email" />
					     		</div>
					     		<div class="col-md-4 col-md-offset-6" id="icn"> 
					     			<span class="glyphicon">&#xe013;</span> 
					     			<font color="green">User Exists</font>
					     		</div>
					    		<div class="col-md-4 col-md-offset-6" id="icn2">  
					    			<span class="glyphicon">&#xe014;</span> 
					    			<font color="red">User Does Not Exists</font>
					    		</div>
					  		</div>
	     					<div class="form-group row" id="sec">
					      		<label for="colFormLabel" class="control-label col-md-6 col-form-label-lg" id="ques">Security Question </label>
							    <div class="controls col-md-6">
							    	<input type="text" name="ans" class="form-control" id="ans" oninput="answer()"/>
							   	</div>
						       	<div class="col-md-4 col-md-offset-6" id="icn3"> 
						       		<span class="glyphicon">&#xe013;</span> 
						       		<font color="green">Correct answer</font>
						       	</div>
	    						<div class="col-md-4 col-md-offset-6" id="icn4">  
	    							<span class="glyphicon">&#xe014;</span> 
	    							<font color="red">Incorrect answer</font>
	    						</div>
	     					</div>
	     					<div class="form-group row" id="npass">
	      						<label for="colFormLabel" class="control-label col-md-6 col-form-label-lg">Please enter new Password : </label>
	      						<div class="controls col-md-6">
	     							<input type="password" name="pass" class="form-control" id="p1" disabled="disabled" oninput="pas()" />
	     						</div>
	       						<div class="col-md-4 col-md-offset-6" id="icn5"> 
	       							<span class="glyphicon">&#xe013;</span> 
	       							<font color="green">Password Accurate</font>
	       						</div>
	    						<div class="col-md-4 col-md-offset-6" id="icn6">  
	    							<span class="glyphicon">&#xe014;</span> 
	    							<font color="red">Inaccurate password</font>
	    						</div>
	     						<br>
	     					</div>
	     					<div class="form-group row" id="npass2">
	      						<label for="colFormLabel" class="control-label col-md-6 col-form-label-lg">Please re-enter new Password : </label>
	      						<div class="controls col-md-6">
	     							<input type="password" name="pass2" class="form-control" id="p2" disabled="disabled" oninput="matchpas()" />
	     						</div>
	     						<div class="col-md-4 col-md-offset-6" id="icn7"> 
	     							<span class="glyphicon">&#xe013;</span> 
	     							<font color="green">Password match</font>
	     						</div>
	    						<div class="col-md-4 col-md-offset-6" id="icn8">  
	    							<span class="glyphicon">&#xe014;</span> 
	    							<font color="red">Password do not match</font>
	    						</div>
	     						<br>
	    		 			</div>
	     					<div class="col-auto"  >  
	        					<input type="button" class="btn btn-primary mb-2" id="but" disabled="disabled" value="Click to Reset Credentials" onclick="showForm()"/>
	        				</div>
	         				<div class="col-md-3" id="subm">  
						        <input type="submit" class="btn btn-primary mb-2 col-md-12" disabled="disabled" id="sb" value="Submit"/>
	        				</div>
	    				</form>
	    				<br>
    				</fieldset>
    				<br>
     				<a href="/login">Go to login page</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
