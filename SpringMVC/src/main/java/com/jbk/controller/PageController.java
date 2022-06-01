package com.jbk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping(value = "/")
	public String loginPage() {
		return "login";

	}

	@RequestMapping(value = "/homePage")
	public String homepage() {
		return "home";

	}

	@RequestMapping(value = "/addEmployeePage")
	public String addEmployeePage() {
		return "addEmployee";

	}

}
