package com.info.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.info.entity.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean register(Employee employee)
	{
		boolean flag=true;

		try {
			Session session = sessionFactory.getCurrentSession();
			
			Query<String> query=session.createQuery("select email from Employee");
			
			List<String> allEmails = query.list();

			for (String email : allEmails)
			{
				if (email.equalsIgnoreCase(employee.getEmail()))
				{
					System.out.println("You are already registerd");
					flag=false;
				}
			}
			if(flag==true)
			{
				System.out.println("email is :"+employee.getEmail());
				session.save(employee);
				System.out.println("registration is being done!!!");
				flag=true;
			}
		}
		catch(Exception e)
		{
			System.out.println("exception occured" + e.getMessage());
			flag=false;
		}
		return flag;
	}

}
