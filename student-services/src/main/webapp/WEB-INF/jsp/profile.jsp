<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="context" value="/task-manager/app" />
<% String currentTheme = (String) session.getAttribute("currentTheme"); %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="commons/masterHeader.jsp"></jsp:include>
<link rel="stylesheet" href="${context}/css/profile.css">
<link rel="stylesheet" href="${context}/css/dashboard_common.css">
<link rel="stylesheet" href="${context}/css/user_dashboard.css">
<link rel="stylesheet" href="${context}/css/app_common.css">
<c:if test="${currentTheme eq 'dark'}">
	<link id="dark-theme" rel="stylesheet"
		href="${context}/css/app-dark-theme.css">
</c:if>
</head>
<body>
<%-- <fmt:formatDate value="${activeUser.dateOfBirth}"  pattern="d" />
<fmt:formatDate value="${activeUser.dateOfBirth}"  pattern="m" />
<fmt:formatDate value="${activeUser.dateOfBirth}"  pattern="y" /> --%>
<input id="userId" type="hidden" value="${activeUser.id}" />
<input id="userProfilePic" type="hidden" value="${activeUser.profileImage}" />
<input type="file" id="imgInp" /> 
	<div class="wrapper main-container">
		<div class="side-bar" id="sidebar">
			<jsp:include page="sideMenu.jsp"></jsp:include>
		</div>
		<div class="main-board content">
			<div class="search-container" style="height: 250px;">
				<jsp:include page="actionMenu.jsp"></jsp:include>
				<div id="profile-pic-container">
				<span style="position: absolute; font-size: 12px; top:24px; color: blue;">Click on image to select</span>
					<form>
						<c:if test="${activeUser.profileImage ne null}">
							<img id="profile-pic" src="/task-manager/app/user/images/${activeUser.profileImage}" alt="your image" />
						</c:if>
						<c:if test="${activeUser.profileImage eq null}">
							<img id="profile-pic" src="${context}/images/pro.png" alt="your image" />
						</c:if>
					</form>
				</div>
				<div style="margin: 5px auto 0 auto; width: 150px;">
					<button id="add-image" class="btn btn-sm btn-success">Update Profile</button>
				</div>

			</div>
			<div class="profile-container">
				<div class="form-field name">
					<div class="lbl"style="width: 12%; padding: 8px; margin-left: 15%;">
						<label for="name">First Name: </label>
					</div>
					<div class="fld" style="width: 18%;">
						<input type="text" class="form-control" id="first-name"
							value="${activeUser.firstName}" />
					</div>
					<div class="lbl"
						style="width: 12%; padding: 8px; margin-left: 2.5%;">
						<label for="name">Last Name: </label>
					</div>
					<div class="fld" style="width: 18%;">
						<input type="text" class="form-control" id="last-name"
							value="${activeUser.lastName}">
					</div>
				</div>
				<div style="width: 100%;">
					<span id="name-error"></span>
				</div>
				<hr>
				<div class="name">
					<div class="lbl"
						style="width: 12%; padding: 8px; margin-left: 15%;">
						<label for="dateofbirth">Date of Birth: </label>
					</div>
					<div class="lbl" style="width: 50px; padding: 5px 1px;">
						<label for="day">Day</label>
					</div>
					<div class="fld" style="width: 10%;">
						<select class="form-control" id="day">
							<option>Select</option>
						</select>
					</div>
					<div class="lbl"
						style="width: 60px; margin-left: 3.5%; padding: 5px 1px;"">
						<label for="month">Month</label>
					</div>
					<div class="fld" style="width: 130px;">
						<select class="form-control" id="month">
							<option>Select</option>
						</select>
					</div>
					<div class="lbl"
						style="width: 40px; margin-left: 3.5%; padding: 5px 1px;"">
						<label for="year">Year</label>
					</div>
					<div class="fld" style="width: 10%;">
						<select class="form-control" id="year">
							<option>Select</option>
						</select>
					</div>
				</div>
				<div style="width: 100%;">
					<span id="dob-error"></span>
				</div>
				<hr>
				<div class="name">
					<div class="lbl"
						style="width: 12%; padding: 8px; margin-left: 15%;">
						<label for="contact">Contact: </label>
					</div>
					<div class="fld" style="width: 170px;">
						<input type="text" class="form-control" id="contact"
							value="${activeUser.contact}" />
					</div>
					<div class="lbl"
						style="width: 90px; text-align: right; padding-right: 10px;">
						<label for="email">Email: </label>
					</div>
					<div class="fld" style="width: 270px;">
						<input type="email" class="form-control" id="email"
							value="${activeUser.email}" disabled />
					</div>
				</div>
				<div style="width: 100%;">
					<!-- <span style="color: red; font-size: 14px; margin-left: -11%;">*Contact</span>
					<span style="color: red; font-size: 14px; margin-left: 24%;">*Email</span> -->
				</div>
				<hr>
				<div class="name text-center">
					<button id="save-profile" class="btn btn-success btn-sm" style="width: 200px;">SAVE</button>
				</div>
			</div>
		</div>
	</div>
	<script src="${context}/js/profile.js"></script>
</body>