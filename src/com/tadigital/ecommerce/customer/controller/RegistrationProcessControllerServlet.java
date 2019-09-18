package com.tadigital.ecommerce.customer.controller;

import com.tadigital.ecommerce.customer.service.CustomerService;
import com.tadigital.ecommerce.customer.service.CustomerServiceImpl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.*;


@WebServlet("/register")
public class RegistrationProcessControllerServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	CustomerService custSrvc = new CustomerServiceImpl();
	private static final Logger Log = Logger.getLogger(RegistrationProcessControllerServlet.class.getName());
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Log.info("execution started");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean status = custSrvc.registerCustomer(name,email,password);
		if(status) {
			request.setAttribute("REGISTRATIONSTATUS",true);
			custSrvc.sendRegistrationMail(name,email);
		}
		else {
			request.setAttribute("REGISTRATIONSTATUS",false);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("SignInSignUpForms.jsp");
		rd.forward(request, response);
		Log.info("execution ended");
	}

}
