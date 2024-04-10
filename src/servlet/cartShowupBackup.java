package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
import pet.join.productDTO;
//@WebServlet("/cartShowup")
public class cartShowupBackup extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<productDTO> products = new ArrayList<productDTO>();
		ArrayList<cartListVO> cartList = new ArrayList<cartListVO>();
		
		String query = "select user.user_id, product.pro_name, product.pro_img, product.pro_content, product.pro_price, product.pro_sale\r\n" + 
				"from user\r\n" + 
				"join cartList on user.user_id = cartList.user_id\r\n" + 
				"join product on cartList.pro_num = product.pro_num where user.user_id = ?";
		
		HttpSession session = req.getSession();
		String user_id  = (String)session.getAttribute("user_id");
		
		String query2 = "select cartList.order_num \r\n" + 
				"from user\r\n" + 
				"join cartList on user.user_id = cartList.user_id\r\n" + 
				"join product on cartList.pro_num = product.pro_num where user.user_id = ?";
		
		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			pstmt = conn.prepareStatement(query2);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				cartList.add(new cartListVO()
						.setOrder_num(rs.getInt("order_num"))
						);
			}
			
			req.setAttribute("cartList", cartList);
			
			
			
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
		
		
		
		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				products.add(new productDTO()
						.setPro_name(rs.getString("pro_name"))
						.setPro_img(rs.getString("pro_img"))
						.setPro_content(rs.getString("pro_content"))
						.setPro_price(rs.getString("pro_price"))
						.setPro_sale(rs.getString("pro_sale"))
						);
			}
			
			req.setAttribute("cartTable", products);
			RequestDispatcher rd = req.getRequestDispatcher("/CartPage.jsp");
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
	
	}//doGet()-end
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<productDTO> products = new ArrayList<productDTO>();
		ArrayList<cartListVO> cartList = new ArrayList<cartListVO>();
		
		String query = "select user.user_id, product.pro_name, product.pro_img, product.pro_content, product.pro_price, product.pro_sale \r\n" + 
				"from user\r\n" + 
				"join cartList on user.user_id = cartList.user_id\r\n" + 
				"join product on cartList.pro_num = product.pro_num where user.user_id = ?";
		
		String query2 = "select cartList.order_num \r\n" + 
				"from user\r\n" + 
				"join cartList on user.user_id = cartList.user_id\r\n" + 
				"join product on cartList.pro_num = product.pro_num where user.user_id = ?";
		
		HttpSession session = req.getSession();
		String user_id  = (String)session.getAttribute("user_id");
		
		
try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			pstmt = conn.prepareStatement(query2);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				cartList.add(new cartListVO()
						.setOrder_num(rs.getInt("order_num"))
						);
			}
			
			req.setAttribute("cartList", cartList);
			
			
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


		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				products.add(new productDTO()
						.setPro_name(rs.getString("pro_name"))
						.setPro_img(rs.getString("pro_img"))
						.setPro_content(rs.getString("pro_content"))
						.setPro_price(rs.getString("pro_price"))
						.setPro_sale(rs.getString("pro_sale"))
						);
			}
			
			req.setAttribute("cartTable", products);
			RequestDispatcher rd = req.getRequestDispatcher("/CartPage.jsp");
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
	
	}//doPost()-end
	
	
}
