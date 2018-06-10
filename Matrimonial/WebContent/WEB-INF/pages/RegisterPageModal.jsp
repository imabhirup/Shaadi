<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="resources/matrimonial.css"/>"/>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<form:form action="${contextPath}/register"
		modelAttribute="registerForm" method="post">
		<div id="registerInModal" class="modal">

			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">

						<div>
							<h4 class="modal-title">Let's set up your account, while we
								find Matches for you!</h4>
						</div>
						<br>

						<button id="closeRegisterFirst" type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="form-group">
							<label for="exampleInputEmail1">Enter your email id</label> <input
								type="text" class="form-control" path="email"
								aria-describedby="emailHelp" placeholder="Enter email" /><small
								id="emailHelp" class="form-text text-muted">We'll never
								share your email with anyone else.</small>
						</div>
						<div class="form-group">
						<label for="exampleInputPassword1">Create a password</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password">
						</div>
						<div class="form-group">
							<label for="exampleSelect1">Create Profile For</label> <select
								class="form-control" id="exampleSelect1">
								<c:forEach items="${profile}" var="profile">
									<option value="${profile}">${profile}</option>
								</c:forEach>
							</select>
						</div>
						
                    <c:forEach items="${gender}" var="gender">
                    
                        <input type="radio" name="gender"  value="${gender}" checked="">
                        ${gender}
                      
                    </c:forEach>
                    
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
					<button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#registerInModalTwo">Next</button>
						<!-- <button type="submit" class="btn btn-primary">Sign Up</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button> -->
					</div>

				</div>
			</div>

		</div>
		
		<!-- second modal -->
		<div id="registerInModalTwo" class="modal">

			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">

						<div>
							<h4 class="modal-title">Great! Now some basic details</h4>
						</div>
						<br>

						<button id="closeRegisterSec" type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<span class="form-group displayIn">
							<label for="exampleInputEmail1">Enter your name</label> </span>
						<div class="form-group">	<input
								type="text" class="matriRegister md-col-6" path="firstName"
								 placeholder="First Name" />
								
							<input
								type="text" class="matriRegister md-col-6" path="lastName"
								 placeholder="Last Name" />	
						</div>
                    
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
					<button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#next">Next</button>
						<!-- <button type="submit" class="btn btn-primary">Sign Up</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button> -->
					</div>

				</div>
			</div>

		</div>
		
		
		
		

	</form:form>
</body>

<script type="text/javascript">
$(document).ready(function(){
$( "#registerInModal" ).click(function() {
	 $("#registerInModal .close").click();
	});
});
</script>

</html>