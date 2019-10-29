<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="nav-left-sidebar sidebar-dark">
	<div class="menu-list">
		<nav class="navbar navbar-expand-lg navbar-light">
			<a class="d-xl-none d-lg-none" href="#">Dashboard</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav flex-column">
					<li class="nav-divider">Menu</li>

					<sec:authorize access="hasAuthority('ADMIN')">
						<li class="nav-item "><a class="nav-link active" href="/home"
							data-toggle="collapse" aria-expanded="false"
							data-target="#submenu-1" aria-controls="submenu-1"><i
								class="fa fa-fw fa-user-circle"></i>Admin Page <span
								class="badge badge-success">6</span></a>
							<div id="submenu-1" class="collapse submenu" style="">
								<ul class="nav flex-column">
									<li class="nav-item"><a class="nav-link"
										href="admin/equipment">Equipment Manager</a></li>
									<li class="nav-item"><a class="nav-link" href="admin">Account
											Manager</a></li>
								</ul>
							</div></li>
					</sec:authorize>


					<li class="nav-item"><a class="nav-link" href="/home"
						data-toggle="collapse" aria-expanded="false"
						data-target="#submenu-2" aria-controls="submenu-2"><i
							class="fa fa-fw fa-user-circle"></i>User Page</a>
						<div id="submenu-2" class="collapse submenu" style="">
							<ul class="nav flex-column">
								<li class="nav-item"><a class="nav-link" href="user">Account
										Manager</a></li>
							</ul>
						</div></li>
				</ul>
			</div>
		</nav>
	</div>
</div>