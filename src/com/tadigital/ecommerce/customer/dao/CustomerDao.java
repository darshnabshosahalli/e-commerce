package com.tadigital.ecommerce.customer.dao;

import com.tadigital.ecommerce.customer.entity.Address;
import com.tadigital.ecommerce.customer.entity.Customer;

public interface CustomerDao {
	
	public Customer checkCustomer(String email,String password,Customer cust);
	public boolean registerCustomer(String fname,String lname,String email,String pass);
	public boolean updatePassword(String email,String password);
	public boolean updatePersonalInfo(Customer customer, Address address);
	public Address getAddressInfo(int custId);
}
