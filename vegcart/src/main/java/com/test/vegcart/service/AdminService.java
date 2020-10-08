package com.test.vegcart.service;

import java.util.List;

import com.test.vegcart.entity.Admin;
import com.test.vegcart.entity.Order;

public interface AdminService {
	
	public Admin getAdminByUserName(Admin admin);
	
	public List<Order> getCustomerOrders();
	
	public void deleteCustomerOrder(int id);

}
