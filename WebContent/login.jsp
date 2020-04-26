<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style1.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
	rel="stylesheet">
<title>Login</title>
</head>
<body>
<jsp:include page="header.jsp" />
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

<jsp:include page="footer.jsp" />
</body>
</html>