<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
	
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/welcomeadmin.js"></script>
<style>
#t1 {
	width: 70%;
	margin: auto;
}
</style>
<script type="text/javascript" src="js/welcomeadmin.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-md-9">
			<h2 style="margin-left: 220px;">Welcome admin</h2>
		</div>
		<div class="col-md-3">

			<a href="lgot" class="btn btn-outline-info a-btn-slide-text"><i
				class="fa fa-sign-out" aria-hidden="true"></i><span><strong>Logout</strong></span></a>

		</div>
	</div>
	<hr>
	<table class="table table-bordered table-hover" id="t1">

		<thead class="thead-dark">
			<tr>
				<th>UserName</th>
				<th>Email</th>
				<th>Details</th>
				<th>Edit</th>
				<th>Delete</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user" >
				<tr id="${user.id}">
					<td align="center"><c:out value="${user.name}" /></td>
					<td align="center"><c:out value="${user.email}" /></td>
					<td align="center"><a href="#"
						class="btn btn-outline-info a-btn-slide-text" id="detail"
						data-toggle="modal" data-target="#detailModal" onclick="getDetail(${user.id})"> <i
							class="fa fa-info-circle" aria-hidden="true"></i> <span><strong>Details</strong></span>
					</a></td>
					<td align="center"><a href="#"
						class="btn btn-outline-primary a-btn-slide-text" id="editbut"
						onclick=""> <i class="fa fa-pencil-square-o"
							aria-hidden="true"></i> <span><strong>Edit</strong></span>
					</a></td>
					<td align="center"><a href="#"
						class="btn btn-outline-danger a-btn-slide-text" id="delbut" data-toggle="modal" data-target="#delconfirm"
						onclick="deluserconf(${user.id})"> <i class="fa fa-trash-o"
							aria-hidden="true"></i> <span><strong>Delete</strong></span>
					</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	
	<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="delconfirm">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Confirm delete user</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      
      </div>
      <div class="modal-body">
      <h5 id="confdel"></h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="confbut" >Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="modal-btn-no">No</button>
      </div>
    </div>
  </div>
</div>
	
	
	<div id="detailModal" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">User Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<table class="table table-bordered table-hover">
						<tbody>
							<tr>
								<td>UserName</td>
								<td id="detname"></td>
							</tr>
							<tr>
								<td>Email</td>
								<td id="detemail"></td>
							</tr>
							<tr>
								<td>Tasks Count</td>
								<td id="detcount"></td>
							</tr>
							<tr>
								<td>Role</td>
								<td id="detrole"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>
</body>
</html>