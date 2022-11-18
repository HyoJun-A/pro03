package kr.go.paju.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.ImpressDTO;
import kr.go.paju.model.ImpressDAO;

@WebServlet("/GetModifyReviewCtrl.do")
public class GetModifyReviewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		
		ImpressDTO dto = new ImpressDTO();
		ImpressDAO dao = new ImpressDAO();
		dto = dao.getImpress(no);
		
		request.setAttribute("dto", dto);
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/review/reviewModify.jsp?no" + no);
		view.forward(request, response);
	}

}
