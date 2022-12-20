package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/Login_Service")
public class Login_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDAO dao = new MemberDAO();

		MemberDTO dto = new MemberDTO(id, pw);
		dao.login(dto);
		
		MemberDTO result = dao.login(dto);
		HttpSession session = request.getSession();
		
		String nextPage = "";
		
		if (result != null) {
			session.setAttribute("user",result);
			nextPage = "메인페이지";
		}else {
			nextPage = "login.jsp";
			session.setAttribute("info", result);
			System.out.println("로그인 성공!");
		}

		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
		
	}

}
