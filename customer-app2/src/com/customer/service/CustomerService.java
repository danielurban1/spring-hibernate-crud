package com.customer.service;

import java.util.List;

import com.customer.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomers(int theId);

	public void deleteCustomer(int theId);

	
}