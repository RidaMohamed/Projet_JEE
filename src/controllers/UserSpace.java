package controllers;

import beans.Produit;
import dao.ProduitDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

public class UserSpace extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Collection<Produit> allProduit = ProduitDAO.getAllProduit();

        request.setAttribute("produit", allProduit);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/userSpace.jsp");
        dispatcher.forward(request, response);
    }
}
