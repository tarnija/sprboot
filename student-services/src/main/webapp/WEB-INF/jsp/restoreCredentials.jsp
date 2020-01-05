<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	 <script type="text/javascript" src="js/restore.js"></script>
	 <link rel="stylesheet" href="css/nav.css">
	 <link rel="stylesheet" href="css/restore_credentials.css">
	 <style type="text/css">
	 </style>
</head>
<body>
<nav class="navbar navbar-inverse bg-info">
  <div class="container-fluid">
    <div class="navbar-header">
     <a class="navbar-brand" id="site-name" href="/">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="/">Home</a></li>
      <li class="active"><a href="/login">Login</a></li>
      <li><a href="/newUser">Register</a></li>
    </ul>
   <!--  <form class="navbar-form " action="/action_page.php"  style="float:right">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->
  </div>
</nav>
<div class="container">
<div id="signupbox" 
			class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
			
				<div class="panel-body">
   <font color="red">${errorMessage}</font>
   <font color="green">${msg}</font>

   <h2 style="text-align:center;">Restore Credentials</h2>
   <hr>
    <form autocomplete="off" method="post" action="restoreCredentials">
    <div class="form-group row">
      <label for="colFormLabel" class="control-label col-md-6 col-form-label-lg">Please enter email/username : </label>
      <div class="controls col-md-6">
     <input type="text" name="email" class="form-control" oninput="doneTyping()" id="email" />
     </div>
     <div class="col-md-4 offset-md-6" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">User Exists</font></div>
    <div class="col-md-4 offset-md-6" id="icn2" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Does Not Exists</font></div>
   
  </div>
    
     <div class="form-group row" style="display: none;" id="sec">
      <label for="colFormLabel" class="control-label col-md-6 col-form-label-lg" id="ques">Security Question </label>
      <div class="controls col-md-6">
     <input type="text" name="ans" class="form-control" id="ans" oninput="answer()"/>
     </div>
       <div class="col-md-4 offset-md-6" id="icn3" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Correct answer</font></div>
    <div class="col-md-4 offset-md-6" id="icn4" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Incorrect answer</font></div>
     </div>
     
     <div class="form-group row" style="display: none;" id="npass">
      <label for="colFormLabel" class="control-label col-md-6 col-form-label-lg ">Please enter your new Password : </label>
      <div class="controls col-md-6 ">
     <input type="password" name="pass" class="form-control" id="p1" disabled="disabled" oninput="pas()" />
     </div>
       <div class="col-md-4 offset-md-6" id="icn5" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Password Accurate</font></div>
    <div class="col-md-4 offset-md-6" id="icn6" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Inaccurate password</font></div>
    
    
     </div>
     
     <div class="form-group row" style="display: none;" id="npass2">
      <label for="colFormLabel" class="control-label col-md-6 col-form-label-lg">Please re-enter new Password : </label>
      <div class="controls col-md-6">
     <input type="password" name="pass2" class="form-control" id="p2" disabled="disabled" oninput="matchpas()" />
     </div>
     <div class="col-md-4 offset-md-6" id="icn7" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">Password match</font></div>
    <div class="col-md-4 offset-md-6" id="icn8" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">Password do not match</font></div>
     
     <br>
     </div>
     
         
     <div class="col-md-8 offset-md-2"  >  
        <input type="button" class="btn btn-primary btn-block btn-md" id="but" disabled="disabled" value="Click to Reset Credentials" onclick="showForm()"/>
        </div>
        
        
         <div class="col-md-8 offset-md-2" style="display: none;" id="subm" >  
        <input type="submit" class="btn btn-primary btn-block btn-md"  disabled="disabled" id="sb" value="Submit"/>
        </div>
    </form><br>
   
    
   <br>
     <a href="/login">Go to login page</a>
</div>
</div>
</div>
</div>
</body>
</html>