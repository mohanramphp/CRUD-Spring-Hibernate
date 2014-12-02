package com.poc.spring.dao;

import java.util.List;

import com.poc.spring.model.Employee;

public interface EmployeeDAO {
	public void addEmployee(Employee employee);
	
	public void updateEmployee(Employee employee);
	
	public List<Employee> listEmployee();
	
	public Employee getEmployeeById(int id);
	
	public void removeEmployee(int id);
}
