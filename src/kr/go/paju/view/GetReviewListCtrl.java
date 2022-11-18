package kr.go.paju.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.paju.dto.ImpressDTO;
import kr.go.paju.model.ImpressDAO;

@WebServlet("/GetReviewListCtrl.do")
public class GetReviewListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ImpressDAO dao = new ImpressDAO();
		ArrayList<ImpressDTO> reviewList = dao.getImpressList();
		
		request.setAttribute("list", reviewList);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/review/reviewList.jsp");
		view.forward(request, response);
	}

}
