<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Pizza Checkout</title>
</head>
<body>
<style>* {
 font-size: 120%;
 font-family: Monospace;
}</style>
	
	<h1>ORDER</h1>
	<b>Your order:</b><br />
	---------------------------------------------<br />
	<b>Size: </b>${ size }<br />
	<b>Topping(s): </b>${ topping }<br />
	<b>Crust: </b>${ gluten }<br /><br />
	<b>Special Instructions: </b><c:out value="${ instructions }"/><br />
	---------------------------------------------<br />
	
	<fmt:setLocale value = "en_US"/>
	<b>Price: </b><fmt:formatNumber value = "${ price }" type = "currency"/><br />
	
	
	<c:if test="${price > 15 }">
		<p style="color:red;"><b>You're eligible for free delivery :D</b></p>
	</c:if>
	
	<br />
	<br /><a href="/">Home</a><br />
	<a href="/custom">Build Another</a>
</body>
</html>