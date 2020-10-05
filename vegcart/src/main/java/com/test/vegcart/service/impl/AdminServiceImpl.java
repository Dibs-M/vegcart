package com.test.vegcart.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.vegcart.entity.Admin;
import com.test.vegcart.service.AdminService;
import com.test.vegcart.service.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public Admin getAdminByUserName(Admin admin) {
		// TODO Auto-generated method stub
		return adminDAO.findOne(admin.getUserName());
	}

}
