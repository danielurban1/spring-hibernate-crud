package com.customer.dao;

import java.util.List;

import com.customer.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomers(int theId);

	public void deleteCustomer(int theId);

}
