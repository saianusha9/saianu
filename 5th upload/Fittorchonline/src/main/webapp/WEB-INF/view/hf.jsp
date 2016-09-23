<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> User Details</title>
 <link  href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet"/> 
 <link href="<c:url value='/resources/css/reset.css'/>" rel="stylesheet"/>
</head>
<style>
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
  background-color: rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}

/* demo styles */

@import url(http://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}


</style>
<body>

    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FitTorch</a>
    </div>
    <ul class="nav navbar-nav">
       <li class="active"><img src="<c:url value='resources/images/logo1.jpg'/>"style="width: 100px;height: 45px;"/></li>
      
          
          </ul>
      </li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="#">Home</a></li>
          <li><a href="aboutus"><span class="glyphicon glyphicon-aboutus"></span> About Us</a></li>
          <li><a href="form"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
           <li><a href="contactus"><span class="glyphicon glyphicon-contactus"></span> Contact us</a></li>
    </ul>
  </div>
</nav>



			<section> <!--for demo wrap-->
				<h1>List Of Products</h1>  
			  <div  class="tbl-header">
				<table cellpadding="0" cellspacing="0" border="0">
 					 <thead>
    					<tr>
      						<th>product</th>
      						<th>product name</th>
      						<th>product description</th>
      						<th>product price</th>
      						<th>Edit</th>
      						<th>Delete</th>
    					</tr>
  					 </thead>
				</table>
			  </div>
			  <div  class="tbl-content">
			    <table cellpadding="0" cellspacing="0" border="0">
                     <c:forEach items="${productList}" var="user">
                     <tbody>

			
				<tr>
					<td>${user.pid}</td>
					<td>${user.name}</td>
					<td>${user.description}</td>
					<td>${user.price}</td>

					<td><a href="edit?id=${user.pid}">Edit</a></td>
					<td><a href="deleteProduct?id=${user.pid}">Delete</a></td>
				</tr>
				</tbody>
			</c:forEach>
			</table>
			</div>
		   </section>

		<%--    </c:if>  --%>


		<a href="form">Click Here to add new User</a>
	<footer>
<nav class="navbar navbar-inverse">
<div class="container">
<div class="navbar-footer">
  <div class="row">
  <hr>
    <div class="col-lg-12">
      <div class="col-md-8">
           
      </div>
      <div class="col-md-4">
        <p class="text-success pull-right">© 2016 Fittorch. All rights reserved</p>
      </div>
    </div>
  </div>
</div>
</div>

</nav>
</footer> 
	
	
	

</body>
</html>