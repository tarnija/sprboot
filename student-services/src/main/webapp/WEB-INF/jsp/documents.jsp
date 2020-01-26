<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="context" value="/task-manager/app" />
<% String currentTheme = (String)session.getAttribute("currentTheme");%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="commons/masterHeader.jsp"></jsp:include>
	<link rel="stylesheet" href="${context}/css/dashboard_common.css">
	<link rel="stylesheet" href="${context}/css/user_dashboard.css">
	<link rel="stylesheet" href="${context}/css/app_common.css">
	<link rel="stylesheet" href="${context}/css/documents.css">
	<link rel="stylesheet" href="${context}/css/bootstrap-tagsinput.css"> 
	<c:if test="${currentTheme eq 'dark'}">
		<link id="dark-theme" rel="stylesheet" href="${context}/css/app-dark-theme.css">
	</c:if>
</head>
<body>
	<div class="wrapper main-container">
		<div class="side-bar" id="sidebar">
			<jsp:include page="sideMenu.jsp"></jsp:include>
		</div>
		<div class="main-board content">
			<div class="search-container">
				<div class="search-field">
					<input type="search" class="form-control search" placeholder="Search your documents...">
				</div>
				<jsp:include page="actionMenu.jsp"></jsp:include>
			</div>
			<div id="docs-container">
				<div class="row"></div>
				<div id="no-doc-container">
					<h1 id="no-doc-msg">Nothing Here!!!</h1>
					<div class="text-center">
						<button id="add-first-doc" class="btn btn-primary">Add Now</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="extension">
	<jsp:include page="modals/user-document/user-new-doc.jsp"></jsp:include>
	<script src="${context}/js/documents.js"></script>
	<script src="${context}/js/bootstrap-tagsinput.min.js"></script>
	<script src="${context}/js/fontawesome-all.min.js"></script>
</body>
</html>
