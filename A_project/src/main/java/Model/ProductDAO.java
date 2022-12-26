package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	List<ProductDTO> list = new ArrayList<>();
	
	// DB연결
	public void getConn() {

		try {
			Class.forName("jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String username = "cgi_4_1220_1";
			String password = "smhrd1";
			conn = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	// 객체반환
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

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 상품 조회
	public List<ProductDTO> selectAllProducts(){
	
		try {
			getConn();
			
			String sql = "select * from product order by code desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setPro_number(rs.getInt("PRO_SEQ"));
				dto.setPro_name(rs.getString("PRO_NAME"));
				dto.setPro_price(rs.getInt("PRO_PRICE"));
				dto.setPro_desc(rs.getString("PRO_DESC"));
				dto.setPro_img(rs.getString("PRO_IMG1"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	//상품 등록
	public void insertProduct(ProductDTO dto) {
		
		try {
			getConn();
			String sql = "INSERT INTO PRODUCT VALUES(PRO_SEQ.NEXTVAL, ?, ?, ?, ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPro_name());
			psmt.setInt(2, dto.getPro_price());
			psmt.setString(3, dto.getPro_desc());
			psmt.setString(3, dto.getPro_img());
			psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	//상품 수정
	public ProductDTO selectProductUpdate(int pro_number) {
		
		ProductDTO dto = null;
		
		try {
			getConn();
			
			String sql ="SELECT * FROM PRODUCT WHERE PRO_SEQ = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, pro_number);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new ProductDTO();
				dto.setPro_number(rs.getInt("PRO_SEQ"));
				dto.setPro_name(rs.getString("PRO_NAME"));
				dto.setPro_price(rs.getInt("PRO_PRICE"));
				dto.setPro_desc("PRO_DESC");
				dto.setPro_img("PRO_IMG");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	
}
