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


@WebServlet("/BookDisplay")
public class BookDisplay extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		BookDao dao=new BookDao();
		List<Book> bk=dao.displayBook();
		
		HttpSession session=request.getSession();
		session.setAttribute("values", bk);
		response.sendRedirect("BookView.jsp");
		
	}

}
