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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css"/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/AjouterPanier.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<jsp:include page="header.jsp" />

<div class="bot">
<%
    Collection<Produit> tab = (Collection<Produit>) request.getAttribute("produit");

    for(Produit p : tab){

        /*

        String res ="<div class=ensemble>";
        res+="<img src=http://www.brdtex.com/wp-content/uploads/2019/09/no-image-80x80.png>";
        res+="<div class=description>";
        res +="<h1 class=titre> "+p.getNom()+"</h1>";
        res+="<p class=des>"+p.getDescription()+"</p>";
        res+="</div>";

        res+="<h3 class=prix>"+p.getPrix()+" $</h3>";

        res+="<button onClick=ajouterPanier("+p.getId()+",'"+request.getContextPath()+"/user/panier')>Add to cart</button>";


        res+="</div>";
        out.println(res);

         */


        out.println("<div class=\"card\">\n" +
                "  <img src='"+p.getImage()+"' style=\"width:100%\">\n" +
                "  <h1>"+p.getNom()+"</h1>\n" +
                "  <p class=\"price\">"+p.getPrix()+"$</p>\n" +
                "  <p>"+p.getDescription()+"</p>\n" +
                "  <p><button onClick=ajouterPanier("+p.getId()+",'"+request.getContextPath()+"/user/panier')>Add to Cart</button></p>\n" +
                "</div>");
    }
%>

<%
    if(request.getAttribute("suivant").equals("true")){
        out.println("<div class=center> <a class=\"button button1\" href=\""+ request.getContextPath()+"/user?produits="+request.getAttribute("nb")+"\">Suivant</a> </div>");
    }
%>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>