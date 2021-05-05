package com.vti.backend.presentation;

import java.lang.ModuleLayer.Controller;
import java.util.List;

import com.vti.backend.business.DepartmentService;
import com.vti.backend.business.IDepartmentService;
import com.vti.entity.Department;

public class DepartmentController {
	private IDepartmentService depService;

	public DepartmentController() {
		this.depService = new DepartmentService();
	}

	public List<Department> showDepartmentList() {

		return depService.showDepartmentList();
	}

	public void updateDepartmentNameById(int id, String name) {
		// TODO Auto-generated method stub
		depService.updateDepartmentNameById(id,name);
	}

}
