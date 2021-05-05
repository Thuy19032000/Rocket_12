package com.vti.backend.data;

import java.sql.SQLException;
import java.util.List;

import com.vti.entity.Department;

public interface IDepartmentRepository {

	List<Department> getDepartmentList() throws SQLException;

	void updateDepartmentNameById(int id, String name) throws SQLException;

}
