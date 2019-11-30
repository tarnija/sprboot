<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	 <script type="text/javascript" src="js/restore.js"></script>
</head>
<body>
<div class="container">
   <font color="red">${errorMessage}</font>
   <font color="green">${msg}</font>
   <fieldset class="scheduler-border">
  <legend class="scheduler-border"> <h2>Restore Credentials</h2></legend>
    <form method="post" action="restoreCredentials">
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg">Please enter email/username : </label>
      <div class="col-sm-3">
     <input type="text" name="email" class="form-control" oninput="checkemail()" id="email"/>
     </div>
     <div class="col-sm-2" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span><font color="green">User exists</font></div>
     <div class="col-sm-2" id="icn2" style="display: none;"> <span class="glyphicon">&#xe014;</span><font color="red">User does not exists</font></div>
     </div>
     <br>
     <div class="form-group row" id="sec" style="display: none;">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg" id="ques">Security Question : </label>
      <div class="col-sm-3">
     <input type="text" name="ans" id="ans" class="form-control" oninput="answer()" id="email"/>
     </div>
     <div class="col-sm-2" id="icn3" style="display: none;"> <span class="glyphicon">&#xe013;</span><font color="green">Correct answer</font></div>
     <div class="col-sm-2" id="icn4" style="display: none;"> <span class="glyphicon">&#xe014;</span><font color="red">Incorrect answer</font></div>
    <br>
     </div> 
     
     
     <div class="form-group row" id="pass" style="display: none;">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg" >Enter new password : </label>
      <div class="col-sm-3">
     <input type="text" name="pass" id="pas1" class="form-control" disabled="disabled" id="email" oninput="validatePass()"/>
     </div>
     <div class="col-sm-2" id="icn5" style="display: none;"> <span class="glyphicon">&#xe013;</span><font color="green">Correct answer</font></div>
     <div class="col-sm-2" id="icn6" style="display: none;"> <span class="glyphicon">&#xe014;</span><font color="red">Incorrect answer</font></div>
    <br>
     </div> 
     
     <div class="form-group row" id="pass2" style="display: none;">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg" >Re-enter new password : </label>
      <div class="col-sm-3">
    <input type="text" name="repass" id="pas2" class="form-control" disabled="disabled" id="email"/>
     </div>
     <div class="col-sm-2" id="icn7" style="display: none;"> <span class="glyphicon">&#xe013;</span><font color="green">Correct answer</font></div>
     <div class="col-sm-2" id="icn8" style="display: none;"> <span class="glyphicon">&#xe014;</span><font color="red">Incorrect answer</font></div>
    <br>
     </div>     
     <div class="col-auto">  
        <input type="button" id="btn" class="btn btn-primary mb-2" disabled="disabled" value="Click to Reset Credentials" onclick="showReset()"/>
        </div>
        
         <div class="col-auto" style="display: none;" id="sub">  
        <input type="submit" id="sbm"  class="btn btn-primary mb-2" disabled="disabled" value="Submit"/>
        </div>
    </form><br>
    <a href="/login">Go to login page</a>
    
    </fieldset>
</div>
</body>
</html>