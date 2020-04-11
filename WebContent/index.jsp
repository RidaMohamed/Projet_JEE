<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css"/>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp" />
	<div
		style="margin: 15px;margin-top: 70px;margin-bottom: 20%; text-align: center;">
		<h1>Welcome to our shop !!</h1>
		<p>Click here to discover all the products !!</p>
		<a class="button button1" href="${pageContext.request.contextPath}/login">Go</a>
	</div>


<jsp:include page="footer.jsp" />
</body>
</html>