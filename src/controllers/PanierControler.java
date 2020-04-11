package controllers;

import beans.Produit;
import dao.PanierDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;

public class PanierControler extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name =request.getParameter("id");
        String sup=request.getParameter("suppression");

        HttpSession session = request.getSession(true);
        int id= (int) session.getAttribute("id");

        if(sup != null){

            // TODO AVEC L'ID USER en SESSION
            PanierDAO.supprimer(Integer.parseInt(name),id);
        }
        else {
            PanierDAO.ajouterPanier(Integer.parseInt(name),id);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id_user=1;

        // TODO AVEC ID USER
        HashMap<Produit, Integer> panier = PanierDAO.getPanier(id_user);

        request.setAttribute("panier", panier);

        System.out.println("Taille panier : "+panier.size());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/panier.jsp");
        dispatcher.forward(request, response);
    }
}
