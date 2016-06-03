<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/static/lib/bootstrap/js/bootstrap.min.js"></script>
">
<title>Create Account</title>
</head>
<body>
<fmt:message key="user.password"></fmt:message>
	<sf:form class="form-horizontal"
		action="${pageContext.request.contextPath}/bulkuser"
		commandName="user2">
		<fieldset>

			<!-- Form Name -->
			<legend>Registration</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="username">User
					Name:</label>
				<div class="col-md-4">
					<sf:input id="userList[0].username" name="userList[0].username" path="username"
						placeholder="" class="form-control input-md" type="text" />
					<sf:errors path="username" cssClass="alert-danger"></sf:errors>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Email:</label>
				<div class="col-md-4">
					<sf:input id="userList[0].email" name="userList[0].email" path="email" placeholder=""
						class="form-control input-md" type="text" />
					<sf:errors path="email" cssClass="alert-danger"></sf:errors>
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Password:</label>
				<div class="col-md-4">
					<sf:input id="userList[0].password" path="password" name="userList[0].password"
						placeholder="" class="form-control input-md" type="password" />
					<sf:errors path="password" cssClass="alert-danger"></sf:errors>
				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="confirmpassword">Confirm
					Password:</label>
				<div class="col-md-4">
					<input id="userList[0].confirmpassword" name="userList[0].confirmpassword" placeholder=""
						class="form-control input-md" type="password">

				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="submit"></label>
				<div class="col-md-4">
					<button id="submit" name="submit" class="btn btn-primary">Submit</button>
				</div>
			</div>

		</fieldset>
	</sf:form>
</body>
</html>