<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css">
<!-- /fonts -->
<!-- css -->
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='resources/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css" media="all" />

<link href="<c:url value='resources/css/trend.css'/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='resources/css/info.css'/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='resources/css/style.css'/>" rel="stylesheet" type="text/css" media="all" />
<!-- /css -->
</head>
<body>
<!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><h1><i>Blog</i></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="index.html">Home</a></li>
				<li><a href="about.html">About Us</a></li>
				<li><a href="service.html">Sign In</a></li>
				<li><a href="blog.html">Sign Up</a></li>li>
			</ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<!-- /navigation -->
<!-- banner section -->
<div id="slider" class="slider-container">
	<ul class="slider">
		<li class="slide">
			<div class="slide-bg">
				<img src="<c:url value='resources/images/banner1.jpg'/>"/>
			</div>
		</li>
		<li class="slide">
			<div class="slide-bg">
				<img src="<c:url value='resources/images/banner2.jpg'/>"/>
			</div>
		</li>
		<li class="slide">
			<div class="slide-bg">
				<img src="<c:url value='resources/images/banner3.jpg'/>"/>
			</div>
		</li>
	</ul>
	
</div>

</body>
</html>