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


/**
 * The type Update produit.
 */
@WebServlet("/UpdateProduit")
public class UpdateProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int id_prod ;

	/**
	 * Instantiates a new Update produit.
	 */
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
		String image_produit=request.getParameter("image_prod");

		try {
			int prixProduit = Integer.parseInt(request.getParameter("prix_prod"));
			//Lancer la requette
			boolean b = AdminDAO.updateProduit(nomProduit, des_Produit, prixProduit,image_produit, id_prod);
			response.sendRedirect("gestionproduit");
		}
		catch (NumberFormatException e){
			//Erreur
			response.sendRedirect("gestionproduit");
		}
		

	}

}
