package com.info.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Employee;
import com.info.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController
{
	@Autowired
	private EmployeeService employeeService;
	
	@PostMapping("/register")
	public ModelAndView register(@ModelAttribute Employee employee, BindingResult bindingResult)
	{
		ModelAndView mv=new ModelAndView();
		
		boolean flag=employeeService.register(employee);
		
		if(bindingResult.hasErrors())
		{
			System.out.println(" binding errors: "+bindingResult.getAllErrors());
		}
		
		if(flag)
		{
			mv.setViewName("redirect:/success.jsp");
		}
		else
		{
			mv.setViewName("failure.jsp");
		}
	
		return mv;
	}
}
