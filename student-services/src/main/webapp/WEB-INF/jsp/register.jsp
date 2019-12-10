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
	
	 <script type="text/javascript" src="js/register.js"></script>

</head>
<body>
<div class="container">
 <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
  <div class="panel panel-info">
   <div class="panel-heading">
                <div class="panel-title">Sign Up</div>
                <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="/accounts/login/">Sign In</a></div>
            </div>  
             <div class="panel-body" >
<font color="red" id="err">${errorMessage}</font>
<fieldset class="scheduler-border">
	<legend class="scheduler-border">	<h2>REGISTER USER</h2></legend>
    <form autocomplete="off" method="post" id="form1" onsubmit="return mySubmitFunction(event)">
    <div class="form-group row">
       <label for="colFormLabel" class="col-sm-2 col-form-label-lg">Name</label>
        <div class="col-sm-3">
        <input type="text" id="uname" name="name" class="form-control" oninput="checkname()"/>
        </div>
         <div class="col-sm-2" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Valid username</font></div>
    <div class="col-sm-2" id="icn2" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Already Exists</font></div>
   
        </div><br>
           <div class="form-group row">
        <label for="colFormLabel" class="col-sm-2 col-form-label-lg" >Email</label>
        <div class="col-sm-3">
         <input type="email" name="email" class="form-control" id="user_email" oninput="checkemail()" />
         </div>
            <div class="col-sm-2" id="icn3" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Valid email</font></div>
    <div class="col-sm-2" id="icn4" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Already Exists with this email</font></div>
         </div><br>
       <div class="form-group row"> 
       <label for="colFormLabel" class="col-sm-2 col-form-label-lg">Password</label>
      <div class="col-sm-3">
       <input type="password" name="password" class="form-control" id="pass" oninput="pas()" onkeypress="return AvoidSpace(event)" />
       </div>
    <div class="col-sm-2" id="icn5" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Valid password</font></div>
    <div class="col-sm-2" id="icn6" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red"></font></div>
       </div> <br>
        <div class="form-group row">
        <label for="colFormLabel" class="col-sm-2 col-form-label-lg" >Re-Password</label>
         <div class="col-sm-3">
         <input type="password" name="repassword" class="form-control" id="repass" oninput="matchpas()" onfocus="checkPass()" onkeypress="return AvoidSpace(event)"/>
         </div>
          <div class="col-sm-2" id="icn7" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Password match</font></div>
    <div class="col-sm-2" id="icn8" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Password do not match</font></div>
     
		</div><br>
     
          <div class="form-group row">
          <label for="colFormLabel" class="col-sm-2 col-form-label-lg">Select a Security Question</label>
         <div class="dropdown col-sm-3">
   
    <select  class="form-control" id="sel1" name="ques" >
    <option value="" selected disabled hidden>Choose here</option>
      <option>What's your favourite colour?</option>
      <option>What's your father's name?</option>
      <option>What's your pet name?</option>
    </select>
 
  </div>

   <div class="col-sm-2" id="icn9" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Please select a question</font></div>
     
  </div>
   <div class="form-group row">
   <label style="display:none;" id="labelsel" class="col-sm-2 col-form-label-lg">Enter your Name</label>
 <div class="col-sm-3">
<input style="display:none;" id="sel" class="form-control" type="text" name="ans"></input>
</div>
  <div class="col-sm-2" id="icn10" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">This field is required</font></div>
   </div>
		<br>
		<div class="col-auto">
        <input type="submit" class="btn btn-primary mb-2" />
        </div>
    </form>
    </fieldset>
  Already a User? <a href="/login">Click here</a> login.
   </div>
   </div>
   </div>
</div>
</body>
</html>