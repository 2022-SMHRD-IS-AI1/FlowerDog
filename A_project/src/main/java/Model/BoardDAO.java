package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class BoardDAO {
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String DB_User = "cgi_4_1220_1";
			String DB_Password = "smhrd1";
			
			conn = DriverManager.getConnection(url, DB_User, DB_Password);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
//==============================================================================================================
	// 변수
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	ArrayList<BoardDTO> list = new ArrayList<>();
	
	// SQL문
	String inser_sql = "insert into TB_COMMUNITY values(TB_COMMENT_SEQ.nextval, ?, ?, sysdate, ?)";
	
	String Array_sql = "select * from TB_COMMUNITY";
	
	String Update_SQL = "UPDATE TB_COMMUNITY SET COMM_TITLE=?, COMM_CONTENT=?, sysdate WHERE MB_ID=?";
	
	
//==============================================================================================================
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
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
			psmt = conn.prepareStatement(inser_sql);
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
			psmt = conn.prepareStatement(Array_sql);
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

	public int update(BoardDTO b_dto) {
		
		try {
		    psmt = conn.prepareStatement(Update_SQL);  
		    psmt.setString(1, b_dto.getTitle()); //게시글 제목
		    psmt.setString(2, b_dto.getContent()); //게시글 내용
		    psmt.setString(3, b_dto.getWriter()); //게시글 작성자
		    
		    return psmt.executeUpdate();
		}catch(Exception e) {
		    e.printStackTrace();
		}
		return -1; //데이터베이스 오류발생
	}
}
