<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

	
	
		<div class="container-fluid  dashboard-content">
			<!-- pageheader -->
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="page-header">
						<h2 class="pageheader-title">Data Tables</h2>
						<p class="pageheader-text">Proin placerat ante duiullam
							scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi
							lobortis pulvinar quam.</p>
					</div>
				</div>
			</div>
			<!-- end pageheader -->
			<div class="row">
				<!-- basic table  -->
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="card">
						<h5 class="card-header">Account Table</h5>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered first">
									<thead>
										<tr>
											<th>ID</th>
											<th>Username</th>
											<th>Email</th>
											<th>Role</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lists}" var="list">
											<tr onclick="location.href='admin/userequipment?id=${list[0]}'" style="cursor:pointer;">
												<td>${list[0]}</td>
												<td>${list[1]}</td>
												<td>${list[2]}</td>
												<td>${list[3]}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		


