<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<form:form id="loginF" action="${contextPath}/login" modelAttribute="loginForm">
		<div id="logInModal" class="modal">

			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">

						<div>
							<h4 class="modal-title">Log In With Your Email Id</h4>
						</div>
						<br>

						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="form-group">
							<form:label for="exampleInputEmail1" path="email">Email address</form:label> 
							
							<form:input path="email" type="email" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter email"/>
							<small id="emailHelp" class="form-text text-muted">We'll
								never share your email with anyone else.</small>
						</div>
						<form:label for="exampleInputPassword1" path="password">Password</form:label> 
						<form:input path="password"
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password"/>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Log In</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				</div>
			</div>

		</div>
	</form:form>
</body>
</html>