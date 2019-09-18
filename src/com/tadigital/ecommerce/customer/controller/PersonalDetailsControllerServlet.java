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

@WebServlet("/changepersonaldetails")
public class PersonalDetailsControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger Log = Logger.getLogger(PersonalDetailsControllerServlet.class.getName());
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Log.info("execution started");
		RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount1.jsp");
		rd.forward(request, response);
		Log.info("execution ended");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Log.info("execution started");
		String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String contactNo = request.getParameter("contact");
        String addr = request.getParameter("address");
        String city = request.getParameter("city");
        String pincode = request.getParameter("zip");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String email = request.getParameter("email");
        //String pic = request.getParameter("uppic");
       
        HttpSession session=request.getSession();
        session.setAttribute("FNAME", fname);
        session.setAttribute("LNAME", lname);
        
        Customer customer = (Customer)session.getAttribute("CUSTOMEROBJECT");
        
        Address address = (Address)session.getAttribute("ADDRESSOBJECT");     
        customer.setCustFname(fname);
        customer.setCustLname(lname);
        customer.setCustGender(gender);
        address.setAddress(addr);
        address.setCity(city);
        address.setPincode(pincode);
        address.setState(state);
        address.setCountry(country);
        customer.setCustContactNo(contactNo);
        customer.setCustEmail(email);
        
        CustomerService custSrvc = new CustomerServiceImpl();
        dob = custSrvc.changeDobFormat(dob);
        
        customer.setCustDOB(dob);
        
        boolean status  = custSrvc.updatePersonalInformation(customer,address);
        if (status) {
        	request.setAttribute("UPDATEPROCESS",true);
        }
        else {
        	request.setAttribute("UPDATEPROCESS",false);
        }
        RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount1.jsp");
        rd.forward(request, response);
        Log.info("execution ended");
	}

}
