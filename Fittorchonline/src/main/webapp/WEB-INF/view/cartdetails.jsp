<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>

	<title>List of Products</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
    
</head>
<style>
<%@include file="header.jsp" %>

</style>
<body>

  <div class="container text-center">
  </div>


 
  
<%--    <c:if test="${!empty productList}">  --%>


        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">Products List </span></div>
    <table class="table table-hover">
  <thead>
    <tr>
      <th>Product Id</th>
     <th>Product Name</th>
     <th>Product Description</th>
     <th>Product Price</th>
     <th>Product Category</th>
     <th>Product Supplier</th>
     <th>product image</th>
     
     <th width="100"></th>
     <th width="100"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product">
     <tr>
       <td>${product.pid}</td>
      <td>${product.name}</td>
      <td>${product.description}</td>
      <td>${product.price}</td>
      <td>${product.catname}</td>
      <td>${product.spname}</td>
      <td><img src="<c:url value="${product.img}" />" alt="image" height="100px" width="100px" /></td>
      
      
      
      
      <td><a href="edit?id=${product.pid}" class="btn btn-success 
 
custom-width">Edit</a></td>
      <td><a href="deleteProduct?id=${product.pid}" class="btn btn-danger 
 
custom-width">Delete</a></td>
     </tr>
    </c:forEach> 
    <tbody>
   </table>
   </div>
        <div class="well">
            <a href="form">Add New Product</a>
        </div>
   


</body>
</html>