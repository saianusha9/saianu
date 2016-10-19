<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> User Details</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
 <link  href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet"/> 
 <link href="<c:url value='/resources/css/reset.css'/>" rel="stylesheet"/>
 
 <script>
  var h=${conjs};
  angular.module('sai',[]).controller('FitnessController',function($scope)
 		{
 			$scope.pd=h;
 		});
  </script>
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

   <%@include file="header.jsp" %>

<div ng-app="sai" ng-controller="FitnessController">

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
      						<th>product category<th>
      						<th>product supplier<th>
      						<th>product image</th>
      						<th>Edit</th>
      						<th>Delete</th>
    					</tr>
  					 </thead>
				</table>
			  </div>
			  <div  class="tbl-content">
			    <table cellpadding="0" cellspacing="0" border="0">
                     
                     <tbody>

			
				<tr ng-repeat="user in pd | filter:test">
					<td>{{user.pid}}</td>
					<td>{{user.name}}</td>
					<td>{{user.description}}</td>
					<td>{{user.price}}</td>
					<td>{{user.catname}}</td>
					<td>{{user.spname}}</td>
					<td><img  src="<c:url value="${repro}"/>" alt="image" height="100px" width="100px" /></td>
					<td><a href="edit?id={{user.pid}}">Edit</a></td>
					<td><a href="deleteProduct?id={{user.pid}}">Delete</a></td>
				</tr>
				</tbody>
			</table>
			</div>
		   </section>
		   

		<%--    </c:if>  --%>


		<a href="form">Click Here to add new User</a>
		</div>
	`
</body>
</html>