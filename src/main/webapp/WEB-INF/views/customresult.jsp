<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Pizza Checkout</title>
</head>
<body>

	<h1>ORDER</h1>
	<b>Your order:</b><br />
	---------------------------------------------<br />
	<b>Size: </b>${ size }<br />
	<b>Topping(s): </b>${ topping }<br />
	<b>Crust: </b>${ gluten }<br /><br />
	<b>Special Instructions: </b>${ instructions }<br />
	---------------------------------------------<br />
	<b>Price: </b>$${ price }
	<br />
	<br /><a href="/">Home</a><br />
	<a href="/custom">Build Another</a>
</body>
</html>