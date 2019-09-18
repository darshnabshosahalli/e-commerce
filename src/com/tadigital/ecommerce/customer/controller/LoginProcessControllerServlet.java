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

import com.tadigital.ecommerce.customer.entity.Address;
import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;
import com.tadigital.ecommerce.customer.service.CustomerServiceImpl;

@WebServlet("/login")
public class LoginProcessControllerServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	CustomerService custSrvc = new CustomerServiceImpl();
	
	private static final Logger Log = Logger.getLogger(LoginProcessControllerServlet.class.getName());
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Log.info("execution started");
		RequestDispatcher rd = null;
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Customer cust = custSrvc.CustomerAuthentication(email,password);
		if(cust != null) {
			Address addr = custSrvc.getAddrInfo(cust.getCustId());
			HttpSession session = request.getSession();
			session.setAttribute("CUSTOMEROBJECT",cust);
			session.setAttribute("ADDRESSOBJECT",addr);
			session.setAttribute("FNAME",cust.getCustFname());
			session.setAttribute("LNAME",cust.getCustLname());
			request.setAttribute("LOGINPROCESS",true);
			rd = request.getRequestDispatcher("index.jsp");
		}
		else {
			request.setAttribute("LOGINPROCESS",false);
			rd = request.getRequestDispatcher("SignInSignUpForms.jsp");
		}
		
		rd.forward(request, response);
		Log.info("execution ended");
	}

}
