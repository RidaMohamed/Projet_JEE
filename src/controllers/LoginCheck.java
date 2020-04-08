package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserConnexion;



@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// getting inputs parameters
		String pseudo = request.getParameter("nom");
		String pass = request.getParameter("pass");

		// return from bdd here
		ArrayList<String> user = new ArrayList<String>();

		//retrive data from to bdd
		UserConnexion cnx = new UserConnexion();
		user = cnx.checklogin(pseudo, pass);
		System.out.println(pseudo);

		if (user.get(0).equals("-1")) {
			//erreur sur le login
			request.setAttribute("errorMessage", "pseudo or password errone");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		} else {
			if (user.get(2).equals("admin")) {
				// cas admin
				response.sendRedirect("adminSpace.jsp");
			} else {
				// cas user
				response.sendRedirect("userSpace.jsp");
			}
		}
	}

}
