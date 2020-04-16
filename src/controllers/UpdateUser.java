package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Utilisateur;
import dao.AdminDAO;


//@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int id_user ;
       
    public UpdateUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recuperer le produit 
		Utilisateur user = AdminDAO.getUser(Integer.valueOf(request.getParameter("id")));
		id_user = user.getId();
		request.setAttribute("user", user);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateUser.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo      = request.getParameter("nom");
		String pass      = request.getParameter("pass");
		String role      = request.getParameter("role");

		//Lancer la requette
		boolean b = AdminDAO.updateUser(pseudo, pass, role, id_user);
		if(b) {
			//Vers gestion user
			response.sendRedirect("gestionuser");			
		}
		else
		{
			//Erreur
		    response.sendRedirect("/Error404.jsp");		
		}
	}

}
