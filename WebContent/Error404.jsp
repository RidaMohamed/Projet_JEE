<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Error 404</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div style="margin: 15px;margin-top: 70px;margin-bottom: 10%; text-align: center;">

    <h1>Oups !!!</h1>
    <p>Article not found, sorry :(</p>

    <img src="https://i.giphy.com/media/RjoLWhQBFEcHS/giphy.gif"/>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>