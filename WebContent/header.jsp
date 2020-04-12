<%@ page import="dao.PanierDAO" %>
<div class="header">
    <a href="${pageContext.request.contextPath}" class="logo">JEE Online Store</a>
    <div class="header-right">
        <a class="active" href="${pageContext.request.contextPath}">Home</a>
        <a href="${pageContext.request.contextPath}/user">User space</a>
        <a href="${pageContext.request.contextPath}/admin">Admin space</a>



            <%
                if(session.getAttribute("id") != null) {

                    String admin = (String) session.getAttribute("admin");
                    String a1 = "" ;
                    String a2 = "" ;

                    if(admin.equals("true")){
                        admin="Administrateur";
                        a1 = "<a href= \"admin/gestionuser\" >Gérer users</a>";
                        a2 = "<a href= \"admin/gestionproduit\" >Gérer produits</a>";
                    }
                    else
                        admin="Utilisateur";

                    out.println(a1 + a2 +
                    		" <div class=\"dropdown\">\n" +
                            "            <i class=\"fas fa-user fa-2x\"></i>\n" +
                            "            <div class=\"dropdown-content\">\n" +
                            "                <p class=\"content\">Connected as a :</p>\n" +
                            "                 <p>     "+session.getAttribute("pseudo")+"                          </p>      " +
                            "                 <p>        "+admin+"                          </p>      " +
                            "                <a href=" +request.getContextPath()+"/logout class=\"content\">\n" +
                            "                    <span style=\"color: #ff0d0d;\">\n" +
                            "                    <i class=\"fas fa-sign-out-alt \"></i>\n" +
                            "                    </span>\n" +
                            "                </a>\n" +
                            "            </div>\n" +
                            "        </div>");

                    int id = (int) session.getAttribute("id");
                    int element = PanierDAO.getNbElement(id);
                    out.print(" <a href=" +request.getContextPath()+"/user/panier >"+
                            "        <i class=\"fa\" style=\"font-size:24px\">&#xf07a;</i> <span class='shopping-cart' id='lblCartCount'>" + element + " </span></a>");
                }
            %>




    </div>


</div>



