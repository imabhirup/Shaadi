<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="sourceFile.jsp"></jsp:include>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="bg-light">
		<span>1234567890</span>&nbsp; | <span><a
			href="mailto:test@mail.com">test@mail.com</a></span>
	</div>
	 
	<%-- <img alt="/" src="<c:url value="resources/holdingHands.jpg"/>"/> --%>
	<div class="bs-component">
              <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <a class="navbar-brand" href="${contextPath }/homepage"><img alt="Shaadi Logo" src=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse mr-sm-2" id="navbarColor01">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="#">Login <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Register</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Search Options</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Membership</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Contact Us</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Help</a>
                    </li>
                  </ul>
                </div>
              </nav>
            </div>
	
	
</body>
</html>