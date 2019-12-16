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
</head>
<style>
.im1{
display: block;
margin: auto;
width:60%;
}

.hea{
margin-top: 9rem;
width:400px;
    margin-bottom: -10rem;
    position: relative;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
}
h1{
 font-size: 84px;
    line-height: 1.15;
    letter-spacing: -3px;
    font-weight:450;
  text-align: center;
}
</style>

<body>

<nav class="navbar navbar-inverse bg-info">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="/login">Login</a></li>
      <li><a href="/newUser">Register</a></li>
    </ul>
    <form class="navbar-form " action="/action_page.php"  style="float:right">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>
</nav>
<div class="hea">
<h1>Organize it all with us</h1>
<a href="/login" class="btn btn-danger" >
<span><strong>Click here to begin</strong></span>
</a>
</div>
<img src="images/bg2.jpg" class="im1">
</body>
</html>