<%@ page import="java.util.HashMap" %>
<%@ page import="beans.Produit" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: thomas1
  Date: 08/04/2020
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mon Panier</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css"/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/SuppressionPanier.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>

<jsp:include page="header.jsp" />


<h1>My cart :</h1>

<div class="pan">
<%
    String res="<table><thead>" +
            "<tr><th>Name</th><th>Price</th><th>Quantity</th> <th>Total</th> </tr></thead> <tbody>";


    HashMap<Produit,Integer> tab = (HashMap<Produit,Integer>) request.getAttribute("panier");

    if(tab.size() == 0){
        out.print("<h4 style=text-align:center;margin-top:10% > Your cart is empty</h4>");
    }

    else {
        int somme = 0;
        for (Map.Entry<Produit, Integer> entry : tab.entrySet()) {
            Produit key = entry.getKey();
            Integer value = entry.getValue();
            somme += key.getPrix() * value;

            res += "<tr id=" + key.getId() + "><td> <img id=petit src='"+key.getImage()+"' /> <p id=nom>" + key.getNom() + "<p></td> " +
                    "<td>" + key.getPrix() + "$</td> " +
                    "<td id=" + key.getId() + "quantite>" + value + "</td>" +
                    " <td>" + key.getPrix() * value + "$</td> " +
                    "<td id=total>  " +
                    "<a onclick=deleteElement(" + key.getId()+",'"+request.getContextPath()+"/user/panier')><span style=\"color: #e31e27;\"> <i class=\"fa fa-trash\" style=\"font-size:24px\"></i> </span></a>" +
                    " </td> </tr>";
        }

        res += "<tr id=total> <td id=total></td> <td id=total></td> <td id=total></td> <td>" + somme + "$</td></tr>";

        res += "</tbody></table>";

        out.print(res);
    }
%>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
