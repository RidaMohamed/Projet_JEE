<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Collection"%>
<%@ page import="beans.Utilisateur"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/js/SupprimerUtilisateur.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>admin</title>
</head>

<jsp:include page="header.jsp" />

<body>

	<div
		style="margin: 15px; margin-top: 70px; margin-bottom: 20%; text-align: center;">
		<h1>Welcome to your plat-forme !!</h1>
		<div>
			<div  class="div_welcome_admin">
				<p>Click here to manage the products !!</p>
				<a class="button button1"
					href="admin/gestionproduit">Go</a>
			</div>
			<div  class="div_welcome_admin_2">
				<p>And here to manage all the users !!</p>
				<a class="button button1"
					href="admin/gestionuser">Go</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>