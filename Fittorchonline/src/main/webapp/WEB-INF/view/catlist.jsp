
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>List of Category</title>
    </head>
<style>
 body {
   
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
</style>
<body>

<%@include file="header.jsp"%>
<center>
<div style="color: #f05c79; font-size: 30px">List of Category</div>
<table border="1" bgcolor="black" width="600px">
  
    <tr style="background-color: #66d9ff; color: black; text-align: center;"
				height="40px">
      <td>Category Id</td>
     <td>Category Name</td>
     <td>Edit</td>
	<td>Delete</td>
     </tr>
    
    
    <c:forEach items="${categoryList}" var="category">
<!--      <table class="table table-hover"> -->
<!--   <thead> -->
<!--     <tr> -->
<!--       <th>Cart Id</th> -->
<!--       <th>Product Id</th> -->
<!--      <th>Product Name</th> -->
<!--      <th>Product Description</th> -->
<!--      <th>Product Price</th> -->
     
<!--      <th width="100"></th> -->
<!--      <th width="100"></th> -->
<!--     </tr> -->
<!--     </thead> -->
<!--     <tbody> -->
    
<%--     <c:forEach items="${cartList}" var="product"> --%>
<!--     <table border="1" bgcolor="black" width="600px"> -->
<!--      <tr> -->
<%--      	<td>${product.cartid}</td> --%>
<%--        <td>${product.pid}</td> --%>
<%--       <td>${product.name}</td> --%>
<%--       <td>${product.description}</td> --%>
<%--       <td>${product.price}</td> --%>
<!--      </tr> -->
<%--     </c:forEach>  --%>
<!--     <tbody> -->
<!--    </table> -->
     <tr style="background-color: #F0FFFF; color: black; text-align: center;"
					height="30px">
       <td>${category.catid}</td>
      <td>${category.catname}</td>
      
     
      <td><a href="catedit?id=${category.catid}">Edit</a></td>
      <td><a href="deleteCategory?id=${category.catid}">Delete</a></td>
     </tr>
     
    </c:forEach> 
   
   </table>
   <%--    </c:if>  --%>
   
            <a href="catform">Add New Category</a>
     </center>



</body>
</html>