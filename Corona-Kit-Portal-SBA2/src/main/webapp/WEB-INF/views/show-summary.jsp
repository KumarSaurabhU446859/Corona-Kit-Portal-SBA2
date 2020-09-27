<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CPK - Summary</title>
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
               			<a class="nav-link" href="${pageContext.request.contextPath}/user/home">Home</a>
		          	</li>
			      	<li class="nav-item">
				       <a class="nav-link" href="${pageContext.request.contextPath}/user/show-list">Products List</a>
				    </li>
				    <li class="nav-item">
				       <a class="nav-link" href="${pageContext.request.contextPath}/user/show-cart">Cart-Added Products</a>
				    </li>
				    <li class="nav-item">
			      	  <a class="nav-link" href="${pageContext.request.contextPath}/logout">Sign Out</a>
			      	</li>     
    		</ul>
  		</div>
	</nav>
	<section class="container-fluid p-4">
		<h2 class="jumbotron" align="center">Order Summary</h2>
		
		<div class="alert alert-success">
			<h5>Congratulations!! Your Order placed with Order ID ${OrderID}</h5>
		</div>
		<div class="alert alert-info">
			<h4>User Details</h4>
		</div>
		<section class="container-fluid p-4">
			<div>User Name: ${username}</div>
			<div>Email Id: ${email}</div>
			<div>Contact Number: ${contactnumber}</div>
		</section>
		<br/>
		<div class="alert alert-info">
			<h4>Shipping Address</h4>
		</div>
		<section class="container-fluid p-4">
			<div>Address Line1: ${Address1}</div>
			<div>Address Line2: ${Address2}</div>
			<div>City: ${City}</div>
			<div>State: ${State}</div>
			<div>Pin Code: ${PinCode}</div>
		</section>
		<br/>
		<div class="alert alert-info">
			<h4>Product Summary</h4>
		</div>
		<table class="table table-striped table-hover">  
			<tr>  
				<th>Corona Kit Id</th>  
				<th>Product Id</th>  
				<th>Product Name</th>  
				<th>Quantity</th>  
				<th>Cost</th>   
			</tr>  
			<c:forEach items="${kitdetails}" var="kitdetail">  
			<tr>  
				<td>${kitdetail.coronaKitId }</td>  
				<td>${kitdetail.productId}</td>  
				<td>${kitdetail.productFullName}</td>  
				<td>${kitdetail.quantity }</td>  
				<td>${kitdetail.amount}</td>               
			</tr>  
			</c:forEach>  
		</table> 
		<br/>
		<div class="alert alert-success">
			<h4>Total Cost: ${Totalamount} INR</h4>
		</div>
		<br/>
	</section>
	<br/>
	<br/> 
	<hr/>
	<jsp:include page="footer.jsp" />
</body>
</html>