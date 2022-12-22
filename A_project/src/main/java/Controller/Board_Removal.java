package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.BoardDTO;

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
		BoardDTO dto = new BoardDTO(title, writer, content);
			
		int result = dao.removalBoard(dto);
		
		if(result >0) {
			System.out.println("게시글삭제 성공");
		}else {
			System.out.println("게시글삭제실패");
		}
		
		
	}
	
	
}
