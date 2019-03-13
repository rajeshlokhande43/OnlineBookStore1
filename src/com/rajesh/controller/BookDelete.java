package com.rajesh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rajesh.dao.BookDao;
import com.rajesh.model.Book;

/**
 * Servlet implementation class BookDelete
 */
@WebServlet("/BookDelete")
public class BookDelete extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id=Integer.parseInt(request.getParameter("bid"));
		
		Book b=new Book();
		b.setId(id);
		
		BookDao dao=new BookDao();
		dao.delete(b);
		
		
		RequestDispatcher rd=request.getRequestDispatcher("BookSuccess.jsp");
		rd.forward(request, response);
		
		
		
	}

}
