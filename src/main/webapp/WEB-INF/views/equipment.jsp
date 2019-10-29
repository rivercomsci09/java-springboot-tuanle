<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<a href="createequipment" class="btn btn-primary"
			style="margin-left: 3%; margin-bottom: 3%">Create Equipment</a>
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
									<th>Name</th>
									<th>Type</th>
									<th>Description</th>
									<th>Status</th>
									<th>User</th>
									<th>Edit and Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists}" var="list">
									<tr>
										<td>${list[0]}</td>
										<td>${list[1]}</td>
										<td>${list[2]}</td>
										<td>${list[3]}</td>
										<td>
											<c:if test="${list[4] == true }">
												Ready
											</c:if>
											<c:if test="${list[4] == false }">
												Un Ready
											</c:if>
										</td>
										<td>${list[5]}</td>
										<td><a href="editequipment?id=${list[0]}"><button
													type="button" class="btn btn-info btn-sm"
													style="margin-left: 15px">Edit</button></a>&nbsp&nbsp&nbsp&nbsp&nbsp
											<a href="deleteequipment?id=${list[0]}"><button
													type="button" class="btn btn-danger btn-sm"
													style="margin-left: 15px">Delete</button></a></td>
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


