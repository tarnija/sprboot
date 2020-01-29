<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="context" value="/task-manager/app" />
<% String currentTheme = (String)session.getAttribute("currentTheme");%>
<!DOCTYPE html>
<html>
<head> 
	<jsp:include page="commons/masterHeader.jsp"></jsp:include>
	<link rel="stylesheet" href="${context}/css/dashboard_common.css">
	<link rel="stylesheet" href="${context}/css/app_common.css">
	<link rel="stylesheet" href="${context}/css/settings.css">
	<c:if test="${currentTheme eq 'dark'}">
		<link id="dark-theme" rel="stylesheet" href="${context}/css/app-dark-theme.css">
	</c:if>
</head>
<body>
	<div class="wrapper main-container">
		<div class="side-bar" id="sidebar" style="width: 0%;">
		</div>
		<div class="main-board content">
			<h3 class="text-center" style="margin-top: 15%; margin-bottom: 2%; color: #ccdcdc; font-size:75px; font-weight: bolder;">Session Expired</h3>
			<h4 class="text-center" style=" font-weight: bold;color: #dcdcdc; margin-bottom: 1%;">Your session has expired. Please Login to continue </h4>
			<p class="text-center" style="line-height: 25px; font-size: 20px;"><br> <a href="${context}/login">Login</a> </p>
		</div>
	</div>
</body>