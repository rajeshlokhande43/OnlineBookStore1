package com.rajesh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rajesh.dao.UserDao;
import com.rajesh.model.User;


@WebServlet("/UserController")
public class UserController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*int mobile =Integer.parseInt(request.getParameter("mobile"));*/
		String name =request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		int pincode=Integer.parseInt(request.getParameter("pincode"));
		long mobile=Long.parseLong(request.getParameter("mobile"));
		
		User u=new User();
		u.setMobile(mobile);
		u.setName(name);
		u.setPassword(password);
		u.setEmail(email);
		u.setAddress(address);
		u.setCity(city);
		u.setPincode(pincode);
		
		
		UserDao dao=new UserDao();
		dao.insert(u);
		
		RequestDispatcher rd=request.getRequestDispatcher("UserSuccess.jsp");
		rd.forward(request, response);
		
	}

}
