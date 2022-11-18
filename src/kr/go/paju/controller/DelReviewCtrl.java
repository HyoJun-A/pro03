package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.model.ImpressDAO;

@WebServlet("/DelReviewCtrl.do")
public class DelReviewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		
		ImpressDAO dao = new ImpressDAO();
		int cnt = dao.delReview(no);
		
		if(cnt > 0 ){
			response.sendRedirect("GetReviewListCtrl.do");
		} else{
			response.sendRedirect("GetReivewCtrl?no="+no);
		}
	}

}
