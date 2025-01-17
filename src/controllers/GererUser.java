package controllers;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Utilisateur;
import dao.AdminDAO;

/**
 * The type Gerer user.
 */
@WebServlet("/GererUser")
public class GererUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Instantiates a new Gerer user.
     */
    public GererUser() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// getting all users
		Collection<Utilisateur> allUsers = AdminDAO.getAllUsers();

		request.setAttribute("users", allUsers);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/gestionUser.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		// getting parameters
		int id = Integer.valueOf(request.getParameter("id"));
		String sup = request.getParameter("suppression");
        System.out.println(id);

		if (sup != null) {
			AdminDAO.deleteUser(id);
		}
	}

}
