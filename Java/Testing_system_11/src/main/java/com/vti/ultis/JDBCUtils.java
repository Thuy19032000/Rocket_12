package com.vti.ultis;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.vti.ultis.properties.DatabaseProperties;

public class JDBCUtils {
	private Connection connection;
	public DatabaseProperties dp;

	public JDBCUtils() throws FileNotFoundException, IOException {
		dp = new DatabaseProperties();
	}

	public void connect() throws SQLException {
		// TODO Auto-generated method stub
		String url = dp.getValue("url");
		String user = dp.getValue("user");
		String password = dp.getValue("password");
		 
		connection=DriverManager.getConnection(url,user,password);
		
	}
	public Connection getConnection() {
		return connection;
	}

	public void disConnect() throws SQLException {
		// TODO Auto-generated method stub
		connection.close();
	}

}
