package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ProductDAO;
import Model.ProductDTO;

@WebServlet("/ProductList.do")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	ProductDAO dao = new ProductDAO();
	
	List<ProductDTO> productList = dao.selectAllProducts();
	request.setAttribute("productList", productList);
	
	RequestDispatcher rd = request.getRequestDispatcher("Product/ProductList.jsp");
	rd.forward(request, response);
		
	}
}
