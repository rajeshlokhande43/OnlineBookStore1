package com.rajesh.controller;

import java.io.IOException;


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



@WebServlet("/Purchase")
public class Purchase extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id=Integer.parseInt(request.getParameter("bid"));
		System.out.println(id);
		
		BookDao dao=new BookDao();
		Book s=dao.singleDisplay(id);
		
		int qty=Integer.parseInt(request.getParameter("quantity"));
		long mob=Long.parseLong(request.getParameter("mobile"));
		
		
		
		UserDao udao=new UserDao();
		User u=udao.singleUser(mob);
		
		
		
		
		
		
		HttpSession session=request.getSession();
		
		session.setAttribute("bookdata", s);
		session.setAttribute("quant", qty);
		session.setAttribute("mobile", u);
		response.sendRedirect("Confirm.jsp");
		
	
	}

}
