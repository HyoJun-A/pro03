package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.UserDTO;
import kr.go.paju.model.UserDAO;

@WebServlet("/InsertCustomCtrl")
public class InsertCustomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address1");
		address = address + request.getParameter("address2");
		address = address + request.getParameter("postcode");
		
		UserDTO dto = new UserDTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setEmail(email);
		dto.setTel(tel);
		dto.setAddress(address);
		
		int cnt = 0;
		UserDAO dao = new UserDAO();
		cnt = dao.insertUser(dto);
	}

}
