package com.test.vegcart.service.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.Order;

public interface OrderDAO extends CrudRepository<Order, Integer> {

	public List<Order> findByVendorIdAndOrderStatus(int vendorId,String orderStatus);
	
	public List<Order> findByCustomerMobile(String customerMobile);
	
	public List<Order> findByCustomerMobileAndOrderStatus(String customerMobile,String orderStatus);
}
