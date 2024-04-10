package pet.join;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class joinDao {
	public joinDao() {
		
	}
	
	private static joinDao instance = new joinDao();
	
	public static joinDao getInstance() {
		return instance;
	}
	
    public Connection getConnection() throws Exception {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/mydb"; // MySQL 데이터베이스 URL
        String username = "root"; // MySQL 사용자 이름
        String password = "mysql"; // MySQL 암호

        try {
            Class.forName("com.mysql.jdbc.Driver"); // MySQL 드라이버 클래스
            conn = DriverManager.getConnection(url, username, password);
            
            System.out.println("연결성공");
        } catch (SQLException e) {
        	
            e.printStackTrace(); // 연결 오류 처리
            System.out.println("연결실패");
        }

        return conn;
    }
    
    
	// 회	===========	원	============	가	==============	입 
	public int insertJoin(joinVO vo) {
		int result = -1;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO user (user_id, user_name, user_pw, user_phone, user_address, user_email) VALUES (?, ?, ?, ?, ?, ?)";
//		 int res = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, vo.getUser_id());
			pstmt.setString(2, vo.getUser_name());
			pstmt.setString(3, vo.getUser_pw());
			pstmt.setString(4, vo.getUser_phone());
			pstmt.setString(5, vo.getUser_address());
			pstmt.setString(6, vo.getUser_email());

			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("1");
			e.printStackTrace();
			
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null )conn.close();
			} catch(Exception e) {
				
				e.printStackTrace();
			}
		} 
		return result;
	}

// ========로 ===============그 ============== 인
	public boolean LoginCheck(String user_id, String user_pw) throws Exception {
		boolean result = false;
		
		  try (Connection conn = getConnection();
			         PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM user WHERE user_id=? AND user_pw=?")) {

			        pstmt.setString(1, user_id);
			        pstmt.setString(2, user_pw);

			        ResultSet rs = pstmt.executeQuery();
			        result = rs.next();

			    } catch (SQLException e) {
			        e.printStackTrace();
			    }

			    return result;
			}
// ========아	=========이=========디 ========출========력
	public String getUserName(String user_id)throws Exception{
		String userName = null;
		
		try (
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement("SELECT user_name FROM user WHERE user_id=?")) {
			
			pstmt.setString(1, user_id);
			ResultSet rs =pstmt.executeQuery();
			
			if(rs.next()) {
				userName = rs.getString("user_name");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return userName;
	}
	
	
	
	
	}
	
	
	
