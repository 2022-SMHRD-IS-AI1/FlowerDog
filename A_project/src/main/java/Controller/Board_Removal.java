package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;

@WebServlet("/Board_Removal")
public class Board_Removal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("Title");
		String writer = request.getParameter("Writer");
		String content = request.getParameter("Content");
		
		
		BoardDAO dao = new BoardDAO();
		
		
		
		
	
		// dao.removal(); => 만들어야함		
		
		
	}
	
	public void removalBoard() {
		
		try {
			String sql = "delete from TB_COMMUNITY where COMM_TITLE = ?, COMM_";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
