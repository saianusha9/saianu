<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
	<title>Add Product</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
    
    

   
</head>
<style>
 
 
 
.has-error{
    color:red;
}
 

.well
{
  width:100%;
}
.navbar {
      margin-bottom: 10px;
      border-radius: 0;
    }

.jumbotron {
	  padding-top: 0px;
      padding-bottom: 0px;
      margin-bottom: 0;
    }



body {
    background:url('resources/images/fit9.jpg');
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
    
    
</style>
<body>

  

<%@include file="header.jsp"%>



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
<div class="container">
<div class="well lead">Add Product</div>

  <div class='text center'></div>
  
  <form:form id="registerForm" commandName="prod" method="post"
   action="./addProduct" enctype="multipart/form-data">
   <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Product Name</label>
                <div class="col-md-7">
                    <form:input type="text" path="name" id="productName" class="form-control input-sm"/>
                </div>
            </div>
        </div>
    <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="description">Product Description</label>
                <div class="col-md-7">
                    <form:input type="text" path="description" id="productdescription" class="form-control input-sm"/>
                </div>
            </div>
        </div>    
    <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Product Price</label>
                <div class="col-md-7">
                    <form:input type="text" path="price" id="productprice" class="form-control input-sm"/>
                </div>
            </div>
        </div>
        
     
         <div class="row">
            <div class="form-group col-md-12">
       <label class="col-md-3 control-lable" for="name">Category</label>
        
        <div class="col-md-7">
         <form:select path="catname" cssStyle="width: 150px;">    
       <option value="-1">Select a type</option>
       <c:forEach items="${lstpro}" var="category">
        <option value="${category.catid}">${category.catname}</option>
       </c:forEach>
      </form:select>
     </div>
     </div>
     </div>
     <br>
     <br>
     <div class="row">
            <div class="form-group col-md-12">
       <label class="col-md-3 control-lable" for="name">Supplier</label>
       <div class="col-md-7">
         <form:select path="spname" cssStyle="width: 150px;">    
       <option value="-1">Select a type</option>
       <c:forEach items="${lstsup}" var="supplier">
        <option value="${supplier.spname}">${supplier.spname}</option>
       </c:forEach>
      </form:select>
     </div>
     </div>
    </div>
    
    <div class="row">
            <div class="form-group col-md-12">
       <label class="col-md-3 control-lable" for="name">Select File to Upload</label>
       <div class="col-md-7">
          <input name="file" id="fileupload" type="file"/>
     </div>
     </div>
     </div>
     
     <div class="row">
            <div class="form-group col-md-12">
      
       <div class="col-md-7">
          <form:hidden path="repro" value="${repro}"/>
     </div>
     </div>
     </div>
     
     
     
      <div class="row">
            <div class="text-center">
     <input type="submit" value="Add" class="btn btn-primary btn-sm"/>
    </div>
    </div>
   
  </form:form>
  
  <a href="hf">Click Here to see user List</a>
  <a href="gridlist">Click Here </a>
  <a href="cartlist">Click Here to see cart details </a>
 
  <img src="<c:url value="${repro}"/>" alt="image" height="100px" width="100px" />
 </div>
 
     </body>
</html>