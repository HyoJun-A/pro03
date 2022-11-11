package kr.go.paju.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.NoticeDTO;
import kr.go.paju.model.NoticeDAO;

@WebServlet("/GetModifyNoticeCtrl.do")
public class GetModifyNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDAO dao = new NoticeDAO();
		NoticeDTO dto = dao.getNotice(no);
		
		request.setAttribute("dto", dto);
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/notice/noticeModify.jsp?no="+no);
		view.forward(request, response);
	}

}
