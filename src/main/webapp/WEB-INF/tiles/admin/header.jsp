<div class="dashboard-main-wrapper">
	<div class="dashboard-header">
		<nav class="navbar navbar-expand-lg bg-white fixed-top">
			<a class="navbar-brand" href="index" style="margin-left: 30px">RIVER</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto navbar-right-top"
					style="margin-right: 20px; font-size: 25px">Welcom:
					${pageContext.request.userPrincipal.name}
				</ul>
			</div>

			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto navbar-right-top"
					style="margin-right: 100px">
					<a href="/logout">Logout</a>
				</ul>
			</div>

		</nav>
	</div>
</div>