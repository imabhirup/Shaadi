<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Matrimonial</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->

</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:if test="${registration eq 'done'}">
<div class="reg alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>You have registered successfully.</strong> Please  <a data-toggle="modal"
					href="#logInModal" class="alert-link">Log In.</a>
</div>
</c:if>

<c:if test="${registration eq 'duplicate'}">
<div class="alert alert-info">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>User is already registered.</strong>Please  <a data-toggle="modal"
					href="#logInModal" class="alert-link">Log In.</a>
</div>
</c:if>

<jsp:include page="header.jsp"></jsp:include>

<!-- added carousel -->




</body>

<script type="text/javascript">

</script>
</html>