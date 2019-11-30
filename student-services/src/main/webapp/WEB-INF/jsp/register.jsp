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
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script>
	$(document).ready(function(){
	$('select').change(function(){
	     if($('select option:selected').text() != "Choose here"){
		     $('#labelsel').text($('select option:selected').text())
	        $('#labelsel').show();
	        $('#sel').show();
	     }
	     else{
	    	 $('#labelsel').hide();
		        $('#sel').hide();
	     }
	 });
	
	});
	</script>
</head>
<body>
<div class="container">

<font color="red">${errorMessage}</font>
<fieldset class="scheduler-border">
	<legend class="scheduler-border">	<h2>REGISTER USER</h2></legend>
    <form method="post" id="form1">
    <div class="form-group row">
       <label for="colFormLabel" class="col-sm-2 col-form-label-lg">Name</label>
        <div class="col-sm-3">
        <input type="text" id="uname" name="name" class="form-control"/>
        </div>
        </div><br>
       <div class="form-group row"> 
       <label for="colFormLabel" class="col-sm-2 col-form-label-lg">Password</label>
      <div class="col-sm-3">
       <input type="password" name="password" class="form-control" id="pass" />
       </div>
       </div> <br>
        <div class="form-group row">
        <label for="colFormLabel" class="col-sm-2 col-form-label-lg">Re-Password</label>
         <div class="col-sm-3">
         <input type="password" name="repassword" class="form-control" id="repass" />
         </div>
		</div><br>
        <div class="form-group row">
        <label for="colFormLabel" class="col-sm-2 col-form-label-lg" >Email</label>
        <div class="col-sm-3">
         <input type="email" name="email" class="form-control" id="user_email"/>
         </div>
         </div><br>
          <div class="form-group row">
          <label for="colFormLabel" class="col-sm-2 col-form-label-lg">Select a Security Question</label>
         <div class="dropdown col-sm-3">
   
    <select  class="form-control" id="sel1" name="ques" >
    <option value="" selected disabled hidden>Choose here</option>
      <option onclick="GetSelectedValue()">What's your favourite colour?</option>
      <option onclick="GetSelectedValue()">What's your father's name?</option>
      <option onclick="GetSelectedValue()">What's your pet name?</option>
    </select>
  </div>
  </div>
   <div class="form-group row">
   <label style="display:none;" id="labelsel" class="col-sm-2 col-form-label-lg">Enter your Name</label>
 <div class="col-sm-3">
<input style="display:none;" id="sel" class="form-control" type="text" name="ans"></input>
</div>
   </div>
		<br>
		<div class="col-auto">
        <input type="submit" class="btn btn-primary mb-2" />
        </div>
    </form>
    </fieldset>
  Already a User? <a href="/login">Click here</a> login.
   </div>
   <script>
   jQuery.validator.setDefaults({
		  debug: true,
		  success: "valid"
		});
	$('form[id="form1"]').validate({
	    rules: {
	      uname: 'required',
	      pass: {
		        required: true,
		        minlength: 8,
		      },
	      repass: {
		      required:true,
	          equalTo: "#pass",
	        },
	      user_email: {
	        required: true,
	        email: true,
	      },
	    },
	   
	    submitHandler: function(form) {
	      form.submit();
	    }
	  });
   </script>
</body>
</html>