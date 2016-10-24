<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8">
		<title>Login</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
 <style>
body{
 background:url('resources/images/g9.jpg');
  background-size:cover;
  background-repeat:no-repeat;
}
</style>
 </head>
<body style="background-color:#332C2F";>

    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" ><img src="<c:url value='resources/images/logo1.jpg'/>" style="width:85px;height:30px;"/></a>
    </div>
    
    
      
<div class="collapse navbar-collapse">
 <ul class="nav navbar-nav ">
 <li><a>FITTORCH</a></li>
      <li><a href="index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li><a href="aboutus"><span class="glyphicon glyphicon-globe"></span>About Us</a></li>   
         
      <li><a href="form"><span class="glyphicon glyphicon-link"></span>Product</a></li>
      <li><a href="catform"><span class="glyphicon glyphicon-link">Categories</a></li>
      <li><a href="spform"><span class="glyphicon glyphicon-link">Supplier</a></li>
       <li><a href="contact"><span class="glyphicon glyphicon-pen">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li><a href="logiin"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
      <li><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>login</a></li>
      <li><a href="gridlist"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
<li><form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
              <h2>Welcome : ${pageContext.request.userPrincipal.name} |
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h2> 
                 </c:if> 
</li>	


     </ul>
</div>
</div>
</nav>
 <center>
<div class="container">
    <div class="row">
        <form class="loginForm"   action="<c:url value="/login " />" method="post">
           <c:if test="${not empty error}">
           
           
                <h2><left>Enter Details</left></h2>
        
                <div class="error" style="color: red;">${error}</div>
                </c:if>          

          <c:if test="${not empty msg }">
<%--           <div class="msg">${msg}</div> --%>
          </c:if>
            
          <div class="form-group">
                    <label for="InputName">User Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="username" id="InputName" placeholder="User Name" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputMessage">Password</label>
                    <div class="input-group">
<input type="password" class="form-control" name="password" id="InputName" placeholder="password" required>
      </div>
                </div>
                <input type="submit" name="submit" id="submit" value="submit" class="btn btn-info">
 <input type="submit" name="submit" id="submit" value="cancel" class="btn btn-danger">
            </div>
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
<br>
<div style="color:white;">${msg}</div>
        </form>
        </center> 
</body>
</html>