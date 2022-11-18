package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.ImpressDTO;
import kr.go.paju.model.ImpressDAO;

@WebServlet("/GetModifyReviewProCtrl.do")
public class GetModifyReviewProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ImpressDTO dto = new ImpressDTO();
		dto.setTitle(title);
		dto.setContent(content);
		
		ImpressDAO dao = new ImpressDAO();
		
		int cnt = dao.modifyReview(dto, no);
		if(cnt > 0 ){
			response.sendRedirect("GetReviewListCtrl.do");
		} else{
			response.sendRedirect("GetModifyReviewCtrl.do?no="+no);
		}
	}

}
