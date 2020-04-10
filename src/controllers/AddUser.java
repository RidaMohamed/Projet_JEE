package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo      = request.getParameter("nom");
		String pass      = request.getParameter("pass");
		
		//Lancer la requette
		boolean b = AdminDAO.addUser(pseudo, pass);
		System.out.print("here");
		if(b) {
			//Vers admin space
			response.sendRedirect("admin");			
		}
		else
		{
			//Vers admin space
			response.sendRedirect("/Error404.jsp");		
		}

	}

}
