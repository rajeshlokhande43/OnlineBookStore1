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
import com.rajesh.dao.UserDao;
import com.rajesh.model.Book;
import com.rajesh.model.User;


@WebServlet("/UserBookDisplay2")
public class UserBookDisplay2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Long s=(Long)session.getAttribute("mobile");
		
		BookDao dao=new BookDao();
		List<Book> bk=dao.displayBook();
		
		/*UserDao udao=new UserDao();
		List<User>  ud=(List<User>) udao.singleUser(s);*/
		
		
		
		session.setAttribute("values", bk);
		session.setAttribute("mobile", s);
		response.sendRedirect("UserBookView.jsp");
		
	}

}
