package com.test.vegcart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.service.dao.VendorDAO;
import com.test.vegcart.service.dao.VendorProductsDAO;

@Service
public class VendorServiceImpl implements VendorService {

	@Autowired
	VendorDAO vendorDAO;
	
	@Autowired
	VendorProductsDAO vendorProductsDAO;
	
	@Override
	@Transactional
	public String registerVendor(Vendor vendor) throws Exception {
		// TODO Auto-generated method stub
		vendorDAO.save(vendor);
		return "success";
	}

	@Transactional
	@Override
	public String addProduct(VendorProducts vendorProducts) throws Exception {
		// TODO Auto-generated method stub
		vendorProductsDAO.save(vendorProducts);
		return "success";
	}

	@Override
	public List<VendorProducts> getAllVendorProducts(String productName) {
		// TODO Auto-generated method stub
		return vendorProductsDAO.findByProductName(productName);
	}

	

}
