package com.info.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.info.entity.Employee;

@Controller
public class MyDispatcher
{
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping(value= {"","/"})
	public ModelAndView mainPage()
	{
		ModelAndView mv=new ModelAndView("main");
		
		Employee emp=new Employee();
		System.out.println("main Page runned!!!");
		mv.addObject("employee", new Employee());
	
		
		return mv;
	}
	
}
