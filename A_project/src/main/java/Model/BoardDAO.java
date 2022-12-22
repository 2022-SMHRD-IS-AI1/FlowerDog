package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	ArrayList<BoardDTO> list = new ArrayList<>();

	public void getConn() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String DB_User = "cgi_4_1220_1";
			String DB_Password = "smhrd1";

//			String url = "jdbc:oracle:thin:@localhost:1521:xe";
//			String DB_User = "hr";
//			String DB_Password = "hr";

			conn = DriverManager.getConnection(url, DB_User, DB_Password);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 객체를 종료하기 위한 close()
	public void close() {
		try {
			// ResultSet 닫기
			if (rs != null) {
				rs.close();
			}
			// PreparedStatement 닫기
			if (psmt != null) {
				psmt.close();
			}
			// Connection 닫기
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}

	}
	

	public int insertBoard(BoardDTO b_dto) {
		try {

			getConn();

			// 3) SQL문 실행 준비
			String sql = "insert into TB_COMMUNITY values(TB_COMMENT_SEQ.nextval, ?, ?, sysdate, ?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, b_dto.getTitle());
			psmt.setString(2, b_dto.getContent());
			psmt.setString(3, b_dto.getWriter());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}

	public ArrayList<BoardDTO> Listofposts() {
		try {

			getConn();

			// 3) SQL문 실행 준비
			String sql = "select * from TB_COMMUNITY";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int number = rs.getInt(1);
				String title = rs.getString(2);
				String writer = rs.getString(3);
				String content = rs.getString(4);
				String time = rs.getString(5);

				BoardDTO dto = new BoardDTO(number, title, writer, content, time);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;

	}

	BoardDTO result = null;

	public BoardDTO readBoard(BoardDTO dto) {

		try {
			getConn();

			String sql = "select * from TB_COMMUNITY where Writer = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getWriter());

			rs = psmt.executeQuery();

			if (rs.next()) {
				String title = rs.getString(2);
				String content = rs.getString(3);
				String time = rs.getString(4);
				String writer = rs.getString(5);

				result = new BoardDTO(title, writer, time, content);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return result;

	}
	
	
}