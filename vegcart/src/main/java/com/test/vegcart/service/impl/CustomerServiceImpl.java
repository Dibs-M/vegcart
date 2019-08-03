package com.test.vegcart.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.vegcart.entity.Cart;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Order;
import com.test.vegcart.entity.OrderHistory;
import com.test.vegcart.service.CustomerService;
import com.test.vegcart.service.dao.CartDAO;
import com.test.vegcart.service.dao.CustomerDAO;
import com.test.vegcart.service.dao.OrderDAO;
import com.test.vegcart.service.dao.OrderHistoryDAO;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDAO customerDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderHistoryDAO oderHistoryDAO;
	
	@Transactional
	@Override
	public String addCustomer(Customer customer) throws Exception {
		// TODO Auto-generated method stub
		customerDAO.save(customer);
		return "success";
	}

	@Transactional
	@Override
	public String addItemInCart(Cart cart) throws Exception {
		// TODO Auto-generated method stub
		cartDAO.save(cart);
		return "success";
	}

	@Transactional
	@Override
	public String placeOrder(Order order) throws Exception {
		// TODO Auto-generated method stub
		orderDAO.save(order);
		return "success";
	}

	@Transactional
	@Override
	public String completeOrder(OrderHistory orderHistory) throws Exception {
		// TODO Auto-generated method stub
		oderHistoryDAO.save(orderHistory);
		return "success";
	}

	@Transactional
	@Override
	public Customer getCustomerByMobile(Customer customer) throws Exception {
		// TODO Auto-generated method stub
		
		Iterator<Customer> itr=customerDAO.findAll(Arrays.asList(customer.getMobile())).iterator();
		Customer customer1=null;
		while(itr.hasNext()) {
			customer1=itr.next();
		}
		//return customerDAO.findById(customer.getMobile());
		return customer1;
	}

	@Transactional
	@Override
	public String placeOrders(List<Order> orders) {
		// TODO Auto-generated method stub
		orderDAO.save(orders);
		return "success";
	}

	@Override
	public List<Order> getCustomerOrders(Customer customer) {
		// TODO Auto-generated method stub
		List<Order> orderList=new ArrayList<Order>();
		//orderDAO.findByCustomerMobile(customer.getMobile()).forEach(orderList::add);
		Iterator<Order> itr=orderDAO.findByCustomerMobile(customer.getMobile()).iterator();
		while(itr.hasNext()) {
			orderList.add(itr.next());
		}
		return orderList;
	}

}
