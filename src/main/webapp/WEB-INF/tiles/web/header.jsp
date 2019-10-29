<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<header>
	<nav>
		<div class="line">
			<div class="s-12 l-2">
				<img class="s-5 l-12 center" src="templates/web/img/logo.png">
			</div>
			<div class="top-nav s-12 l-10 right">
				<p class="nav-text">Custom menu text</p>
				<ul class="right">
					<li><a href="/home">Home</a></li>
					<li><a>Product</a>
						<ul>
							<li><a>Product 1</a></li>
							<li><a>Product 2</a></li>
							<li><a>Product 3</a>
								<ul>
									<li><a>Product 3-1</a></li>
									<li><a>Product 3-2</a></li>
									<li><a>Product 3-3</a></li>
								</ul></li>
						</ul></li>
					<li><a>Company</a>
						<ul>
							<li><a>About</a></li>
							<li><a>Location</a></li>
						</ul></li>
					<li><a>Contact</a></li>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="login">Login</a></li>
					</sec:authorize>
					<sec:authorize access="hasAnyAuthority('USER', 'ADMIN')">
						<li><a href="logout">Logout</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>
</header>