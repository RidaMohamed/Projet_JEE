package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;

@WebServlet("/AddProduit")
public class AddProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddProduit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/addProduit.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomProduit  = request.getParameter("nom_Produit");
		String des_Produit = request.getParameter("description_Produit");
		int prixProduit    = Integer.valueOf(request.getParameter("prix_Produit"));
		
		
		//Lancer la requette
		boolean b = AdminDAO.addProduit(nomProduit, des_Produit, prixProduit);
		if(b) {
			//Vers gestion produit
			response.sendRedirect("gestionproduit");			
		}
		else
		{
			//Erreur
			response.sendRedirect("/Error404.jsp");		
		}

	}

}
