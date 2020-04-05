<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
* {
	box-sizing: border-box;
}

.button {
	background-color: #4CAF50;
	border: 0.16em solid rgba(255,255,255,0);
	border-radius:2em;
	color: white;
	padding: 10px 24px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
	text-shadow: 0 0.04em 0.04em rgba(0,0,0,0.35);
}

.button1 {
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
}

.button1:hover {
	background-color: #4CAF50;
	color: white;
}
</style>
<title>Insert title here</title>
</head>
<body style="font-family: system-ui;">
	<div
		style="background-color: #f1f1f1; padding: 15px; text-align: center;">
		<h1>Bienvenu à notre Boutique !!</h1>
		<p>Cliquez ici pour acceder</p>
		<button class="button button1">Commencer</button>
	</div>
</body>
</html>