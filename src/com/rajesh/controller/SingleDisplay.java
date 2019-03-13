package com.rajesh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rajesh.dao.BookDao;
import com.rajesh.model.Book;


@WebServlet("/SingleDisplay")
public class SingleDisplay extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id=Integer.parseInt(request.getParameter("bid"));
		long m=Long.parseLong(request.getParameter("m"));
		System.out.println(id);
		
		BookDao dao=new BookDao();
		Book s=dao.singleDisplay(id);
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("values", s);
		session.setAttribute("mobile", m);
		response.sendRedirect("SingleView.jsp");
		
		
		
		
	}

}
