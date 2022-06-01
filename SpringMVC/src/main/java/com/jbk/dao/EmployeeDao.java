package com.jbk.dao;

import java.util.List;

import com.jbk.entity.Employee;

public interface EmployeeDao {
	
	
public Employee login(Employee employee);
	
	
	public Employee saveEmployee (Employee employee);
	public Employee getEmployeeById (String employeeId);
	
	public List<Employee> getAllEmployee();
	public boolean deleteEmployeeById (String employeeId);
	public Employee  updateEmployee (Employee employee);


	
	
	

}
