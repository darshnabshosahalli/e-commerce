package com.tadigital.ecommerce.customer.service;

import com.tadigital.ecommerce.customer.entity.Address;
import com.tadigital.ecommerce.customer.entity.Customer;

public interface CustomerService {

	public Customer CustomerAuthentication(String email,String password);
	public boolean registerCustomer(String name, String email, String password);
	public boolean comparePassword(String password,String newpassword,String oldpassword,String email);
	public String changeDobFormat(String dob);
	public boolean updatePersonalInformation(Customer customer,Address address);
	public Address getAddrInfo(int custId);
	public void sendRegistrationMail(String name, String email);
}
