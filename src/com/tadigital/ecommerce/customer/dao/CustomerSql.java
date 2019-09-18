package com.tadigital.ecommerce.customer.dao;

public interface CustomerSql {

		String SQL_LOGIN_CUSTOMER = "SELECT * FROM customer_personal_information WHERE cust_email= ? AND cust_pwd= ?";
		String SQLCHECK_REGISTRED_EMAILS = "SELECT * FROM customer_personal_information WHERE cust_email=?";
		String SQL_REGISTER_CUSTOMER = "INSERT INTO customer_personal_information(cust_fname,cust_lname,cust_email,cust_pwd) VALUES (?,?,?,?)";
		String SQL_SELECT_CUSTID = "SELECT cust_id FROM customer_personal_information WHERE cust_email=?";
		String SQL_INSERT_CUSTID = "INSERT INTO customer_address_information(cust_id) VALUES (?)";
		String SQL_CHANGE_PASSWORD = "UPDATE customer_personal_information SET cust_pwd=? WHERE cust_email=?";
		String SQL_UPDATE_CUSTOMER_INFORMATION = "UPDATE customer_personal_information SET cust_fname=?,cust_lname=?,cust_gender=?,cust_dob=?,cust_email=?,cust_contact=? WHERE cust_id=?";
		String SQL_UPDATE_CUSTOMER_ADDRESS_TABLE = "UPDATE customer_address_information SET cust_address=?,cust_city=?,cust_pincode=?,cust_state=?,cust_country=? WHERE cust_id=? AND add_id=?";
		String SQL_GET_ADDRESS_INFORMATION = "SELECT * FROM customer_address_information WHERE cust_id=?";
}

