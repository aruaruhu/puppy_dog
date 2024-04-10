package pet.join;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/join.do")
public class petJoin extends HttpServlet{
	
	private static final long SerialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		
		
		super.init();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("JoinPage.jsp");
		
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		
		PrintWriter out = resp.getWriter();
		
		String user_id = req.getParameter("user_id");
		String user_name = req.getParameter("user_name");
		String user_pw = req.getParameter("user_pw");
		String user_phone =req.getParameter("user_phone");
		String user_address = req.getParameter("user_address");
		String user_email = req.getParameter("user_email");
		
		joinVO  vo = new joinVO();
		
		vo.setUser_id(user_id);
		vo.setUser_name(user_name);
		vo.setUser_pw(user_pw);
		vo.setUser_phone(user_phone);
		vo.setUser_address(user_address);
		vo.setUser_email(user_email);
		
		joinDao dao = joinDao.getInstance();
		int result = dao.insertJoin(vo);
		
		HttpSession session = req.getSession();
		session.setAttribute("message", "회원가입 성공");
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("userLogin.jsp");
		dispatcher.forward(req, resp);
		
//		if(result == 1) {
//			session.setAttribute("message", "회원가입 성공");
//			RequestDispatcher dispatcher = req.getRequestDispatcher("userLogin.jsp");
//		}else {
//			req.setAttribute("message", "회원가입 실패");
//			RequestDispatcher dispatcher = req.getRequestDispatcher("MainPage.jsp");
//			dispatcher.forward(req, resp);
//		}
		
		
		

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
