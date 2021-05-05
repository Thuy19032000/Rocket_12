package com.vti.backend.data;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vti.entity.Department;
import com.vti.ultis.JDBCUtils;
import com.vti.ultis.properties.MesProperties;

public class DepartmentRepository implements IDepartmentRepository {
	private JDBCUtils jdbcUtils;
	private MesProperties mesProperties;
	
	public DepartmentRepository() throws FileNotFoundException, IOException {
		// TODO Auto-generated constructor stub
		this.jdbcUtils = new JDBCUtils();
		this.mesProperties=new MesProperties();
	}

	public List<Department> getDepartmentList() throws SQLException {
		List<Department> departments=new ArrayList<Department>();
		
		//  b1: connect database
		jdbcUtils.connect();
		// b2: connect
		Connection connection=jdbcUtils.getConnection();
		String sql="SELECT * FROM `Department`";
		Statement statement=connection.createStatement();
		// b3: Execu Query
		ResultSet resultSet=statement.executeQuery(sql);
		while(resultSet.next()) {
			int number=resultSet.getInt(1);
			String name=resultSet.getNString(2);
			Department d=new Department(number, name);
			departments.add(d);
		}
		jdbcUtils.disConnect();
		return departments;
		
	}

	public void updateDepartmentNameById(int id, String name) throws SQLException {
		
		jdbcUtils.connect();
		Connection connection=jdbcUtils.getConnection();
		String sql="UPDATE Department SET Department_Name=? Where Department_ID=? ";
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setNString(1, name);
		preparedStatement.setInt(2, id);
		int count=preparedStatement.executeUpdate();
		if(count>0) {
			System.out.println(mesProperties.getValue("department.update.success"));
		}else {
			System.out.println(mesProperties.getValue("department.update.faile"));
		}
	}

}
