<%@ page import="dao.PanierDAO" %>

<div class="header">
    <a href="index.jsp" class="logo">JEE Online Store</a>
    <div class="header-right">
        <a class="active" href="index.jsp">Home</a>
        <a href="login.jsp">User space</a>
        <a href="login.jsp">Admin space</a>
        <a href="panier">
        <i class="fa" style="font-size:24px">&#xf07a;</i>
        <span class='shopping-cart' id='lblCartCount'>
<%
    //TODO AVEC L'ID EN SESSION
    out.print(PanierDAO.getNbElement(1));
%>
        </span>
        </a>
    </div>
</div>
