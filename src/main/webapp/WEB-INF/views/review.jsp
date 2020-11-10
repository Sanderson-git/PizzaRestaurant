<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review Page</title>
</head>
<body>
	<h1>Welcome to my review page!</h1>
	
	Please enter your review below. <br /><br /><br />
	
	<form method="post" action="/reviewconfirmation">
	
		Name: <input type="text" name="name" /><br /><br />
		Comments: <input type="text" name="comments" /><br /><br />
		
		Satisfaction: <select name="satisfaction">
			<option>Satisfied</option>
			<option>Unsatisfied</option>
		</select><br /><br />
		
		Stars: <select name="stars">
			<option>1 Star</option>
			<option>2 Stars</option>
			<option>3 Stars</option>
			<option>4 Stars</option>
			<option>5 Stars</option>
		</select><br /><br />
		
		<input type="submit" />
	</form>
	
	<br /><br /><a href="/">Home</a><br />
	
</body>
</html>