<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<title>Contact Us</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link  href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet"/>  
 <script src="<c:url value='/resources/js/jquery-2.2.3.min.js'/>"/></script>
 <script src="<c:url value='/resources/js/bootstrap.js'/>"/></script>
  

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
                font-family:Verdana, Arial, Helvetica, sans-serif;
                font-size:14px;
            }
            p, h1, form, button{border:0; margin:0; padding:0;}
            .spacer{clear:both; height:1px;}
 
            /* ----------- My Form ----------- */
            .myform{
                margin:0 auto;
                width:509px;
                padding:14px;
            }
 
            /* ----------- form-wrapper ----------- */
            #form-wrapper{
                background: none repeat scroll 0 0 #C6C6C6;
                border: 2px solid #8B8B8B;
                border-radius: 10px;
                -moz-border-radius: 10px;
                -op-border-radius: 10px;
                -webkit-border-radius: 10px;
            }
            #form-wrapper h1 {
                font-weight:bold;
                margin-bottom:8px;
            }
            #form-wrapper p{
                font-size:11px;
                color:#666666;
                margin-bottom:20px;
                border-bottom:solid 1px #7E7E7E;
                padding-bottom:10px;
            }
            #form-wrapper label{
                display:block;
                font-weight:bold;
                text-align:right;
                width:193px;
                float:left;
            }
            #form-wrapper .small{
                color:#666666;
                display:block;
                font-size:11px;
                font-weight:normal;
                text-align:right;
                width:193px;
            }
            #form-wrapper input,#form-wrapper textarea{
                float:left;
                border:solid 1px #aacfe4;
                width:284px;
                margin:2px 0 20px 10px;
                border-radius: 15px;
                -moz-border-radius: 15px;
                -op-border-radius: 15px;
                -webkit-border-radius: 15px;
                font-size: 14px;
            }
 
            #form-wrapper input{
                height: 25px;
                padding: 4px 10px;
            }
            #form-wrapper textarea{
                padding: 10px 10px;
                overflow: auto;
            }
            /* ----------- Form Button ----------- */
            #form-wrapper button {
               background: #2c3e4a;
               background: -webkit-gradient(linear, left top, left bottom, from(#919496), to(#2c3e4a));
               background: -webkit-linear-gradient(top, #919496, #2c3e4a);
               background: -moz-linear-gradient(top, #919496, #2c3e4a);
               background: -ms-linear-gradient(top, #919496, #2c3e4a);
               background: -o-linear-gradient(top, #919496, #2c3e4a);
               padding: 5px 10px;
               -webkit-border-radius: 15px;
               -moz-border-radius: 15px;
               border-radius: 15px;
               margin-left: 315px;
               color: white;
               font-size: 20px;
               text-decoration: none;
               vertical-align: middle;
            }
            #form-wrapper button:hover {
               background: #3d4b54;
               color: #ccc;
            }
        </style>
    </head>

    
 <body>
 
 
   <%@include file="header.jsp" %>
  
        <div id="form-wrapper" class="myform">
            <form id="form" name="form" method="post" action="index.html">
 
                <h1>Contact Us</h1>
                <p>Please complete the form bellow.</p>
 
                <label for="name">Name
                    <span class="small">Add your name</span>
                </label>
                <input type="text" name="name" placeholder="username" id="name" />
 
                <label for="email">Email
                    <span class="small">Add a valid address</span>
                </label>
                <input type="text" name="email" placeholder="mail@example.com" id="email" />
 
                <label for="phone">Phone
                    <span class="small">Add valid 10 digit your mobile no.</span>
                </label>
                <input type="text" name="phone" placeholder="8888888888" id="phone" />
 
               
 
                <label for="message">Message
                    <span class="small">Write something to us</span>
                </label>
                <textarea placeholder="Write something to us" name="message" id="message"  rows="5"></textarea>
 
                <button type="submit">Send</button>
                <div class="spacer"></div>
 
            </form>
        </div>
        
        
        
        
    </body>

</html>