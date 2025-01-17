package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;

/**
 * The type Add user.
 */
//@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Instantiates a new Add user.
     */
    public AddUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/addUser.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo      = request.getParameter("nom");
		String pass      = request.getParameter("pass");

		pass=FactoryPassword.getHash(pass);
		
		//Lancer la requette
		boolean b = AdminDAO.addUser(pseudo, pass);
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
