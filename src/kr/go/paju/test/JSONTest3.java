package kr.go.paju.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

import net.sf.json.JSONObject;


@WebServlet("/JSONTest3.do")
public class JSONTest3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ArrayList<TestDTO> testList = new ArrayList<TestDTO>();
		
		TestDAO dao = new TestDAO();
		testList = dao.testAll();
		
		JSONObject json = new JSONObject();
		//json.put("name", result.getName());
		json.put("testList", testList);
		PrintWriter out = response.getWriter();
		out.println(json.toString());
	}

}
