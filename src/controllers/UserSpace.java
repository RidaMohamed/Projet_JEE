package controllers;

import beans.Produit;
import dao.PanierDAO;
import dao.ProduitDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

/**
 * The type User space.
 */
public class UserSpace extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        int nbProduits = ProduitDAO.countProduit();
        request.setAttribute("suivant", "false");

        try {
            int produit = Integer.parseInt(request.getParameter("produits"));

            Collection<Produit> allProduit = ProduitDAO.getPaginationProduct(produit);
            request.setAttribute("produit", allProduit);

            if(produit+10 < nbProduits){
                request.setAttribute("suivant", "true");
                request.setAttribute("nb",produit+10);
            }

        }catch (NumberFormatException e){
            Collection<Produit> allProduit = ProduitDAO.getPaginationProduct(0);
            request.setAttribute("produit", allProduit);

            if(nbProduits/10 > 0){
                request.setAttribute("suivant", "true");
                request.setAttribute("nb",10);
            }

        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/userSpace.jsp");
        dispatcher.forward(request, response);
    }
}
