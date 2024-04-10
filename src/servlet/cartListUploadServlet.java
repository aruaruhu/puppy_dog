package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pet.join.cartListVO;
import pet.join.joinVO;
@WebServlet("/cartListUpload")
public class cartListUploadServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<cartListVO> cartlistvo = new ArrayList<cartListVO>();
		
		String query = "insert into cartList (user_id,pro_num,order_regdate) values (?, ?, now())";
		
		HttpSession session = req.getSession();
		
		String user_id = (String)session.getAttribute("user_id");
		String pro_num = (String)req.getParameter("pro_num");
		
		
		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			pstmt = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, user_id);
			pstmt.setString(2, pro_num);
			
			pstmt.executeUpdate();
			
			req.setAttribute("cartListVO", cartlistvo);
			RequestDispatcher rd = req.getRequestDispatcher("cartShowup");
			rd.forward(req, resp);
			
			
		} catch (Exception e) {
			req.setAttribute("error", e);
	         RequestDispatcher rd = req.getRequestDispatcher("/error.jsp");
	         rd.forward(req, resp);
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch (Exception e) {}
			try {
	            if(pstmt != null) {
	               pstmt.close();
	            }
	         } catch (Exception e) {}
		}
	}
	
	
}
