<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Specialty Pizza Page!</title>
</head>
<body>
<style>* {
 font-size: 120%;
 font-family: Monospace;
}</style>
	<h1>Welcome to my specialty pizza page!</h1>
	You've selected the specialty pizza: ${ name } <br /><br />
	<fmt:setLocale value = "en_US"/>
	<b>Price: </b><fmt:formatNumber value = "${ price }" type = "currency"/><br /><br />
	
	<a href="/">Home</a><br />
	
</body>
</html>