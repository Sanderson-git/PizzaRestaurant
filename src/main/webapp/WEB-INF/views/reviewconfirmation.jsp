<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review Confirmation</title>
</head>
<body>
	<h1>Please confirm your review below ${ name }: </h1>
	Name: ${ name } <br /><br />
	Comments: ${ comments } <br /><br />
	Satisfaction: ${ satisfaction } <br /><br />
	Stars: ${ stars } <br /><br />
	
	<button onclick="myFunction()">Submit</button>

	<script>
	function myFunction() {
  	alert("Thank you for your review. Your feedback is greatly appreciated.");
	}
	</script>
	
	<br /><a href="/">Home</a><br />
	
</body>
</html>