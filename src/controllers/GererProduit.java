package controllers;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Produit;
import dao.AdminDAO;
import dao.ProduitDAO;

/**
 * The type Gerer produit.
 */
//@WebServlet("/GererProduit")
public class GererProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Instantiates a new Gerer produit.
     */
    public GererProduit() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// getting all users
		Collection<Produit> allProduits = ProduitDAO.getAllProduit();
		
		request.setAttribute("produits", allProduits);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/gestionProduit.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// getting parameters
		int id = Integer.valueOf(request.getParameter("id"));
		String sup = request.getParameter("suppression");

		if (sup != null) {
			AdminDAO.deleteProduit(id);
		}
	}

}
