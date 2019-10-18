package com.luv2code.springdemo.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public Customer getCustomer() {

		return null;
	}

	
	@Override
	public List<Customer> getCustomers() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
														// In HQL query, don't write the table name but write your Entity class name in your query!
		Query<Customer> theQuery = currentSession.createQuery("FROM Customer", Customer.class);
		
		List<Customer> customers = theQuery.getResultList();
		
		
		return customers;
	}
	

}
