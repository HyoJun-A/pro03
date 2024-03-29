package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.TourDTO;
import kr.go.paju.model.TourDAO;

@WebServlet("/AddTourCtrl.do")
public class AddTourCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cate = request.getParameter("cate");
		String tourno = request.getParameter("tourno");
		String place = request.getParameter("place");
		String comment1 = request.getParameter("comment1");
		String comment2 = request.getParameter("comment2");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String addr = address1 + address2;
		
		TourDTO dto = new TourDTO();
		dto.setCate(cate);
		dto.setTourno(tourno);
		dto.setPlace(place);
		dto.setComment1(comment1);
		dto.setComment2(comment2);
		dto.setAddr(addr);
		
		TourDAO dao = new TourDAO();
		int cnt = dao.addTour(dto);
		
		if(cnt>=1){
			response.sendRedirect("GetTourListCtrl.do");
		} else {
			response.sendRedirect("./tour/addTour.jsp");
		}
	}
}