<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Signup</title>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
    <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <style>
  body {
    background:url('resources/images/weights.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    }
   .account-wall
   {
   
   background-color:  rgba(102, 102, 102,0.5);
   }
   .form-group input[type="text"]{
   color:white;
   background: transparent;
   }
   
   
   
   .form-group input[type="password"]{
   background: transparent;
   color:white;
   }
   
 
  
  </style>
</head>
<body  style="background-color:#ffffff;">


  <%@include file="header.jsp"%>


<div class="container">
        <div class="row">
         <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
         <div class="account-wall">
        <div class="panel-heading">
	 <h3 class="panel-title">Registration</h3>
	</div>
	

<div class="form-group">
	<input type="text" name="fullname" id="fullname" class="form-control input-sm" placeholder="Enter your Fullname">
</div>

<div class="form-group">
	<input type="text" name="username" id="username" class="form-control input-sm" placeholder="Enter your Username">
</div>

<div class="form-group">
	<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Enter the Password">
</div>

<div class="form-group">
	<input type="text" name="email" id="email" class="form-control input-sm" placeholder="Enter the Email Address">
</div>

<div class="form-group">
	<input type="text" name="contactno" id="contactno" class="form-control input-sm" placeholder="Enter the Contact no">
</div>

<div class="form-group">
	<input type="text" name="addr" id="addr" class="form-control input-sm" placeholder="Enter the Address">
</div>

<div class="form-group">
	<input type="text" name="city" id="city" class="form-control input-sm" placeholder="Enter the City">
</div>

<div class="form-group">
	<input type="text" name="state" id="state" class="form-control input-sm" placeholder="Enter the State">
</div>

<div class="form-group">
	<input type="text" name="country" id="country" class="form-control input-sm" placeholder="Enter the Country">
</div>

<div class="form-group">
	<input type="text" name="postal" id="postal" class="form-control input-sm" placeholder="Enter the Postal code">
</div>

</div>

<div class=" text-center">
<a class="btn btn-success" href="Signin" role="button">Submit</a>
<a class="btn btn-danger" href="Home" role="button">Cancel</a>
   </div>


</div>
</div>
   </div>
   


<%@include file="footer.jsp"%>

</body>
</html>
