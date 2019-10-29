<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div style="margin-top: 3%; margin-left: 5%; margin-right: 5%">
	<div class="card">
		<h5 class="card-header">Add Equipment Form</h5>
		<div class="card-body">
			<form action="createequipment" method="post" id="basicform"
				modelAttribute="equipment">
				<div class="form-group">
					<label for="inputUserName">Name</label> <input id="inputUserName"
						type="text" name="name" data-parsley-trigger="change" required=""
						placeholder="Enter name" autocomplete="off" class="form-control">
				</div>
				<div class="form-group">
					<label for="inputUserName">Type</label> <input id="inputUserName"
						type="text" name="type" data-parsley-trigger="change" required=""
						placeholder="Enter type" autocomplete="off" class="form-control">
				</div>
				<div class="form-group">
					<label for="inputUserName">Descreption</label> <input
						id="inputUserName" type="text" name="description"
						data-parsley-trigger="change" required=""
						placeholder="Enter descreption" autocomplete="off"
						class="form-control">
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
					<label for="inputUserName">Select User</label> <select
						class="form-control" name="account">
						<c:forEach items="${accounts}" var="account">
							<option value="${account.id}">${account.username}</option>
						</c:forEach>
					</select>
				</div>

				<div class="row">
					<p align="center" style="margin-left: 40%">
						<button type="submit" class="btn btn-space btn-primary">Submit</button>
						&nbsp&nbsp&nbsp <a href="home" class="btn btn-space btn-secondary">Cancel</a>
					</p>
				</div>
			</form>
		</div>
	</div>
</div>







