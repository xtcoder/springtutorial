<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/static/lib/bootstrap/js/bootstrap.min.js"></script>

<title>Login Here</title>
</head>
<body>

	<form class="form-horizontal"
		action='${pageContext.request.contextPath}/j_spring_security_check'
		method='POST'>
		<fieldset>

			<!-- Form Name -->
			<legend>Login</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="j_username">User
					Name:</label>
				<div class="col-md-4">
					<input id="j_username" name="j_username" placeholder=""
						class="form-control input-md" type="text">

				</div>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="j_password"></label>
				<div class="col-md-4">
					<input id="j_password" name="j_password" placeholder=""
						class="form-control input-md" type="password">

				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="Remember Me ">Rememebr me</label>
				<div class="col-md-4">
					<input id="_spring_security_remember_me" name="_spring_security_remember_me" 
						 checked="checked" type="checkbox">

				</div>
			</div>
			
			<div class="alert-danger">
				<c:if test="${param.error != null}">
					Incorrect user name & Password
				</c:if>
			</div>
			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="submit"></label>
				<div class="col-md-4">
					<button id="submit" name="submit" class="btn btn-primary">Submit</button>
				</div>
			</div>

		</fieldset>
	</form>
<p><a href='<c:url value='/registration'></c:url>'>Register Here</a></p>

</body>
</html>