package kr.go.paju.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/FileUpload.do")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uploadPath = request.getRealPath("/upload");
		int size = 10*1024*1024;
		String name = "";
		String sname = "";
		String fname1 = "";
		
		try {
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8");
			
			name = multi.getParameter("name");
			sname = multi.getParameter("sname");
			
			Enumeration files=multi.getFileNames();
			String fname = (String) files.nextElement();
			fname1 = multi.getFilesystemName(fname);
			
			System.out.println(name);
			System.out.println(sname);
			System.out.println(fname1);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
