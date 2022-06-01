package com.jbk.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee {

	@Id
	private String employeeId;
	private String username;
	private String password;

	private Long salary;
	private String department;
	private String status = "inactive";
	private String role;
	private Date createdDate;
	
	private String gender;
	private String phone;
	private String email;
	private String question;
	private String answer;
	

	public Employee() {
		super();

	}


	public Employee(String employeeId, String username, String password, Long salary, String department, String status,
			String role, Date createdDate, String gender, String phone, String email, String question, String answer) {
		super();
		this.employeeId = employeeId;
		this.username = username;
		this.password = password;
		this.salary = salary;
		this.department = department;
		this.status = status;
		this.role = role;
		this.createdDate = createdDate;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.question = question;
		this.answer = answer;
	}


	public String getEmployeeId() {
		return employeeId;
	}


	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Long getSalary() {
		return salary;
	}


	public void setSalary(Long salary) {
		this.salary = salary;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", username=" + username + ", password=" + password + ", salary="
				+ salary + ", department=" + department + ", status=" + status + ", role=" + role + ", createdDate="
				+ createdDate + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", question="
				+ question + ", answer=" + answer + "]";
	}

	

}
