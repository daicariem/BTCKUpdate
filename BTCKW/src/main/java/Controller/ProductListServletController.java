package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import Model.DBCrud;
import Model.KetNoiCSDL;
import Model.Product;

/**
 * Servlet implementation class ProductListServletController
 */
@WebServlet("/product")
public class ProductListServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductListServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Connection conn = null;
	        List<Product> productList = null;
	        //ket noi csdl
	        conn = KetNoiCSDL.getKetNoiCSDL();
	        //lay danh sach san pham
	        productList = DBCrud.getAllProduct(conn);
	        //close connection
	        
	        //dat danh sach sp vao request
	        request.setAttribute("plist", productList);

	        RequestDispatcher requestDispatcher = request.getRequestDispatcher("ListProduct.jsp");
	        requestDispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
