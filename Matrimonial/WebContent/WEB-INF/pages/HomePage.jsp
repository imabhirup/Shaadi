<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Matrimonial</title>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:if test="${registration eq 'done'}">
<div class="reg alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>You have registered successfully.</strong> Please  <a data-toggle="modal"
					href="#logInModal" class="alert-link">Log In.</a>.
</div>
</c:if>
<jsp:include page="header.jsp"></jsp:include>
<div>
 
  <img class="hero-image" alt="/" src="<c:url value="resources/background.jpg"/>"/>
 </div>   
<div>
<form id="searchForm" action="${contextPath}/search">
<!-- Add dropdown -->Add dropdown
<button type="submit" class="btn btn-primary">Search</button>

</form>





</div>

</body>

<script type="text/javascript">
function test(){
    alert();
}
</script>
</html>