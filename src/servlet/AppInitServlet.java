package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;

public class AppInitServlet extends HttpServlet{
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		try {
			ServletContext sc = this.getServletContext(); // servletContext는 jsp에서 applicationContext의 개념 // 요청할 때마다 호출 가능
			
			// getInitParameter는 web.xml의 값을 불러올 때 사용하는 메소드
			Class.forName(sc.getInitParameter("driver"));
			Connection conn = DriverManager.getConnection(sc.getInitParameter("url"),
					sc.getInitParameter("username"),
					sc.getInitParameter("password")
					);
					sc.setAttribute("conn", conn);
		} catch (Throwable e) {
			throw new ServletException(e);
		}
	}
	
	@Override
	public void destroy() {
		super.destroy();
		Connection conn = (Connection) this.getServletContext().getAttribute("conn");
		try {
			if(conn != null && conn.isClosed() == false) {conn.close();}
		} catch (Exception e) {
		}
	}
}
