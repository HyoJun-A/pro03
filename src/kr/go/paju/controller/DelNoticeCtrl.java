package kr.go.paju.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.model.NoticeDAO;

@WebServlet("/DelNoticeCtrl.do")
public class DelNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.delNotice(no);
		
		if(cnt > 0 ){
			response.sendRedirect("GetNoticeListCtrl.do");
		} else{
			response.sendRedirect("GetNoticeCtrl?no="+no);
		}
	}

}
