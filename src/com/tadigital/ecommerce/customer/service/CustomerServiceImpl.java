package com.tadigital.ecommerce.customer.service;

import com.tadigital.ecommerce.customer.dao.CutomerDaoImpl;
import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Address;
import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.service.Service;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.log4j.*;


public class CustomerServiceImpl extends Service implements CustomerService   {
	
	private Customer cust = null;
	CustomerDao database = new CutomerDaoImpl();
	private static final Logger Log = Logger.getLogger(CustomerServiceImpl.class.getName());
		
	@Override
	public Customer CustomerAuthentication(String email,String password) {
			
		Log.info("execution started");
		database = new CutomerDaoImpl();
		cust = database.checkCustomer(email,password,cust);
		if(cust != null) {
			Log.info("execution ended");
			return cust;
		} 
		Log.info("execution ended");
		return cust;
	}
	
	@Override
	public boolean registerCustomer(String name, String email, String password) {
		
		Log.info("execution started");
		String fname;
		String lname;
		
		if (name.contains(" ")) {
			String nameArray[] = name.split(" ",2);
			fname = nameArray[0];
			lname = nameArray[1];
		}
		else {
			fname = name;
			lname = "";
		}
		
		boolean status = database.registerCustomer(fname, lname, email, password);
		if(status) {
			Log.info("execution ended");
			return status;
		}	
		Log.info("execution ended");
		return status;
	}
	
	@Override
	public boolean comparePassword(String password,String newpassword,String oldpassword,String email) {
		
		Log.info("execution started");
		if(oldpassword.equals(password)) {
			boolean status = database.updatePassword(email,newpassword);
			Log.info("execution ended");
			return status;
		}
		Log.info("execution ended");
		return false;
		
	}
	
	@Override
	public String changeDobFormat(String dob) { 
		Log.info("execution started");
		dob = dateFormat(dob);
		Log.info("execution ended");
		return dob;
	}
	
	@Override
	public boolean updatePersonalInformation(Customer customer,Address address) {
		Log.info("execution started");
		boolean status  = database.updatePersonalInfo(customer,address);
		Log.info("execution ended");
		return status;
	}

	@Override
	public Address getAddrInfo(int custId) {
		Log.info("execution started");
		Address addr = database.getAddressInfo(custId);
		Log.info("execution ended");
		return addr;
	}

	@Override
	public void sendRegistrationMail(String name, String email) {
		
		Log.info("execution started");
		Properties property = createProperties();
		Session s = connectToMailServer(property);
		
		//COMPOSE MESSAGE
		try {
		        MimeMessage mimeMessage = new MimeMessage(s);
		        mimeMessage.setFrom(new InternetAddress("darshanhosahalli@gmail.com"));
		        mimeMessage.setRecipients(Message.RecipientType.TO,    InternetAddress.parse(email));
		        mimeMessage.setRecipients(Message.RecipientType.TO,    InternetAddress.parse(email));
		        mimeMessage.setRecipients(Message.RecipientType.CC,    InternetAddress.parse(email));
		        mimeMessage.setRecipients(Message.RecipientType.CC,    InternetAddress.parse(email));
		        mimeMessage.setRecipients(Message.RecipientType.BCC,    InternetAddress.parse(email));
		        mimeMessage.setSubject("Welcome to TA Digital E-Commerce Portal.");
		        String msg = "<b>Dear " + name + ",</b><br>" +
		                     "Thanks for Registering on our portal." +
		                     "<img src='https://image.shutterstock.com/image-vector/welcome-poster-spectrum-brush-strokes-260nw-1146069941.jpg'></img>"+
		                     "\n\nWelcome to TA Digital Family." +
		                     "\n\nThanks & Regards," +
		                     "\nTA Digital";
		        mimeMessage.setText(msg);
		        
		        //SEND MAIL
		        Transport.send(mimeMessage);
		} catch (MessagingException mex) {
            Log.error(mex);
        }

		Log.info("execution ended");
	}
}
