package kr.go.paju.controller;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.UserDTO;
import kr.go.paju.model.UserDAO;
import kr.go.paju.service.AES256;

@WebServlet("/AddUserCtrl.do")
public class AddUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr1 = request.getParameter("address1");
		String addr2 = request.getParameter("address2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
        
		boolean result = false;
		
		int cnt = 0, suc = 0;
		UserDAO dao = new UserDAO();
		cnt = dao.idCheckPro(id);
		
		UserDTO user = new UserDTO();
        String key = "%02x";
        String encrypted = "";
        try {
			encrypted = AES256.encryptAES256(pw, key);
		} catch (Exception e) {
			e.printStackTrace();
		} 
        
		if(cnt>=1){	
			result = false;
			response.sendRedirect("./user/signUp.jsp?qid="+id);
		} else { 
			result = true;
			user.setId(id);
			user.setPw(encrypted);
			user.setName(name);
			user.setAddr(addr1 + "<br>" +addr2);
			user.setTel(tel);
			user.setEmail(email);
			user.setBirth(birth);
			suc = dao.addUser(user);
			if(suc>=1){
				response.sendRedirect(request.getContextPath());
			} else {
				response.sendRedirect("./user/signUp.jsp?qid="+id);
			}
		}
	}
}