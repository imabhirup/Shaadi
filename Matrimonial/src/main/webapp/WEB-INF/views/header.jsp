<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="sourceFile.jsp"></jsp:include>
</head>
<body class="text-center">
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	
	
	
	<div class="cover-container container-fluid">
    <div class="row home">
      <div class="col-sm-6 col-12 cover">
       <h1 class='heading heading-big'>Welcome to <a class="brand">Vyah</a></h1><hr><br><br><br>
        <p id="typer"></p>
        <br><br>
        <a href="#logInModal" class="btn btn-lg btn-secondary" data-toggle="modal">Let's get started</a>
        <br><br>
        <a href="#about"><i class="fas fa-angle-double-down fa-3x faa-bounce animated"></i></a>
      </div>
      <div class="col-sm-6 col-12">
        <div class="search">
          <h3 class="heading">I am looking for..</h3><br>
        <form class="search-form">
          <div class="form-group">
            <label for="gender">Gender:</label>
          <select class="form-control" id="gender">
          <option>Male</option>
          <option>Female</option>
          </select>
          </div>
          <div class="form-group">
            <label for="religion">Religion:</label>
          <select class="form-control" id="religion">
          <option>Hindu</option>
          <option>Muslim</option>
          <option>Christian</option>
          <option>Sikh</option>
          <option>Jain</option>
          <option>Buddhist</option>
          </select>
          </div>
          <div class="form-group">
            <label for="language">Language:</label>
          <select class="form-control" id="language">
          <option>English</option>
          <option>Hindi</option>
          <option>Bengali</option>
          <option>Marathi</option>
          <option>Assamese</option>
          <option>Odia</option>
          <option>Gujrati</option>
          <option>Nepali</option>
          <option>Tamil</option>
          <option>Telugu</option>
          <option>Punjabi</option>
          <option>Malyalam</option>
          <option>Kannada</option>
          </select>
          </div>
          <br>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      </div>
      </div>

      <div class="row text-center about" id="about">
      <div class="col-sm-12"> 
      <div class="row"> 
      <h1>Why <a class="brand">Vyah</a>?</h1>
      <br>
      <div class="col-sm-4"><h4>Secure</h4><hr>
      <p>Lorem ipsum dolor...</p>
      </div>
      <div class="col-sm-4"><h4>Simple</h4><hr>
      <p>Lorem ipsum dolor...</p>
      </div>
      <div class="col-sm-4"><h4>Verified</h4><hr>
      <p>Lorem ipsum dolor...</p>
      </div>
      </div>
      </div>
      </div>

      <div class="row text-center testimonials">
        <br>
        <p id="reviews">"Lorem Ipsum Dolor....."</p>
        <p id="reviewer">John Doe</p>
      </div>

      <div class="row text-center footer">
        <div class="col-sm-3"><p class="brand brand-footer">Vyah</p></div>
        <div class="col-sm-3">
          <ul>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Contact Us</a></li>
          </ul>
        </div>
        <div class="col-sm-3">
          <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Terms & Conditions</a></li>
          </ul>
        </div>
        <div class="col-sm-3">           
          <ul>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">BG Verification</a></li>
          </ul>
        </div>
      </div>

      <div class="row secondary-footer">
        <div class="col-sm-6">
          © 2018 Vyah pvt. ltd. All rights reserved.
        </div>
        <div class="col-sm-6">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
        </div>
        </div>
      </div>

	
	
	
	
	<jsp:include page="LoginModal.jsp"></jsp:include>
	<jsp:include page="RegisterPageModal.jsp"></jsp:include>


</body>
<script type="text/javascript">

var i = 0
var txt = "Let's go find your soulmate!"
var speed = 70

function typeWriter() {
    if (i < txt.length) {
    document.getElementById("typer").innerHTML += txt.charAt(i)
    i++
    setTimeout(typeWriter, speed)
    }
}
typeWriter()

//adding smooth scrolling
$(document).ready(function(){
$("a").on('click', function(event) {
if (this.hash !== "") {
  event.preventDefault();
  var hash = this.hash;
  $('html, body').animate({
    scrollTop: $(hash).offset().top
  }, 800, function(){
    window.location.hash = hash;
  });
}
});
});

</script>

</html>
