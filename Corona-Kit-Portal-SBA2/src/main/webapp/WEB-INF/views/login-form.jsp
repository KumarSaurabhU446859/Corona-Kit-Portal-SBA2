<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CPK - Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>
	
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  		<!-- Toggler/collapsibe Button -->
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    		<span class="navbar-toggler-icon"></span>
  		</button>

  		<!-- Navbar links -->
  		<div class="collapse navbar-collapse" id="collapsibleNavbar">
    		<ul class="navbar-nav"> 
    			<li class="nav-item">
            		<a class="navbar-brand" href="${pageContext.request.contextPath }/">CPK</a>
        		</li>
    			<li class="nav-item">
	      	 		<a class="nav-link" href="${pageContext.request.contextPath }/custom-login">Sign In</a>
	    		</li>     
    		</ul>
  		</div>
	</nav>
	
	<section class="container-fluid p-4">
		<h3>Log In</h3>
		<hr/>
		<form action="${pageContext.request.contextPath}/login" method="POST">
				<c:if test="${param.error ne null}">
					Invalid Credentials! Access Denied!
				</c:if>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-group">
					<label>User Name: <input type="text" name="unm" class="form-control"/></label>
				</div>
				<div class="form-group">
					<label>Password: <input type="password" name="pwd" class="form-control"/></label>
				</div>
				<div class="form-group">
					<button class="btn pull-right btn-primary">Sign In</button>
				</div>
		</form>
	</section>
	<br/>
	<br/> 
	<hr/>
	<jsp:include page="footer.jsp" />
</body>
</html>