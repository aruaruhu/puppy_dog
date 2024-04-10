package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cartTableDelete")
public class cartTableDeleteServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Connection conn = null;
        PreparedStatement pstmt = null;
        HttpSession session = req.getSession();
        ResultSet rs = null;
        String user_id = (String) session.getAttribute("user_id");
        String pro_name =req.getParameter("pro_name");
        String pro_content =req.getParameter("pro_content");
        String pro_price =req.getParameter("pro_price");
        String pro_sale =req.getParameter("pro_sale");
        
        String query = "DELETE cartList\r\n" + 
        		"FROM cartList\r\n" + 
        		"JOIN user ON cartList.user_id = user.user_id\r\n" + 
        		"JOIN product ON cartList.pro_num = product.pro_num\r\n" + 
        		"WHERE user.user_id = ?\r\n" + 
        		"  AND product.pro_name = ?\r\n" + 
        		"  AND product.pro_content = ?\r\n" + 
        		"  AND product.pro_price = ?\r\n" + 
        		"  AND product.pro_sale = ?;";
        
        try {
        	
            ServletContext sc = this.getServletContext();
            conn = (Connection) sc.getAttribute("conn");
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, user_id);
            pstmt.setString(2, pro_name);
            pstmt.setString(3, pro_content);
            pstmt.setString(4, pro_price);
            pstmt.setString(5, pro_sale);
            
            pstmt.executeUpdate();
            
            RequestDispatcher rd = req.getRequestDispatcher("/cartShowup");
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
                if (pstmt != null) pstmt.close();
            } catch (Exception e) {}
        }
        
    }//doGet-end
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Connection conn = null;
        PreparedStatement pstmt = null;
        HttpSession session = req.getSession();
        ResultSet rs = null;
        String user_id = (String) session.getAttribute("user_id");
        String pro_name =req.getParameter("pro_name");
        String pro_content =req.getParameter("pro_content");
        String pro_price =req.getParameter("pro_price");
        String pro_sale =req.getParameter("pro_sale");

        String query = "DELETE cartList\r\n" + 
        		"FROM cartList\r\n" + 
        		"JOIN user ON cartList.user_id = user.user_id\r\n" + 
        		"JOIN product ON cartList.pro_num = product.pro_num\r\n" + 
        		"WHERE user.user_id = ?\r\n" + 
        		"  AND product.pro_name = ?\r\n" + 
        		"  AND product.pro_content = ?\r\n" + 
        		"  AND product.pro_price = ?\r\n" + 
        		"  AND product.pro_sale = ?;";
        
        try {
        	
            ServletContext sc = this.getServletContext();
            conn = (Connection) sc.getAttribute("conn");
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, user_id);
            pstmt.setString(2, pro_name);
            pstmt.setString(3, pro_content);
            pstmt.setString(4, pro_price);
            pstmt.setString(5, pro_sale);
            
            pstmt.executeUpdate();
            
            RequestDispatcher rd = req.getRequestDispatcher("/cartShowup");
            System.out.println(user_id+ pro_name+ pro_content+ pro_price+pro_sale);
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
                if (pstmt != null) pstmt.close();
            } catch (Exception e) {
            }
        }
        
    }//doPost-end
	
}
