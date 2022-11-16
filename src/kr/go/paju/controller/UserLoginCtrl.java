package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.go.paju.model.UserDAO;

@WebServlet("/UserLoginCtrl.do")
public class UserLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserDAO dao = new UserDAO();
		int cnt = dao.userLogin(id, pw);
		
		HttpSession session = request.getSession();
		if(cnt==1){
			session.setAttribute("sid", id);
			response.sendRedirect(request.getContextPath());
		} else if(cnt==9) {
			response.sendRedirect("./user/login.jsp");			
		} else {
			response.sendRedirect("./user/login.jsp");
		}
		
	}

}
