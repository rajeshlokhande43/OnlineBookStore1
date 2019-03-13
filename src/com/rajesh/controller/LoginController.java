package com.rajesh.controller;


import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.rajesh.model.User;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long mobile = Long.parseLong(request.getParameter("mobile"));
		  String password = request.getParameter("password");
		  HttpSession httpSession = request.getSession();
		  SessionFactory factory = new Configuration().configure().buildSessionFactory();
		  Session session = factory.openSession();
		  String query = "select mobile,password from User where mobile=? and password=?";
		  Query queryObj = session.createQuery(query);
		  queryObj.setLong(0, mobile);
		  queryObj.setString(1, password);
		  List<User> records = queryObj.list();
		  if(records.size()>0)
		  {
		   request.setAttribute("loginstatus", "Login Successful.");
		   httpSession.setAttribute("mobile", mobile);
		   getServletContext().getRequestDispatcher("/UserBookDisplay2").forward(request, response);
		   }
		  else{
		   request.setAttribute("loginstatus", "mobile/Password do not match.");
		   getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
		   }
	}

}

