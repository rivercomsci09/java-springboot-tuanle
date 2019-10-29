<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="margin-top: 3%; margin-left: 5%; margin-right: 5%">
	<div class="card">
		<h5 class="card-header">Edit Equipment Form</h5>
		<div class="card-body">
			<form action="editequipment" method="post" id="basicform"
				modelAttribute="equipment">

				<input type="hidden" value="${equipment.id}" name="id" />
				<div class="form-group">
					<label for="inputUserName">Name</label> <input class="form-control"
						type="text" name="name" value="${equipment.name }">
				</div>
				<div class="form-group">
					<label for="inputUserName">Type</label> <input class="form-control"
						type="text" name="type" value="${equipment.type }">
				</div>
				<div class="form-group">
					<label for="inputUserName">Descreption</label> <input
						class="form-control" type="text" name="description"
						value="${equipment.description }">
				</div>
				<div class="form-group">
					<label for="inputUserName" style="margin-right: 50px">Status</label>
					<label class="btn btn-success btn-sm"> <input type="radio"
						class="form-check-input" name="status" value="true"
						checked="checked">Ready
					</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <label
						class="btn btn-danger btn-sm"> <input type="radio"
						class="form-check-input" name="status" value="false">Un
						Ready
					</label>
				</div>
				<div class="form-group">
					<label for="select">Select User</label> <select
						class="form-control" name="account" id="select">
						<c:forEach items="${accounts}" var="account">
							<option value="${account.id}">${account.username}</option>
						</c:forEach>
					</select>
				</div>

				<div class="row" align="center">
					<div style="margin-left: 40%">
						<button type="submit" class="btn btn-space btn-primary">Submit</button>
						&nbsp&nbsp&nbsp&nbsp&nbsp <a href="home"
							class="btn btn-space btn-secondary">Cancel</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>






