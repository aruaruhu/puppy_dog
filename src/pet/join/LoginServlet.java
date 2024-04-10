package pet.join;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login.do")
public class LoginServlet extends HttpServlet {
	private static final long SerialVersionUIDAdder = 1L;

	@Override
	public void init(ServletConfig config) throws ServletException {

		super.init(config);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	    resp.setCharacterEncoding("utf-8");
	    PrintWriter out = resp.getWriter();
	    
	    String user_id = req.getParameter("user_id");
	    String user_pw = req.getParameter("user_pw");
	    
	    joinVO vo = new joinVO();
	    vo.setUser_id(user_id);
	    vo.setUser_pw(user_pw);

	    joinDao dao = joinDao.getInstance();
	    boolean result = false;
		try {
			result = dao.LoginCheck(user_id, user_pw);
		} catch (Exception e) {

			e.printStackTrace();
		}

		if (result) {
		    HttpSession session = req.getSession();
		    session.setAttribute("user_id", user_id);

		    // 사용자 이름을 DAO를 통해 가져옴
		    String userName = null;
		    try {
		        userName = dao.getUserName(user_id);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    
		    session.setAttribute("user_name", userName);
		    session.setAttribute("message", "로그인 성공");

		    resp.sendRedirect("MainPage.jsp"); // 로그인 성공 시 MainPage.jsp로 리다이렉트
		} else {
			
			
			String message = "아이디 또는 비밀번호가 잘못됐습니다.";
			String loc = "javascript:history.back()";
		    req.setAttribute("message", message);
		    req.setAttribute("loc", loc);
		    RequestDispatcher dispatcher = req.getRequestDispatcher("userLogin.jsp");
		    dispatcher.forward(req, resp);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	   
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    resp.setCharacterEncoding("utf-8");
		
	    HttpSession session = req.getSession();
	    String user_id = (String) session.getAttribute("user_id");

	    if (user_id != null) {
	        // 이미 로그인된 경우 MainPage.jsp로 리다이렉트
	        resp.sendRedirect("MainPage.jsp");
	    } else {
	        super.service(req, resp);
	    }
	}






}