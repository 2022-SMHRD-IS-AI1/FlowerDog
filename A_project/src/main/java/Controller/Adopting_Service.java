package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.AdoptingDTO;
import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/Adopting_Service")
public class Adopting_Service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		int tel = Integer.parseInt(request.getParameter("tel"));
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String merry = request.getParameter("merry");
		String job = request.getParameter("job");

		AdoptingDTO dto = new AdoptingDTO(name, gender, age, tel, email, city, merry, job);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.Join(dto);

		String nextPage = "";

		if (cnt > 0) {
			nextPage = "index.html";
			System.out.println("회원가입 성공");

		} else {
			nextPage = "login.jsp";
			System.out.println("회원가입 실패");
		}

		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);

	}
	
	
	}

}
