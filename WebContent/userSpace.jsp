<%@ page import="java.util.Collection" %>
<%@ page import="beans.Produit" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Space</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css"/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/AjouterPanier.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<jsp:include page="header.jsp" />

<%
    Collection<Produit> tab = (Collection<Produit>) request.getAttribute("produit");

    for(Produit p : tab){

        String res ="<div class=ensemble><div class=product>";

        res+="<img src=http://www.brdtex.com/wp-content/uploads/2019/09/no-image-80x80.png>";
        res+="<div class=description>";
        res +="<h1 class=titre> "+p.getNom()+"</h1>";
        res+="<p class=des>"+p.getDescription()+"</p>";
        res+="</div>";

        res+="<h3 class=prix>"+p.getPrix()+" $</h3>";

        res+="<button onClick=ajouterPanier("+p.getId()+")>Add to cart</button>";


        res+="</div> </div>";
        out.println(res);
    }

    out.println(); %>

</body>
</html>