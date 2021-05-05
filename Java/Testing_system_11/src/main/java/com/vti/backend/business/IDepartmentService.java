package com.vti.backend.business;

import java.util.List;

import com.vti.entity.Department;

public interface IDepartmentService {

	List<Department> showDepartmentList();

	void updateDepartmentNameById(int id, String name);

	
	
}
