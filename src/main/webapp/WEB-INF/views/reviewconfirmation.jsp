<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review Confirmation</title>
</head>
<body>
<style>* {
 font-size: 120%;
 font-family: Monospace;
}</style>
	<h1>Please confirm your review below ${ name }: </h1>
	Name: ${ name } <br /><br />
	Comments: <c:out value="${ comments }"/> <br /><br />
	Satisfaction: ${ satisfaction } <br /><br />
	Stars: ${ stars } <br /><br />
	
	<button onclick="myFunction()">Submit</button><br />

	<script>
	function myFunction() {
  	alert("Thank you for your review. Your feedback is greatly appreciated.");
	}
	</script>
	
	<br /><a href="/">Home</a><br />
	
</body>
</html>