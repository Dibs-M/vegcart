package com.test.vegcart.service;

import java.util.List;

import com.test.vegcart.entity.Cart;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Order;
import com.test.vegcart.entity.OrderHistory;

public interface CustomerService {

	public String addCustomer(Customer customer) throws Exception;
	public String addItemInCart(Cart cart) throws Exception;
	public String placeOrder(Order order)  throws Exception;
	public String completeOrder(OrderHistory orderHistory) throws Exception;
	public Customer getCustomerByMobile(Customer customer) throws Exception;
	
	public String placeOrders(List<Order> orders);
	
	List<Order> getCustomerOrders(Customer customer);
}
