package com.shaadi.matrimonial.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shaadi.matrimonial.dao.MatrimonialCustomerDAO;
import com.shaadi.matrimonial.data.model.Customer;

@Repository
public class MatrimonialCustomerDAOImpl implements MatrimonialCustomerDAO{
	
	private SessionFactory sessionfactory;
	
	@Autowired
    public MatrimonialCustomerDAOImpl(SessionFactory sessionFactory) {
        this.sessionfactory = sessionFactory;
    }
	
	private Session getSession(){
		return sessionfactory.getCurrentSession();
	}

	@Override
	public void addCustomer(Customer customer) {
		getSession().save(customer);
		
	}

	@Override
	public boolean checkExistingCustomer(String email) {
		
		String FIND_CUSTOMER="FROM Customer C WHERE C.email = :emailId";
		Query query = getSession().createQuery(FIND_CUSTOMER);
		query.setParameter("emailId", email);
		return query.list().isEmpty()?false:true;
	}

}
