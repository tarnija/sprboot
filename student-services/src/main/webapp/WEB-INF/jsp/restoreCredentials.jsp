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
    <form autocomplete="off" method="post" action="restoreCredentials">
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg">Please enter email/username : </label>
      <div class="col-sm-3">
     <input type="text" name="email" class="form-control" oninput="doneTyping()" id="email" />
     </div>
     <div class="col-sm-2" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">User Exists</font></div>
    <div class="col-sm-2" id="icn2" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Does Not Exists</font></div>
   
  </div>
    
     <div class="form-group row" style="display: none;" id="sec">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg" id="ques">Security Question </label>
      <div class="col-sm-3">
     <input type="text" name="ans" class="form-control" id="ans" oninput="answer()"/>
     </div>
       <div class="col-sm-2" id="icn3" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Correct answer</font></div>
    <div class="col-sm-2" id="icn4" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Incorrect answer</font></div>
     </div>
     
     <div class="form-group row" style="display: none;" id="npass">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg">Please enter new Password : </label>
      <div class="col-sm-3">
     <input type="password" name="pass" class="form-control" id="p1" disabled="disabled" oninput="pas()" />
     </div>
       <div class="col-sm-2" id="icn5" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Password Accurate</font></div>
    <div class="col-sm-2" id="icn6" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Inaccurate password</font></div>
    
     <br>
     </div>
     
     <div class="form-group row" style="display: none;" id="npass2">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg">Please reenter new Password : </label>
      <div class="col-sm-3">
     <input type="password" name="pass2" class="form-control" id="p2" disabled="disabled" oninput="matchpas()" />
     </div>
     <div class="col-sm-2" id="icn7" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Password match</font></div>
    <div class="col-sm-2" id="icn8" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Password do not match</font></div>
     
     <br>
     </div>
     
         
     <div class="col-auto"  >  
        <input type="button" class="btn btn-primary mb-2" id="but" disabled="disabled" value="Click to Reset Credentials" onclick="showForm()"/>
        </div>
        
        
         <div class="col-auto" style="display: none;" id="subm" >  
        <input type="submit" class="btn btn-primary mb-2"  disabled="disabled" id="sb" value="Submit"/>
        </div>
    </form><br>
    <a href="/login">Go to login page</a>
    
    </fieldset>
</div>
</body>
</html>