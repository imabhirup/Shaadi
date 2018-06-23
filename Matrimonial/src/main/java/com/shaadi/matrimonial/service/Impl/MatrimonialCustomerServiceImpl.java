package com.shaadi.matrimonial.service.Impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shaadi.matrimonial.dao.MatrimonialCustomerDAO;
import com.shaadi.matrimonial.data.model.Customer;
import com.shaadi.matrimonial.service.MatrimonialCustomerService;

@Service
@Transactional
public class MatrimonialCustomerServiceImpl implements MatrimonialCustomerService{
	
	MatrimonialCustomerDAO customerDao;
	
	@Autowired
	public void setCustomerDao(MatrimonialCustomerDAO customerDao) {
		this.customerDao = customerDao;
	}
	@Override
	public void addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.addCustomer(customer);
		
	}
	@Override
	public boolean checkExistingCustomer(String email) {
		// TODO Auto-generated method stub
		return customerDao.checkExistingCustomer(email);
	}

}
