<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Collection"%>
<%@ page import="beans.Produit"%>
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
<title>ajouts d'utlilisateur</title>

</head>
<body>
<jsp:include page="header.jsp" />
	<%

    Produit prod = (Produit)request.getAttribute("produit");
    
	String str= "<form action=updateproduit method=post>"+
	         	"<h2>Modifier user :</h2>"+
		        "<div class=container>"+
	         	
			    "<label for=nom_prod><b>Nom produit</b></label> "+
			    "<input type=text name=nom_prod value= "  +prod.getNom() + " required>"+
			
			    "<label for=prix_prod><b>Prix</b></label>"+
			    "<input type=text name=prix_prod value= "  +prod.getPrix() + " required>"+
			
			    "<label for=desc_prod><b>description</b></label> "+
			    "<input type=text name=desc_prod value= " +prod.getDescription() + " required>"+
  
			    "<button class=button button1 type=submit>Modify produit</button>"+

		        "</div>"+
             	"</form>";
			    out.print( str );


%>
<jsp:include page="footer.jsp" />
</body>
</html>