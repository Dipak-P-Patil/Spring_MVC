package com.jbk.service;

import java.util.List;



import com.jbk.entity.Employee;

public interface EmployeeService {
	
	
	public Employee login(Employee employee);
	
	
	public Employee saveEmployee (Employee employee);
	public Employee getEmployeeById (String employeeId);
	
	public List<Employee> getAllEmployee();
	public boolean deleteEmployeeById (String employeeId);
	public Employee  updateEmployee (Employee employee);
	
	
	
	
	
	

}
