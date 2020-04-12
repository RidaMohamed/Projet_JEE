<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style1.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css"/>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>add produit</title>

</head>
<body>
<jsp:include page="header.jsp" />
	<form action="addproduit" method="post">
		<h2>Ajouter produit:</h2>
		<div class="container">
		
			<label for="nom"><b>Nom produit</b></label> 
			<input type="text" placeholder="Entrer nom produit" name="nom_Produit" required> 
			
			<label for="prix"><b>Prix</b></label> 
			<input type="text" placeholder="Entrer prix" name="prix_Produit" required>
			
			<label for="descr"><b>Description</b></label> 
			<input type="text" placeholder="Entrer description" name="description_Produit" style="font-size:10px;"required>

			<button class="button button1" type="submit">Add</button>

		</div>
	</form>
<jsp:include page="footer.jsp" />
</body>
</html>