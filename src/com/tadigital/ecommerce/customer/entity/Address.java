package com.tadigital.ecommerce.customer.entity;
import org.apache.log4j.*;

import com.tadigital.ecommerce.controller.HomePageControllerServlet;

public class Address {
	
	private static final Logger Log = Logger.getLogger(HomePageControllerServlet.class.getName());
	//PROPERTIES
	  private int add_id;
	  private int cust_id;
	  private String address;
	  private String city;
	  private String pincode;
	  private String state;
	  private String country;
	  
	  public Address() {
	  }
	  
	  public Address(int add_id, int cust_id, String address, String city, String pincode, String state, String country) {
		  
		  Log.info("execution started");
	      this.add_id = add_id;
	      this.cust_id = cust_id;
	      this.address = address;
	      this.city = city;
	      this.pincode = pincode;
	      this.state = state;
	      this.country = country;
	      Log.info("execution ended");
	  }

	  //GETTER/ACCESSOR METHODS
	  public int getAddId() {
	      return add_id;
	  }
	  public int getCustId() {
	      return cust_id;
	  }
	  public String getAddress() {
	      return address;
	  }
	  public String getCity() {
	      return city;
	  }
	  public String getPincode() {
	      return pincode;
	  }
	  public String getState() {
	      return state;
	  }
	  public String getCountry() {
	      return country;
	  }

	  //SETTER/MUTATOR METHODS
	  public void setAddId(int id) {
	      this.add_id = id;
	  }
	  public void setCustId(int id) {
	      this.cust_id = id;
	  }
	  public void setAddress(String address) {
	      this.address = address;
	  }
	  public void setCity(String city) {
	      this.city = city;
	  }
	  public void setPincode(String pincode) {
	      this.pincode = pincode;
	  }
	  public void setState(String state) {
	      this.state = state;
	  }
	  public void setCountry(String country) {
	      this.country = country;
	  }    
}
