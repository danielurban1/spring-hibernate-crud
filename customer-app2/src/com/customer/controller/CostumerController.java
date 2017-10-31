package com.customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customer.entity.Customer;
import com.customer.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CostumerController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list")
	public String listCostumers(Model theModel){
		
		List<Customer> customer = customerService.getCustomers();
		
		// add the customers to the model
		theModel.addAttribute("customers", customer);
		
		return "list-customers";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel){
		
		Customer customer = new Customer();
		theModel.addAttribute("customer", customer);
		
		return "customer-form";
	}
}
