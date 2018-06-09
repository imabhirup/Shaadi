<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div>
<span>1234567890</span>&nbsp; | <span><a href="mailto:test@mail.com">test@mail.com</a></span>
</div>
<div>
<h4><a href="${contextPath }/homepage"><img alt="Shaadi Logo" src=""></a>&nbsp;
	<a href="${contextPath }/homepage">Home</a>&nbsp;
	<a href="${contextPath }/login">Login</a>&nbsp;
	<a href="${contextPath }/homepage">Register</a>&nbsp;
	<a href="${contextPath }/homepage">Search Options</a>&nbsp;
	<a href="${contextPath }/homepage">Membership</a>&nbsp;
	<a href="${contextPath }/homepage">Contact Us</a>&nbsp;
	<a href="${contextPath }/homepage">Help</a></h4>&nbsp;
</div>
</body>
</html>