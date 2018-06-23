package com.shaadi.matrimonial.service;

import com.shaadi.matrimonial.data.model.Customer;

public interface MatrimonialCustomerService {
	public void addCustomer(Customer customer);
	public boolean checkExistingCustomer(String email);
}
