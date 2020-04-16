package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Produit;
import dao.AdminDAO;
import dao.ProduitDAO;


@WebServlet("/UpdateProduit")
public class UpdateProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int id_prod ;
       
    public UpdateProduit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recuperer le produit 
		Produit pro = ProduitDAO.getProduit(Integer.valueOf(request.getParameter("id")))	;
		id_prod = Integer.valueOf(request.getParameter("id"));
		
		request.setAttribute("produit", pro);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateProduit.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomProduit  = request.getParameter("nom_prod");
		String des_Produit = request.getParameter("desc_prod");
		int prixProduit    = Integer.valueOf(request.getParameter("prix_prod"));
		
		//Lancer la requette
		boolean b = AdminDAO.updateProduit(nomProduit, des_Produit, prixProduit, id_prod);
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
