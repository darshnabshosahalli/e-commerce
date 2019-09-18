package com.tadigital.ecommerce.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import org.apache.log4j.*;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class Doa {

	private static Properties properties = new Properties();
	private static BasicDataSource basicDataSource = null;
	private static String driverClass = null;
	private static String connectionUrl = null;
	private static String username = null;
	private static String password = null;
	private static final Logger Log = Logger.getLogger(Doa.class.getName());
	   
    static {
        InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties");
        try {
            properties.load(inputStream);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
        driverClass = properties.getProperty("db.driverclass");
        connectionUrl = properties.getProperty("db.connectionurl");
        username = properties.getProperty("db.username");
        password = properties.getProperty("db.password");
        System.out.println(driverClass);
        System.out.println(connectionUrl);
        System.out.println(username);
        basicDataSource = new BasicDataSource();
        
        basicDataSource.setDriverClassName(driverClass);
        basicDataSource.setUrl(connectionUrl);
        basicDataSource.setUsername(username);
        basicDataSource.setPassword(password);
        basicDataSource.setPoolPreparedStatements(true);
        basicDataSource.setMaxTotal(4);
    }
    
	protected static Connection createConnection() {
		
		Log.info("execution started");
		Connection con = null;
		// JDBC DRIVER CLASS LOADED
		 try {
	            con = basicDataSource.getConnection();
	            System.out.println(con);
	        } catch (SQLException sqle) {
	            sqle.printStackTrace();
	        }
		 Log.info("execution ended");
		return con;
	}
	protected static PreparedStatement createStatement(Connection con,String sql) {
		Log.info("execution started");
		PreparedStatement stmt = null;
		try {
			stmt = con.prepareStatement(sql);// STATEMENT CREATED
		} catch (SQLException e) {
			Log.error(e);
		} 
		Log.info("execution ended");
		return stmt;
	}
	protected void closeStatement(Statement stmt) {
		
		Log.info("execution started");
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				Log.error(e);
			} 
		}
		Log.info("execution ended");
		
	}
	protected void closeResultSet(ResultSet rs) {
		
		Log.info("execution started");
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				Log.error(e);
			}
		}
		Log.info("execution ended");
	}  
	protected void closeConnection(Connection con) {
		
		Log.info("execution started");
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				Log.error(e);	
			}
		}
		Log.info("execution ended");
	}
}
