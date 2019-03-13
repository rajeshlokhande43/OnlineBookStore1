
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




@WebServlet("/BookController")
public class BookController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String author=request.getParameter("author");
		double price=Double.parseDouble(request.getParameter("price"));
		
		Book b=new Book();
		b.setId(id);
		b.setName(name);
		b.setAuthor(author);
		b.setPrice(price);
		
		BookDao dao=new BookDao();
		dao.insert(b);
		
		
		
		
		RequestDispatcher rd=request.getRequestDispatcher("BookSuccess.jsp");
		rd.forward(request, response);
	}

}
