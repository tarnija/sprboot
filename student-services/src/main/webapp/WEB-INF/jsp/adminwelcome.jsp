<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/welcome.js"></script>
<style>
.table{
width:70%;
margin:auto;
}

</style>
</head>
<body>
<div class="row">
<div class="col-md-9">
	<h2 style="margin-left:220px;">Welcome admin</h2>
	</div>
	<div  class="col-md-3">
		<a href="lgot"  >Logout</a>
</div>
</div>
<hr>
	<table class="table table-bordered table-hover">

		<thead  class="thead-dark">
			<tr>
				<th>UserName</th>
				<th>Email</th>
				<th>Details</th>
				<th>Edit</th>
				<th>Delete</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user" begin="1">
				<tr id="${user.id}" >
					<td align="center"><c:out value="${user.name}" /></td>
					<td align="center"><c:out value="${user.email}" /></td>
					<td align="center"><a href="#"
						class="btn btn-outline-info a-btn-slide-text" id="editbut" onclick="">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
							<span><strong>Details</strong></span>
					</a></td>
					<td align="center"><a href="#"
						class="btn btn-outline-primary a-btn-slide-text" id="editbut" onclick="">
							<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
							<span><strong>Edit</strong></span>
					</a></td>
					<td align="center"><a href="#" class="btn btn-outline-danger a-btn-slide-text"
						id="delbut" onclick="deltask()"> <i class="fa fa-trash-o" aria-hidden="true"></i>
                  <span><strong>Delete</strong></span>
					</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>
</html>