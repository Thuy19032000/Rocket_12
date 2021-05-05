package com.vti.frontend;

import java.util.List;

import com.vti.backend.presentation.DepartmentController;
import com.vti.entity.Department;

public class Program {
	
	private static DepartmentController departmentController;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		departmentController=new DepartmentController();
		showDepartmentList();
		int id=1;
		String name="Test11";
		updateDepartmentNameById(id,name);
	}

	private static void updateDepartmentNameById(int id, String name) {
		departmentController.updateDepartmentNameById(id,name);
		
		
	}

	private static void showDepartmentList() {
		// TODO Auto-generated method stub
		List<Department> departments = departmentController.showDepartmentList();
		for(Department d:departments)
		{
			System.out.println(d.toString());
		}
	}

}
