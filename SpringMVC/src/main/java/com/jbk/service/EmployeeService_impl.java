package com.jbk.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.EmployeeDao;
import com.jbk.entity.Employee;

@Service
public class EmployeeService_impl implements EmployeeService {

	@Autowired
	private EmployeeDao dao;
	
	

	@Override
	public Employee saveEmployee(Employee employee) {
		String employeeId = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		employee.setEmployeeId(employeeId);
		String createdDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		Date date = null;
		try {
			date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(createdDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		employee.setCreatedDate(date);
		Employee emp = dao.saveEmployee(employee);
		return emp;
	}

	@Override
	public Employee getEmployeeById(String EmployeeId) {
		Employee Employee = dao.getEmployeeById(EmployeeId);
		return Employee;
	}

	@Override
	public List<Employee> getAllEmployee() {
		List<Employee> list = dao.getAllEmployee();
		return list;
	}

	@Override
	public boolean deleteEmployeeById(String EmployeeId) {

		boolean b = dao.deleteEmployeeById(EmployeeId);
		return b;
	}

	@Override
	public Employee updateEmployee(Employee Employee) {
		Employee emp = dao.updateEmployee(Employee);
		return emp;
	}

	@Override
	public Employee login(Employee employee) {
		Employee emp = dao.login(employee);
		return emp;
	}
}
