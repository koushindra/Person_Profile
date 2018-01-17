package com.info.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.info.dao.EmployeeDAO;
import com.info.entity.Employee;

@Service
public class EmployeeServiceImp implements EmployeeService
{
	@Autowired
	private EmployeeDAO employeeDAO;

	@Override
	@Transactional
	public  boolean register(Employee employee)
	{
	return	employeeDAO.register(employee);
		
	}

}
