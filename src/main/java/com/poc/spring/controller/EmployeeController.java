package com.poc.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.poc.spring.model.Employee;
import com.poc.spring.service.EmployeeService;

@Controller
public class EmployeeController {
	
	private EmployeeService employeeService;
	
	@Autowired(required=true)
	@Qualifier(value="employeeService")
	public void setEmployeeService(EmployeeService employeeService){
		this.employeeService = employeeService;
	}
	
	@RequestMapping(value = {"/","/employee"}, method = RequestMethod.GET)
	public String listEmployee(Model model) {
		model.addAttribute("listEmployee", this.employeeService.listEmployee());
		return "list_employee";
	}
	
	//For add and update person both
	@RequestMapping(value= "/employee/manipulate", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("employee") Employee employee){
		if(employee.getId() == 0){
			//new employee, add it
			this.employeeService.addEmployee(employee);
		}else{
			//existing employee, call update
			this.employeeService.updateEmployee(employee);
		}
		return "redirect:/employee";
	}
	
	@RequestMapping("/employee/remove/{id}")
    public String removeEmployee(@PathVariable("id") int id){
		
        this.employeeService.removeEmployee(id);
        return "redirect:/employee";
    }
 
    @RequestMapping("/employee/edit/{id}")
    public String editEmployee(@PathVariable("id") int id, Model model){
        model.addAttribute("employee", this.employeeService.getEmployeeById(id));
        return "manipulate_employee";
    }
    
    @RequestMapping("/employee/add")
    public String addEmployee(Model model){
        model.addAttribute("employee", new Employee());
        return "manipulate_employee";
    }
}
