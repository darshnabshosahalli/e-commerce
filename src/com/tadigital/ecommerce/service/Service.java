package com.tadigital.ecommerce.service;

import java.util.Properties;
import javax.mail.Session;

import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import javax.mail.PasswordAuthentication;
import org.apache.log4j.*;

public class Service {
	
	private static Properties properties = new Properties();
	Properties prop = new Properties();
	String username = null;
	String password = null;
	private static final Logger Log = Logger.getLogger(Service.class.getName());
	   
    static {
        InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("mail.properties");
       
        try {
            properties.load(inputStream);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }
	
	public Service() {
	
	}
	protected String currentDate() {
		
		Log.info("execution started");
		Calendar calendar = Calendar.getInstance();
	       
        int dd = calendar.get(Calendar.DATE);
        int mm = calendar.get(Calendar.MONTH);
        mm++;
        int yyyy = calendar.get(Calendar.YEAR);
        Log.info("execution ended");
        return ""+dd+"/"+mm+"/"+yyyy+"";
	}
	protected String dateFormat(String dob) {
		
		Log.info("execution started");
		String dobArray[] = dob.split("-");
		String month = dobArray[1];
		String day = dobArray[2];
		String year = dobArray[0];
		Log.info("execution end");
	       
        return ""+day+"/"+month+"/"+year+"";
	}
	
	public String[] getStates() {
		Log.info("execution started");
		String [] states = {"karnataka","Andhra Pradesh","jammu","goa","TamilNadu","telangana"};
		Log.info("execution ended");
		return states;
	}
	
	public String[] getCountry() {
		Log.info("execution started");
		String [] country = {"India","Usa","China","Canada"};
		Log.info("execution ended");
		return country;
	}
	public String getHtmlFormat(String dob) {
		Log.info("execution started");
		String dobArray[] = dob.split("/");
		String day = dobArray[0];
		String month = dobArray[1];
		String year = dobArray[2];
		Log.info("execution ended");
		return ""+year+"-"+month+"-"+day;
	}
	protected Properties createProperties() {
		
		Log.info("execution started");
		String smtpHost = properties.getProperty("mail.smtp.host");
        String socketPort = properties.getProperty("mail.smtp.socketFactory.port");
        String socketClass = properties.getProperty("mail.smtp.socketFactory.class");
        String smtpAuth = properties.getProperty("mail.smtp.auth");
        String smtpPort = properties.getProperty("mail.smtp.port");
        username = properties.getProperty("mail.username");  
        password = properties.getProperty("mail.password");  
        String smtpenable = properties.getProperty("mail.smtp.starttls.enable");  
		
		prop.put("mail.smtp.host",smtpHost);
        prop.put("mail.smtp.socketFactory.port",socketPort);
        prop.put("mail.smtp.socketFactory.class",socketClass);
        prop.put("mail.smtp.auth",smtpAuth);
        prop.put("mail.smtp.port",smtpPort);
        prop.put("mail.smtp.starttls.enable",smtpenable);
        Log.info("execution ended");
        return prop;
	}
	protected Session connectToMailServer(Properties properties) {
		
		Log.info("execution started");
		Session s = Session.getInstance(properties,new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username,password);
            }
        });
		Log.info("execution end");
		return s;
		
	}
}
