

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html>
<head>
<script src="<c:url value='resources/js/jquery-1.11.0.min.js'/>"></script>
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/style.css'/>" rel="stylesheet" type="text/css" media="all" />	

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='http://fonts.googleapis.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<c:url value='resources/js/move-top.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/js/easing.js'/>"></script>
<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>	
<!-- start menu -->
<script src="<c:url value='resources/js/simpleCart.min.js'/>"> </script>
<script type="text/javascript" src="<c:url value='resources/js/memenu.js'/>"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	




<link href="<c:url value='resources/css/memenu.css'/>" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>

<body>  
	<div class="fit"> 
		<div class="container"> 
			<div class="product-one">
				<div class="col-md-3 product-left"> 
					<div class="p-one simpleCart_shelfItem">	
					<c:forEach items="${productList}" var="user">						
							<a href="single.html">
								<img src="<c:url value="${user.repro}" />" alt="image" height="238px" width="248px" />
								
							</a>
						<h4>${user.name}</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">${user.price}</span></a></p>
					</c:forEach> 
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	<!--end-footer-text-->	
</body>

</body>
</html>