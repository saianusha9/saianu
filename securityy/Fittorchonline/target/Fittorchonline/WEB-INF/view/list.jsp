<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> User Details</title>
</head>
<body>
 <center>

  <div style="color: teal; font-size: 30px"> User
   Details</div>
   

  <c:if test="${!empty productList}">
  <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
      <td>product id</td>
     <td>product name</td>
     <td>product description</td>
     <td>product price</td>
     <td>Image</td>
     <td>Edit</td>
     <td>Delete</td>
    </tr>
    
    <c:forEach items="${productList}" var="user">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      <tr ng-repeat="product in pd | filter:test">
       <td><c:out value="{{user.pid}}" />
      </td>
      <td><c:out value="{{user.name}}" />
      </td>
      <td><c:out value="{{user.description}}" />
      </td>
      <td><c:out value="{{user.price}}" />
      </td>
      
     
      <td><a href="edit?id={{user.id}}">Edit</a></td>
      <td><a href="deleteProduct?id={{user.id}}">Delete</a></td>
     </tr>
    </c:forEach>
    
   </table>
  </c:if>


  <a href="form">Click Here to add new User</a>
 </center>
</body>
</html>