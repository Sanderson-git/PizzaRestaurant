<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sean's Pizza Restaurant :D</title>

</head>
<body>
<style>* {
 font-size: 120%;
 font-family: Monospace;
}</style>
	<h1>Welcome to my pizza page!</h1>
	

	<h2>Specialty Pizzas</h2>
	
	<c:forEach var="specPizzas" items="${specPizzas}">
		<a href="<c:url value = "/specialty/${specPizzas.getName() }&${specPizzas.getPrice()}"/>">${specPizzas.getName()}</a><br />
	</c:forEach>
	
	<img src="https://static8.depositphotos.com/1008589/1064/i/450/depositphotos_10648406-stock-photo-funny-chef.jpg" width = "450" height = "300" /><---Sean
	
	
	<h2>Make your own!</h2>
	<a href="/custom">Click here!</a><br />
	
	<h2>Leave a review.</h2>
	<a href="/review">Click here!</a><br />
	
</body>
</html>