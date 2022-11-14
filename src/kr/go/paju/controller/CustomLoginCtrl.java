package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.UserDTO;
import kr.go.paju.model.UserDAO;

@WebServlet("/CustomLoginCtrl.do")
public class CustomLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserDTO dto = new UserDTO();
		dto.setId("id");
		dto.setPw("pw");
		
		UserDAO dao = new UserDAO();
		String result = dao.login(id, pw);
		
		if(result.equals("True")){
			response.sendRedirect("Main?id="+id);
		} else{
			response.sendRedirect("./custom/login.jsp");
		}
	}

}
