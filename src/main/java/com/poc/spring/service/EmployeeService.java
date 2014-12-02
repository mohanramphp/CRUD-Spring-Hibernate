package com.poc.spring.service;

import java.util.List;

import com.poc.spring.model.Employee;

public interface EmployeeService {
	public void addEmployee(Employee employee);
	
	public void updateEmployee(Employee employee);
	
	public List<Employee> listEmployee();
	
	public Employee getEmployeeById(int id);
	
	public void removeEmployee(int id);
	
}
