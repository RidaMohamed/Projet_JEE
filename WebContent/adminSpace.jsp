<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Collection"%>
<%@ page import="beans.Utilisateur"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/header.css" />
<link rel="stylesheet" type="text/css"
	href="css/node_modules/@fortawesome/fontawesome-free/css/all.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>admin</title>
</head>

<jsp:include page="header.jsp" />

<body>
	<%
		Collection<Utilisateur> user = (Collection<Utilisateur>) request.getAttribute("users");

		for (Utilisateur u : user) {
			
			String res = "<div class=ensemble><div class=product>";
			res += "<div class=description>";
			res += "<h3 class=titre> " + u.getId()+ " " + "</h3>";
			res += "<p class=des> <b>Pseudo</b> : " + u.getPseudo() +    "</p>";
			res += "<p class=des> <b>Role</b> :  "   + u.getRole() +    "</p>";
			res += "</div>";
			res+="<button class=button1 >Supprimer utlilisateur</button>";

			res += "</div> </div>";
			out.println(res);
		}

	%>
</body>
</html>