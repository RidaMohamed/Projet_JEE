<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Collection"%>
<%@ page import="beans.Produit"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/js/SupprimerProduit.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Gestion produits</title>
</head>

<jsp:include page="header.jsp" />

<body>
	<%
		Collection<Produit> produit = (Collection<Produit>) request.getAttribute("produits");
		
		//button ajiouter user 
		String url = request.getContextPath()+"/admin/adduser";
		out.print("<div class=pan>");
		out.println("<div class=div_button ><button class=button3 ><a href="+url+" >Ajouter produit</a></button></div>");
		for (Produit p : produit) {
			
			String res = "<div class=users id=" +p.getId() + "><div class=user>";
			res += "<div class=description >";
			res += "<h3 class=titre > " + p.getId()+ " " + "</h3>";
			res += "<p class=des> <b>Nom produit</b> : " + p.getNom() +    "</p>";
			res += "<p class=des> <b>Prix</b> :  "   + p.getPrix()  +    "</p>";
			res += "<p class=des> <b>Role</b> :  "   + p.getDescription() +    "</p>";
			res += "</div>";
			res+="<div class=button2 onClick=deleteProduit(" + p.getId()+ ") >Supprimer produit</div>";
		
			res += "</div> </div>";
			out.println(res);
		}
		
		out.print("</div>");
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>