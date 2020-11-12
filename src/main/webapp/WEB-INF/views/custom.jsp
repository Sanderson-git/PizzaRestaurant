<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Pizza Builder!</title>
</head>
<body>
<style>* {
 font-size: 120%;
 font-family: Monospace;
}</style>
	<h1>Welcome to my custom pizza builder page!</h1>
	<h2>Please build your pizza below! :D</h2><br />
	
	<form method="post" action="/customresult">
		
		Size: <select name="size">
			<option>Small</option>
			<option>Medium</option>
			<option>Large</option>
		</select><br />
		
		Gluten-Free Crust: <input type="checkbox" name="gluten"><br />
		
		Amount of Toppings: <select name="topping">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
		</select><br /><br />
		<b>Toppings:</b>
		<ul><c:forEach var="top" items="${toppings}">
			<li>${top }</li>
		</c:forEach></ul>
		
		<b>NOTE: If you select more toppings than are named, the first named topping in special instructions will have extra applied.<br />I.E. 4 toppings selected and 2 named. Both will have extra applied.</b><br />
		Special instructions (name toppings here): <input type="text" name="instructions" /><br />
		
		<input type="submit" />
	</form>
	
	
	<br /><a href="/">Home</a><br />
	
</body>
</html>