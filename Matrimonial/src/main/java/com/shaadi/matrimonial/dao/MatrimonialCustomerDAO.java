package com.shaadi.matrimonial.dao;

import com.shaadi.matrimonial.data.model.Customer;

public interface MatrimonialCustomerDAO {

	public void addCustomer(Customer customer);
	public boolean checkExistingCustomer(String customerId);
	
}
