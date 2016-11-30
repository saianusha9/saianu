<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Fitness</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>




</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" ><img src="<c:url value='resources/images/logo1.jpg'/>" style="width:85px;height:30px;"/></a>
    </div>
    
    
      
<div class="collapse navbar-collapse">
 <ul class="nav navbar-nav ">
 <li><a>FITTORCH</a></li>
      <li><a href="index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
        
         
      <li><a href="form"><span class="glyphicon glyphicon-link"></span>Product</a></li>
      <li><a href="catform"><span class="glyphicon glyphicon-link">Categories</a></li>
      <li><a href="spform"><span class="glyphicon glyphicon-link">Supplier</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="login"><span class="glyphicon glyphicon-user"></span>login</a></li>
      <li><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
     
      
      <li><a href="gridlist"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a>
      
    </ul>
</div>
</div>
</nav><br><br><br>
<div class="img">
<c:forEach items="${Products}" var="p">
<form commandName="prod">

 
    <img src="<c:url value="${p.repro}"/>" width="300" height="200">
  </a>
  <div class="desc">${p.price}</div>
  <div class="row" align="left"><button class="btn btn-default"><a commandName="prod" href="addToCart?id=${p.pid}">To Cart</a> </button></div>
</div>
</form>
</c:forEach>


</body>
</html>


    