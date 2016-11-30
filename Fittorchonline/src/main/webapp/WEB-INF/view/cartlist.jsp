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
	<title>List of Products</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
</head>
<style>

</style>
<body>

  <div class="container text-center">
  </div>

<%@include file="header.jsp" %>
<%--    <c:if test="${!empty productList}">  --%>

        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">Cart List</span></div>
  <table class="table table-hover">
  <thead>
    <tr>
      <th>Cart Id</th>
      <th>Product Id</th>
     <th>Product Name</th>
     <th>Product Description</th>
     <th>Product Price</th>
     
     <th width="100"></th>
     <th width="100"></th>
    </tr>
    </thead>
    <tbody>
    
    <c:forEach items="${cartList}" var="product">
     <tr>
     	<td>${product.cartid}</td>
       <td>${product.pid}</td>
      <td>${product.name}</td>
      <td>${product.description}</td>
      <td>${product.price}</td>
     </tr>
    </c:forEach> 
    <tbody>
   </table>
   </div>
        <div class="well">
            <a href="form">Add New Product</a>
        </div>
  
<%--    </c:if>  --%>


</body>
</html>