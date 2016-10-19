<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<title>FITTORCH</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link  href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet"/>  
 <script src="<c:url value='/resources/js/jquery-2.2.3.min.js'/>"/></script>
 <script src="<c:url value='/resources/js/bootstrap.js'/>"/></script>
  <style>
  
  body {
  background:url('resources/images/wHd48NC.jpg');
  background-size:cover;
  background-repeat:no-repeat;
  }

font-family: 'Nunito', sans-serif;
color: #FAF3BC;


}

a {
    color: #00;
    text-decoration: none;
}
 
  .carousel-inner > .item > img, 
.carousel-inner > .item > a > img{
width: 100%; /* use this, or not */
margin: auto;}
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
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
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
<li><a href="adminlogin"><span class="glyphicon glyphicon-admin-log-in"></span> ADMIN</a></li>

  						
                           <li><a href="memberShip"><span class="glyphicon glyphicon-user-name"></span> SIGNUP</a></li>
<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>

     </ul>
</div>
</div>
</nav>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
     <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      
   
     
        <img src="<c:url value='resources/images/efx.jpg'/>"alt="fitgrip" width="797" height="557">
      </div>

      <div class="item">
      
        <img src="<c:url value='resources/images/fitt5.jpg'/>" alt="fitness" width="764" height="445">
      </div>
    
      <div class="item">
        <img src="<c:url value='resources/images/g3.jpg'/>"alt="FitNSafe" width="722" height="441">
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/fit6.jpg'/>" alt="Fit" width="797" height="448">
      </div>
      
       <div class="item">
        <img src="<c:url value='resources/images/fit1.jpg'/>" alt="Fit" width="797" height="448">
      </div>
      
       <div class="item">
        <img src="<c:url value='resources/images/fit11.jpg'/>" alt="Fit" width="797" height="448">
      </div>
    </div>

 
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  <script>
  $('.carousel').carousel({
	  interval:2000
  })
  
  </script>
<%@include file="footer.jsp"%>

</body>
</html>
  