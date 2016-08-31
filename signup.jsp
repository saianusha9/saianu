<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<title>signup</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link  href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
  <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
  <style type="text/css">
body {
background:url('resources/images/reg.jpg');
background-size:cover;
background-repeat:no-repeat;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
</style>

</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FitTorch</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"> </a></li>
      
          
          </ul>
      </li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="home">Home</a></li>
          <li><a href="aboutus"><span class="glyphicon glyphicon-aboutus"></span> About Us</a></li>
          <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<div class="container-fluid"></div>
<div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 60%;">
    <span class="sr-only">60% Complete</span>
  </div>
</div><i class="glyphicon glyphicon-align-center"></i><img src="//placehold.it/50x50"><div class="container">
    <div class="row">
        <div class="col-md-6">
            <fieldset>
                <div id="legend">
                    <legend class="">Register</legend>
                </div>
                <div class="control-group">
                    <label label-default="" class="control-label label-default" for="username">Username</label>
                    <div class="controls">
                        <input type="text" id="username" name="username" placeholder="" class="form-control input-lg">
                        <p class="help-block">Username can contain any letters or numbers, without spaces</p>
                    </div>
                </div>
                <div class="control-group">
                    <label label-default="" class="control-label label-default" for="email">E-mail</label>
                    <div class="controls">
                        <input type="email" id="email" name="email" placeholder="" class="form-control input-lg">
                        <p class="help-block">Please provide your E-mail</p>
                    </div>
                </div>
                <div class="control-group">
                    <label label-default="" class="control-label label-default" for="password">Password</label>
                    <div class="controls">
                        <input type="password" id="password" name="password" placeholder="" class="form-control input-lg">
                        <p class="help-block">Password should be at least 6 characters</p>
                    </div>
                </div>
                <div class="control-group">
                    <label label-default="" class="control-label label-default" for="password_confirm">Password (Confirm)</label>
                    <div class="controls">
                        <input type="password" id="password_confirm" name="password_confirm" placeholder=""
                        class="form-control input-lg">
                        <p class="help-block">Please confirm password</p>
                    </div>
                </div>
                <div class="control-group">
                    <!-- Button -->
                    <div class="controls">
                        <button class="btn btn-success">Register</button>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    </div>


</body>
</html>
