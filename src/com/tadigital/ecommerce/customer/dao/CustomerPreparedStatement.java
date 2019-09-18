package com.tadigital.ecommerce.customer.dao;


import com.tadigital.ecommerce.dao.Doa;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class CustomerPreparedStatement extends Doa{
	
	private static final Connection con = (Connection) createConnection();
	public static final PreparedStatement PS_LOGIN_CUSTOMER = createStatement(con,CustomerSql.SQL_LOGIN_CUSTOMER);
	public static final PreparedStatement PS_CHECK_REGISTERED_EMAILS = createStatement(con,CustomerSql.SQLCHECK_REGISTRED_EMAILS);
	public static final PreparedStatement PS_REGISTER_CUSTOMER = createStatement(con,CustomerSql.SQL_REGISTER_CUSTOMER);
	public static final PreparedStatement PS_SELECT_CUSTID = createStatement(con,CustomerSql.SQL_SELECT_CUSTID);
	public static final PreparedStatement PS_INSERT_CUSTID = createStatement(con,CustomerSql.SQL_INSERT_CUSTID);
	public static final PreparedStatement PS_CHANGE_PASSWORD = createStatement(con,CustomerSql.SQL_CHANGE_PASSWORD);
	public static final PreparedStatement PS_UPDATE_CUSTOMER_INFORMATION = createStatement(con,CustomerSql.SQL_UPDATE_CUSTOMER_INFORMATION);
	public static final PreparedStatement PS_UPDATE_CUSTOMER_ADDRESS_TABLE = createStatement(con,CustomerSql.SQL_UPDATE_CUSTOMER_ADDRESS_TABLE);
	public static final PreparedStatement PS_ADDRESS_INFORMATION = createStatement(con,CustomerSql.SQL_GET_ADDRESS_INFORMATION);
}
