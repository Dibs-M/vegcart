package com.test.vegcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.test.vegcart.entity.Cart;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Order;
import com.test.vegcart.entity.OrderHistory;
import com.test.vegcart.service.CustomerService;

@RestController
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	@PostMapping("/addcustomer")
	public String addCustomer(@RequestBody Customer customer) {
		String result="fail";
		try {
			result=customerService.addCustomer(customer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	@PostMapping("/additemincart")
	public String addItemInCart(@RequestBody Cart cart) {
		String result="fail";
		try {
			result=customerService.addItemInCart(cart);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	@PostMapping("/placeorder")
	public String placeOrder(@RequestBody Order order) {
		String result="fail";
		try {
			result=customerService.placeOrder(order);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	@PostMapping("/completeorder")
	public String completeOrder(@RequestBody OrderHistory orderHistory) {
		String result="fail";
		try {
			result=customerService.completeOrder(orderHistory);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}
