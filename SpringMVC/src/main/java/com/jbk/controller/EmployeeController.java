package com.jbk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jbk.entity.Employee;
import com.jbk.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;

	@PostMapping("/loginProcess")
	public ModelAndView loginProcess(@ModelAttribute Employee employee, Model model) {

		Employee emp = service.login(employee);

		if (emp != null) {

			return new ModelAndView("home");
		} else {

			return new ModelAndView("login", "msg", "Invalid Credentials !!");

		}

	}

	@PostMapping("/saveEmployee")
	public ModelAndView saveEmployee(@ModelAttribute Employee employee) {
		
	Employee emp=service.saveEmployee(employee);
	if (emp != null) {

		return new ModelAndView("addEmployee","msg","saved Successfully !!");
	} else {

		return new ModelAndView("addEmployee","msg"," Not saved....Something Wrong!!");

	}

	}
	@GetMapping(value = "/getEmployee")
	public ModelAndView getEmployee(@RequestParam String eid,@RequestParam String msg,Model model){

		Employee employee = service.getEmployeeById(eid);
		if(!msg.equalsIgnoreCase("null"))
		{
			model.addAttribute("msg", msg);
		}
		model.addAttribute("employee", employee);

		return new ModelAndView("profile");

	}

	@GetMapping(value = "/getAllEmployee")
	public ModelAndView getAllEmployee() {
		List<Employee> list = service.getAllEmployee();

		return new ModelAndView("listOfEmployee", "employees", list);

	}

	@GetMapping(value = "/deleteEmployeeById")
	public String deleteEmployeeById(@RequestParam String eid) {
		boolean b = service.deleteEmployeeById(eid);
		System.out.println(b);
		if (b) {
			return "redirect:/getAllEmployee";
		} else {
			return "redirect:/getAllEmployee";

		}

	}

	@PostMapping(value = "/updateEmployee")
	public ModelAndView updateEmployee(@ModelAttribute Employee employee) {
		Employee emp = service.updateEmployee(employee);
		if(emp!=null) {
			return  new ModelAndView("redirect:/getEmployee?eid="+employee.getEmployeeId()+"&msg=Updated");
		}
		else {
			return new ModelAndView("redirect:/getEmployee?eid="+employee.getEmployeeId()+"&msg=Not Updated");
		}

	}

}
