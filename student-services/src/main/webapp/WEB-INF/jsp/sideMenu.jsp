<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="context" value="/task-manager/app" />
	<link rel="stylesheet" href="${context}/css/side-menu.css">	
	<div style="height: 15px;">
		<a href="#" class="btn btn-block a-btn-slide-text" id="sidebarCollapse"	>
			<i class="fa fa-times" aria-hidden="true"></i>
		</a>
	</div>
	<div class="propic-container">
		<div class="propic">
			<i class="fa fa-user" style="font-size: 4.1em;"></i>
		</div>
		<div class="username">
			<h5>Welcome ${user.name}!!</h5>
		</div>
		<div class="user-menu-container">
			<ul class="user-menu-list">
				<li class="user-menu-list-profile"><h6><a href="${context}/user/profile/${user.id}">Profile</a></h6></li>
				<li class="user-menu-list-dashboard"><h6><a href="${context}/user/dashboard/">Dashboard</a></h6></li>
				<li class="user-menu-list-tasks"><h6><a href="${context}/user/tasks">Tasks</a></h6></li>
				<li class="user-menu-list-settings"><h6><a href="${context}/settings/">Settings</a></h6></li>
				<li class="user-menu-list-documents"><h6><a href="${context}/user/documents/">Documents</a></h6></li>
				<li class="user-menu-list-category"><h6><a href="${context}/categories">Category</a></h6></li>
				<li class="user-menu-list-notes"><h6><a href="${context}/user/notes/">Notes</a></h6></li>
			</ul>
		</div>
		<div class="logout-container">
			<a href="${context}/logout" class="btn btn-block btn-danger a-btn-slide-text">
				<i class="fa fa-sign-out-alt" aria-hidden="true"></i>
				<span><strong>Logout</strong></span>
			</a>
		</div>
	</div>
	
	<script>
		$(document).ready(function() {
			$('#sidebarCollapse, .menu').on('click', function() {
				$('#sidebar').toggleClass('active');
				$(this).toggleClass('active');
			});
		});
	</script>