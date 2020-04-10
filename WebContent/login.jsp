<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<link rel="stylesheet" type="text/css"
	href="css/node_modules/@fortawesome/fontawesome-free/css/all.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
	rel="stylesheet">
<title>Login</title>
</head>
<body>
<body>
	<form action="LoginCheck" method="post">
		<h2>Login :</h2>
		<div class="container">
			<label for="nom"><b>Pseudo</b></label> <input type="text"
				placeholder="Entrer Pseudo" name="nom" required> <label
				for="pass"><b>Password</b></label> <input type="password"
				placeholder="Entrer Password" name="pass" required>

			<button class="button button1" type="submit">Login</button>

		</div>
		<label style="color: red;"> <%
 	            if (request.getAttribute("errorMessage") != null) {
 		        out.println(request.getAttribute("errorMessage"));
 	            }
 	            %>
		</label>
	</form>
</body>
</body>
</html>