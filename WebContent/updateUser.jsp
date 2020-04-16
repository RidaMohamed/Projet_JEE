<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Collection"%>
<%@ page import="beans.Utilisateur"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style1.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/node_modules/@fortawesome/fontawesome-free/css/all.css" />
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

    Utilisateur user = (Utilisateur)request.getAttribute("user");
    
	String str= "<form action=updateuser method=post>"+
	         	"<h2>Modifier user :</h2>"+
		        "<div class=container>"+
	         	
			    "<label for=nom><b>Pseudo</b></label> "+
			    "<input type=text name=nom value= "  +user.getPseudo() + " required>"+
			
			    "<label for=pass><b>Password</b></label>"+
			    "<input type=password name=pass value= "  +user.getPassword() + " required>"+
			
			    "<label for=role><b>Role</b></label> "+
			    "<input type=text name=role value= " +user.getRole() + " required>"+
  
			    "<button class=button button1 type=submit>Modify user</button>"+

		        "</div>"+
             	"</form>";
			    out.print( str );


%>
	<jsp:include page="footer.jsp" />
</body>
</html>