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
	<title>Add Product</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>

</head>
<style>
 
 
.floatRight{
    float:right;
    margin-right: 160px;
    margin-top:20px;
}
 
.has-error{
    color:red;
}
 
.generic-container {
  position:fixed;
  width:55%;
  margin-left: 300px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: white;
  border: 1px solid #ddd;
  border-radius: 7px;
  box-shadow: 0 0 30px blue;
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


</style>
<body>

  <div class="container text-center">
  </div>

<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
     
	  <a class="navbar-brand" href="#"><i>FITTORCH</i></a>
    </div>
     <ul class="nav navbar-nav">
       <li class="active"><img src="<c:url value='resources/images/logo1.jpg'/>"style="width: 100px;height: 45px;"/></li>
      
          
          </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#"><i>Home</i></a></li>
		<li><a href="aboutus"><i>About Us</i></a></li>
		<li><a href="form"><span class="glyphicon glyphicon-log-in"></span><i>Sign In</i></a></li>
        <li><a href="signup"><span class="glyphicon glyphicon-user"></span><i>Sign Up</i></a></li>
      </ul>
  </div>
</nav>



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
<div class="generic-container">
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
            <div class="form-actions floatRight">
     <input type="submit" value="Add" class="btn btn-primary btn-sm"/>
    </div>
    </div>
   
  </form:form>
  
  <a href="hf">Click Here to see user List</a>
 
  </div>
  
  <img src="<c:url value="${repro}"/>" alt="image" height="100px" width="100px" />
  
  </body>
</html>