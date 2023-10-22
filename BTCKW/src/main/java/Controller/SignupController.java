package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Model.DBCrud;
import Model.User;

/**
 * Servlet implementation class SignupController
 */
@WebServlet("/Register")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charse=UTF-8");
		String username = request.getParameter("name");		
		String password = request.getParameter("password");
		String re_password = request.getParameter("repeat-password");
		if(!password.equals(re_password)) {
			response.sendRedirect("Register.jsp");
		}else {
			DBCrud DBCrud = new DBCrud();
			User a = DBCrud.checkAccountExist(username);
			if (a == null) {
				DBCrud.signup(username,password);
				response.sendRedirect("HomeView.jsp");
			}else {
				response.sendRedirect("Register.jsp");
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
