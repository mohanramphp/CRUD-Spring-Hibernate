package com.poc.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.poc.spring.dao.EmployeeDAO;
import com.poc.spring.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	private EmployeeDAO employeeDAO;

	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}

	@Override
	@Transactional
	public void addEmployee(Employee employee) {		
		this.employeeDAO.addEmployee(employee);
	}

	@Override
	@Transactional
	public void updateEmployee(Employee employee) {
		this.employeeDAO.updateEmployee(employee);
	}
	
	@Override
	@Transactional
	public List<Employee> listEmployee() {
		return this.employeeDAO.listEmployee();
	}

	
	@Override
	@Transactional
	public Employee getEmployeeById(int id) {
		return this.employeeDAO.getEmployeeById(id);
	}

	@Override
	@Transactional
	public void removeEmployee(int id) {
		this.employeeDAO.removeEmployee(id);
	}
}
