<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Home</title>
	<tiles:insertAttribute name="cssfile" />
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="menu" />
	<div class="dashboard-wrapper">
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="staticfooter" />
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>