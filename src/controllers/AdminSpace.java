package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminSpace")
public class AdminSpace extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminSpace() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("/adminSpace.jsp");
        dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// getting parameters
		//int id      = Integer.valueOf(request.getParameter("id"));
        //String sup  = request.getParameter("suppression");
         
       // if(sup != null){
           // AdminDAO.deleteUser(id);
      //  }

	}

}
