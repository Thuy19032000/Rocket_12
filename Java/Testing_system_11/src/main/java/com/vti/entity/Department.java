package com.vti.entity;

public class Department {
	
	private int Department_ID;
	private String Department_Name;
	public int getDepartment_ID() {
		return Department_ID;
	}
	public void setDepartment_ID(int department_ID) {
		Department_ID = department_ID;
	}
	public String getDepartment_Name() {
		return Department_Name;
	}
	public void setDepartment_Name(String department_Name) {
		Department_Name = department_Name;
	}
	public Department(int department_ID, String department_Name) {
		super();
		Department_ID = department_ID;
		Department_Name = department_Name;
	}
	@Override
	public String toString() {
		return "Department [Department_ID=" + Department_ID + ", Department_Name=" + Department_Name + "]";
	}
	

}
