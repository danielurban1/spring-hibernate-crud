package com.customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer){
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
		
	}
	
	@GetMapping("/showFormForUpdate")
	public String updateLink(@RequestParam("customerId")int theId, Model theModel){
		
		Customer customer = customerService.getCustomers(theId);
		
		theModel.addAttribute("customer", customer);
		
		return "customer-form";
		
	}
	
	@GetMapping("/delete")
	public String deleteLink(@RequestParam("customerId")int theId){
		
		customerService.deleteCustomer(theId);
		
		return "redirect:/customer/list";
		
	}
}
