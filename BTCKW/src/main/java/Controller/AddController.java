package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Model.DBCrud;
import Model.User;

/**
 * Servlet implementation class AddController
 */
@WebServlet("/add")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String color = request.getParameter("color");
		String material = request.getParameter("material");
		String description = request.getParameter("description");
		HttpSession session = request.getSession();
		User a = (User) session.getAttribute("acc");
		int sid = a.getId();
		
		DBCrud DBCrud = new DBCrud();
		DBCrud.insertProduct(name, image, price, color, material, description, sid);
		response.sendRedirect("Manager");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
