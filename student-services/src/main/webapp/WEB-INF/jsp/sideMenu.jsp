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
			<h5>Welcome ${name}!!</h5>
		</div>
		<div class="user-menu-container">
			<ul>
				<li><h6><a href="/profile">Profile</a></h6></li>
				<li><h6><a href="/dashboard-user">Dashboard</a></h6></li>
				<li><h6><a href="#">Tasks</a></h6></li>
				<li>
					<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Settings</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">Page</a></li>
						<li><a href="#">Page</a></li>
						<li><a href="#">Page</a></li>
					</ul>
				</li>	
				<li><h6>Documents</h6></li>
				<li><h6>Category</h6></li>
				<li><h6><a href="/notes">Notes</a></h6></li>
			</ul>
		</div>
		<div class="logout-container">
			<a href="lgot" class="btn btn-block btn-danger a-btn-slide-text">
				<i class="fa fa-sign-out-alt" aria-hidden="true"></i>
				<span><strong>Logout</strong></span>
			</a>
		</div>
	</div>