package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

//	private ProductDAO() {
//		
//	}
//	
//	private static ProductDAO instance = new ProductDAO();
//	
//	public static ProductDAO getInstance() {
//		return instance;
//	}
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
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
	
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		try {
			getConn();
			
			String sql = "SELECT * FROM PRODUCT ORDER BY PRO_SEQ DESC";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setPro_seq(rs.getInt("pro_seq"));
				dto.setPro_name(rs.getString("pro_name"));
				dto.setPro_price(rs.getInt("pro_price"));
				dto.setPro_desc(rs.getString("pro_desc"));
				dto.setPro_img(rs.getString("pro_img"));
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
			String sql = "INSERT INTO PRODUCT VALUES(PRODUCT_SEQ.NEXTVAL, ?, ?, ?, null";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPro_name());
			psmt.setInt(2, dto.getPro_price());
			psmt.setString(3, dto.getPro_desc());
//			psmt.setString(4, dto.getPro_img());
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
				dto.setPro_seq(rs.getInt("PRO_SEQ"));
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
