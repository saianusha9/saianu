<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
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
    
    
    <div class="container">
        <div class="row">
         <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
         <div class="account-wall">
        <div class="panel-heading">
	 <h3 class="panel-title">Registration</h3>
	</div>
	
    
    
    <ul class="nav navbar-nav navbar-right">
<li><form action="logout" id="logout" method=post>
 r
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
  
	</head>
 
	<body><center>
		<div class="container-fluid">
		 <div class="row">
			<fieldset>
				<!-- <legend>Become Member</legend>
		 -->		<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				 
				  <div class="form-group">
				<%-- <a href="${flowExecutionUrl}&_eventId_home">NEW USER</a> --%>
				<sf:form modelAttribute="userBean"><br />
					<sf:label path="name">UserName:</sf:label>
					<div class="input-group">
					<sf:input path="name" class="form-control" />
					</div>
					
					
					
					<!-- to display validation messages -->
						<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="emailid">Email Id: </sf:label>
					<div class="input-group">
					<sf:input path="emailid" class="form-control" />
					</div>
					</div>
					</div>
					</div>
					
					
					</div>
					<div class="container-fluid">
					<div class="row">
			
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="password">password: </sf:label>
					<div class="input-group">
					<sf:input path="password" type="password" class="form-control" />
					</div>
					</div>
					</div>
					<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="address">address: </sf:label>
					<div class="input-group">
					<sf:input path="address" class="form-control" />
					</div>
					</div>
					</div>
					</div>
					</div>
					</div>
					<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="mobile">mobile number: </sf:label>
					<div class="input-group">
      					<sf:input path="mobile" class="form-control"  />
      					</div>
					</div></div>
					</div>
					</div>
					
					</div>
					<!-- <div class="container-fluid">
					<div class="row">
					<div class="col-lg-6">
				  <div class="form-group"> -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_submit" type="submit" value="Register" /><br />
				</sf:form>
			</fieldset>
			</div>
		</div>
		</center>
	</body>
</html>