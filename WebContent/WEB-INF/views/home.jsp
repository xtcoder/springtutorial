<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/static/lib/bootstrap/js/bootstrap.min.js"></script>
<title>Home Page Habibur</title>
</head>
<body>
	<div class="container">
		<h1>This is Home Page</h1>
		<a href="${pageContext.request.contextPath}/create">Create Notice</a>
		<br /> <a href="${pageContext.request.contextPath}/show">Show
			Notice</a> <br /> <a
			href="${pageContext.request.contextPath}/registation">User
			REgistration</a> <br /> 
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a
			href="${pageContext.request.contextPath}/admin">Admin</a> <br />
			</sec:authorize>
		<p><a href="<c:url value='/registration'></c:url>">Register Here</a></p>
		
		<sec:authorize access="!isAuthenticated()">
		<a href="${pageContext.request.contextPath}/login">Login</a>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
		<a href="${pageContext.request.contextPath}/j_spring_security_logout">Logout</a>
		</sec:authorize><br><br>
		<a href="${pageContext.request.contextPath}/dsi">Go to DSi</a>
	</div>
</body>
</html>