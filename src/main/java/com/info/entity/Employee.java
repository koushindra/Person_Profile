package com.info.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee
{
	private String full_name;
	private String sex;
	private String age;
	private String merital_status;
	private String annual_income;
	private String education;
	private String city;
	private String state;
	private String pin;
	private String job_type;
	private String ailment;
	private String father_name;
	private String father_income;
	
	@Id
	private String email;
	private String password;
	
	private String mobile;
	
	public Employee()
	{
	}

	public Employee(String full_name, String sex, String age, String merital_status, String annual_income, String education, String city, String state, String pin, String job_type, String ailment, String father_name, String father_income, String email, String password, String mobile)
	{

		super();
		this.full_name = full_name;
		this.sex = sex;
		this.age = age;
		this.merital_status = merital_status;
		this.annual_income = annual_income;
		this.education = education;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.job_type = job_type;
		this.ailment = ailment;
		this.father_name = father_name;
		this.father_income = father_income;
		this.email = email;
		this.password = password;
		this.mobile = mobile;
	}

	public String getFull_name()
	{
	
		return full_name;
	}

	public void setFull_name(String full_name)
	{
	
		this.full_name = full_name;
	}

	public String getSex()
	{
	
		return sex;
	}

	public void setSex(String sex)
	{
	
		this.sex = sex;
	}

	public String getAge()
	{
	
		return age;
	}

	public void setAge(String age)
	{
	
		this.age = age;
	}

	public String getMerital_status()
	{
	
		return merital_status;
	}

	public void setMerital_status(String merital_status)
	{
	
		this.merital_status = merital_status;
	}

	public String getAnnual_income()
	{
	
		return annual_income;
	}

	public void setAnnual_income(String annual_income)
	{
	
		this.annual_income = annual_income;
	}

	public String getEducation()
	{
	
		return education;
	}

	public void setEducation(String education)
	{
	
		this.education = education;
	}

	public String getCity()
	{
	
		return city;
	}

	public void setCity(String city)
	{
	
		this.city = city;
	}

	public String getState()
	{
	
		return state;
	}

	public void setState(String state)
	{
	
		this.state = state;
	}

	public String getPin()
	{
	
		return pin;
	}

	public void setPin(String pin)
	{
	
		this.pin = pin;
	}

	public String getJob_type()
	{
	
		return job_type;
	}

	public void setJob_type(String job_type)
	{
	
		this.job_type = job_type;
	}

	public String getAilment()
	{
	
		return ailment;
	}

	public void setAilment(String ailment)
	{
	
		this.ailment = ailment;
	}

	public String getFather_name()
	{
	
		return father_name;
	}

	public void setFather_name(String father_name)
	{
	
		this.father_name = father_name;
	}

	public String getFather_income()
	{
	
		return father_income;
	}

	public void setFather_income(String father_income)
	{
	
		this.father_income = father_income;
	}

	public String getEmail()
	{
	
		return email;
	}

	public void setEmail(String email)
	{
	
		this.email = email;
	}

	public String getPassword()
	{
	
		return password;
	}

	public void setPassword(String password)
	{
	
		this.password = password;
	}

	public String getMobile()
	{
	
		return mobile;
	}

	public void setMobile(String mobile)
	{
	
		this.mobile = mobile;
	}
	
	
	
	
}
