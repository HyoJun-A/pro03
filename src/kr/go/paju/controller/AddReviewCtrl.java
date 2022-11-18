package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.ImpressDTO;
import kr.go.paju.model.ImpressDAO;



@WebServlet("/AddReviewCtrl.do")
public class AddReviewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cate = request.getParameter("cate");
		String tourno = request.getParameter("tourno");
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		ImpressDTO dto = new ImpressDTO();
		dto.setCate(cate);
		dto.setTourno(tourno);
		dto.setId(id);
		dto.setTitle(title);
		dto.setContent(content);
		
		ImpressDAO dao = new ImpressDAO();
		int cnt = dao.addReview(dto);
		
		if(cnt > 0 ){
			response.sendRedirect("GetReviewListCtrl.do");
		} else{
			response.sendRedirect("./review/addreview.jsp");
		}
	}

}
