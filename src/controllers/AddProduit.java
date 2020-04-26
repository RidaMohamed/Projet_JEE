package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;

/**
 * The type Add produit.
 */
@WebServlet("/AddProduit")
public class AddProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Instantiates a new Add produit.
	 */
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
		String image_Produit = request.getParameter("image_Produit");

		System.out.println("L'image produit est : "+image_Produit);

		try {
			int prixProduit = Integer.parseInt(request.getParameter("prix_Produit"));

			if(!image_Produit.equals("")){
				boolean b = AdminDAO.addProduit(nomProduit, des_Produit, prixProduit,image_Produit);
			}
			else {
				//Lancer la requette
				boolean b = AdminDAO.addProduit(nomProduit, des_Produit, prixProduit);
			}
			response.sendRedirect("gestionproduit");
		}
		catch (NumberFormatException e){
			response.sendRedirect("gestionproduit");
		}

	}

}
