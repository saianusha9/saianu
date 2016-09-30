<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link  href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
  <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
<style type="text/css">
body {
background:url('resources/images/g9.jpg');
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
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 300px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}

</style>
</head>
<body>
<%@include file="header.jsp"%>
<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
<form action="javascript:void(0);" method="get">
<fieldset>
<p><input type="text" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></p>
<p><input type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>

<a class="btn btn-danger" href="Home" >Forgot password?</a>
<p><input type="submit" value="Login"></p>
</fieldset>
</form>


</div> <!-- end login -->

<%@include file="footer.jsp"%>


</body>
</html>
