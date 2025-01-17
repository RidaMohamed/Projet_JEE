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
<title>Manage Product</title>
</head>

<jsp:include page="header.jsp" />

<body>
	<%
		Collection<Produit> produit = (Collection<Produit>) request.getAttribute("produits");
		
		//button ajiouter user 
		String url = request.getContextPath()+"/admin/addproduit";
		String url2;
		out.print("<div class=pan>");
		out.println("<div class=div_button ><button class=button3 ><a href="+url+" >Add product</a></button></div>");
		for (Produit p : produit) {
			
			String res = "<div class=users id=" +p.getId() + "><div class=user>";
			res += "<div class=description >";
			res += "<h3 class=titre > " + p.getId()+ " " + "</h3>";
			res += "<p class=des> <b>Name</b> : " + p.getNom() +    "</p>";
			res += "<p class=des> <b>Price</b> :  "   + p.getPrix()  +    "</p>";
			res += "</div>";
			res += "<div><p class=des> <b>Description</b> :  "   + p.getDescription() +    "</p></div>";
			res += "<p class=des> <b>Image</b> : " + p.getImage() +    "</p>";
			res += "<div class=div_buttons><div class=button2 onClick=deleteProduit(" + p.getId()+ ") >Delete product</div>";
			url2 = request.getContextPath()+"/admin/updateproduit?id=" + p.getId(); 
			res += "<div class=button4> <a href = " + url2 + ">Modify product</a></div>";
		
			res += "</div></div> </div>";
			out.println(res);
		}
		
		out.print("</div>");
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>