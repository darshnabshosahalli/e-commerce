package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.*;
import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;
import com.tadigital.ecommerce.customer.service.CustomerServiceImpl;

@WebServlet("/changepassword")
public class ChangePasswordControllerServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private CustomerService custSrvc = new CustomerServiceImpl();
	private static final Logger Log = Logger.getLogger(ChangePasswordControllerServlet.class.getName());
	    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Log.info("execution started");
		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword1.jsp");
		rd.forward(request, response);
		Log.info("execution ended");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Log.info("execution started");
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		System.out.println(oldpass);
		System.out.println(newpass);
		HttpSession session = request.getSession();
		Customer cust = (Customer)session.getAttribute("CUSTOMEROBJECT");
		boolean status = custSrvc.comparePassword(oldpass,newpass,cust.getCustPwd(),cust.getCustEmail());
		if (status) {
			session.invalidate();
			request.setAttribute("CHANGEPASSWORD",true);
		}
		else {
			request.setAttribute("CHANGEPASSWORD",false);
		}
		RequestDispatcher rd = request.getRequestDispatcher("ChangePassword1.jsp");
		rd.forward(request, response);
		Log.info("execution ended");
	}

}
