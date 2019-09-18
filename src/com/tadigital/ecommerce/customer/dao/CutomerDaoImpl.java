package com.tadigital.ecommerce.customer.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Connection;

import com.tadigital.ecommerce.controller.HomePageControllerServlet;
import com.tadigital.ecommerce.customer.entity.Address;
import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.dao.Doa;
import org.apache.log4j.*;

public class CutomerDaoImpl extends Doa implements CustomerDao {
	
	private ResultSet rs = null;
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private PreparedStatement pstmt1 = null;
	private static final Logger Log = Logger.getLogger(HomePageControllerServlet.class.getName());
	
	@Override
	public Customer checkCustomer(String email,String password,Customer cust) {
		
		Log.info("execution started");
		try {
			 con = createConnection();
			 pstmt = createStatement(con,CustomerSql.SQL_LOGIN_CUSTOMER);
			 pstmt.setString(1,email);
			 pstmt.setString(2,password);
			 rs = pstmt.executeQuery();
			 if (rs.next()) {
				 cust = new Customer();
				 cust.setCustId(rs.getInt(1));
				 cust.setCustFname(rs.getString(2));
				 cust.setCustLname(rs.getString(3));
				 cust.setCustEmail(email);
				 cust.setCustGender(rs.getString(4));
				 cust.setCustDOB(rs.getString(5));
				 cust.setCustPwd(password);
				 cust.setCustContactNo(rs.getString(8));
				 Log.info("execution ended");
				 return cust;
			 }
		} catch (SQLException sqle) {
			Log.error(sqle);
			
		} catch (NullPointerException e) {
			Log.error(e);
			
		} finally {
			closeResultSet(rs);
			closeStatement(pstmt);
			closeConnection(con);
		}
		
		return cust;
	}
	
	@Override
	public boolean registerCustomer(String fname,String lname,String email,String pass) {
		
		Log.info("execution started");
		con = createConnection();
		pstmt1 = createStatement(con, CustomerSql.SQL_REGISTER_CUSTOMER);
		
		try {
			pstmt1.setString(1,fname);
			pstmt1.setString(2,lname);
			pstmt1.setString(3,email);
			pstmt1.setString(4,pass);
			System.out.println("here is the error");
			int rows = pstmt1.executeUpdate();
			if (rows > 0) {
				Log.info("execution ended");
				return true;
			}
		} catch (SQLException e) {
			Log.error(e);
		} finally {
			closeStatement(pstmt);
			closeStatement(pstmt1);
			closeConnection(con);
			Log.info("execution ended");
		}
		
		Log.info("execution ended");
		return false;
	}
	@Override
	public boolean updatePassword(String email,String password) {
		Log.info("execution started");
		try {
			con = createConnection();
			PreparedStatement pstmt = createStatement(con, CustomerSql.SQL_CHANGE_PASSWORD);
			pstmt.setString(1, password);
			pstmt.setString(2, email);
			int rows = pstmt.executeUpdate();
			if (rows > 0) {
				Log.info("execution ended");
				return true;
			}
		} catch (SQLException e) {
			Log.error(e);
		} finally {
			closeStatement(pstmt);
			closeConnection(con);
			Log.info("execution ended");
		}
		return false;
	}

	@Override
	public boolean updatePersonalInfo(Customer customer, Address address) {
		
		Log.info("execution started");
		int custId = customer.getCustId();
		con = createConnection();
		PreparedStatement pstmt1 = createStatement(con, CustomerSql.SQL_UPDATE_CUSTOMER_INFORMATION);
		PreparedStatement pstmt2 = createStatement(con, CustomerSql.SQL_UPDATE_CUSTOMER_ADDRESS_TABLE);
		try {
			pstmt1.setString(1, customer.getCustFname());
			pstmt1.setString(2, customer.getCustLname());
			pstmt1.setString(3, customer.getCustGender());
			pstmt1.setString(4, customer.getCustDOB());
			pstmt1.setString(5, customer.getCustEmail());
			pstmt1.setString(6, customer.getCustContactNo());
			pstmt1.setInt(7, custId);
			int rows = pstmt1.executeUpdate();
			pstmt2.setString(1, address.getAddress());
			pstmt2.setString(2, address.getCity());
			pstmt2.setString(3, address.getPincode());
			pstmt2.setString(4, address.getState());
			pstmt2.setString(5, address.getCountry());
			pstmt2.setInt(6, custId);
			pstmt2.setInt(7, address.getAddId());
			int row = pstmt2.executeUpdate();
			if (rows > 0 && row > 0) {
				Log.info("execution ended");
				return true;
			}
		} catch (SQLException e) {
			Log.error(e);
		} finally {
			closeStatement(pstmt1);
			closeStatement(pstmt2);
			closeConnection(con);
			Log.info("execution ended");
		}
		Log.info("execution ended");
		return false;
	}

	@Override
	public Address getAddressInfo(int custId) {
		
		Log.info("execution started");
		Address addr = new Address();
		con = createConnection();
		PreparedStatement pstmt = createStatement(con, CustomerSql.SQL_GET_ADDRESS_INFORMATION);
				
		try {
			pstmt.setInt(1, custId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				 addr.setAddId(rs.getInt(1));
				 addr.setAddress(rs.getString(3));
				 addr.setCity(rs.getString(4));
				 addr.setCountry(rs.getString(7));
				 addr.setPincode(rs.getString(5));
				 addr.setState(rs.getString(6));
				 Log.info("execution ended");
				 return addr;
			 }
		} catch (SQLException e1) {
			Log.error(e1);
		} finally {
			closeResultSet(rs);
			closeStatement(pstmt);
			closeConnection(con);
			Log.info("execution ended");
		}
		Log.info("execution ended");
		return addr;
	}
}
