package com.test.vegcart.service.impl;

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

}
