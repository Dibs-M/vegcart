package com.test.vegcart.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.vegcart.entity.Admin;
import com.test.vegcart.entity.Order;
import com.test.vegcart.service.AdminService;
import com.test.vegcart.service.dao.AdminDAO;
import com.test.vegcart.service.dao.OrderDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDAO adminDAO;

	@Autowired
	OrderDAO orderDAO;
	
	@Override
	public Admin getAdminByUserName(Admin admin) {
		// TODO Auto-generated method stub
		return adminDAO.findOne(admin.getUserName());
	}

	@Override
	public List<Order> getCustomerOrders() {
		// TODO Auto-generated method stub
		List<Order> orders=new ArrayList<>();
		Iterator<Order> itr = orderDAO.findAll().iterator();
		while(itr.hasNext()) {
			orders.add(itr.next());
		}
		return orders;
	}

}
