<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Notices</title>
</head>
<body>
<h1>SHow Notices</h1>
<sql:query dataSource="jdbc/spring" var="rs">
SELECT * from notices;
</sql:query>
<c:forEach var="row" items="${rs.rows}">
ID: ${row.id} <br />
Name: ${row.name } <br />
</c:forEach>
</body>
</html>