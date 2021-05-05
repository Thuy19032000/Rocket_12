package com.vti.backend.business;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.vti.backend.data.DepartmentRepository;
import com.vti.backend.data.IDepartmentRepository;
import com.vti.entity.Department;

public class DepartmentService implements IDepartmentService {
	private IDepartmentRepository depRepository;

	public DepartmentService() {
		try {
			this.depRepository = new DepartmentRepository();
		}catch(FileNotFoundException e) {
			System.out.println("ko tifm thaasy");
		}catch (IOException e) {
			System.out.println("ko ddojc dc file");
		}	
	}
	
	public List<Department> showDepartmentList() {
		// TODO Auto-generated method stub
		try {
			return depRepository.getDepartmentList();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public void updateDepartmentNameById(int id, String name) {
		// TODO Auto-generated method stub
		try {
			depRepository.updateDepartmentNameById(id,name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
