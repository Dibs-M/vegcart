package com.test.vegcart.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.vegcart.entity.Order;
import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.service.dao.OrderDAO;
import com.test.vegcart.service.dao.VendorDAO;
import com.test.vegcart.service.dao.VendorProductsDAO;

@Service
public class VendorServiceImpl implements VendorService {

	@Autowired
	VendorDAO vendorDAO;
	
	@Autowired
	VendorProductsDAO vendorProductsDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
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

	@Transactional
	@Override
	public List<VendorProducts> getAllVendorProducts(String productName) {
		// TODO Auto-generated method stub
		return vendorProductsDAO.findByProductName(productName);
	}

	@Transactional
	@Override
	public List<VendorProducts> getAllVendorProducts() {
		// TODO Auto-generated method stub
		List<VendorProducts> vendorProducts=new ArrayList<VendorProducts>();
		vendorProductsDAO.findAll().forEach(vendorProducts::add);
		return vendorProducts;
	}

	@Transactional
	@Override
	public List<VendorProducts> getVendorProductByIds(List<Integer> ids) {
		// TODO Auto-generated method stub
		List<VendorProducts> vendorProducts=new ArrayList<VendorProducts>();
		vendorProductsDAO.findAllById(ids).forEach(vendorProducts::add);
		return vendorProducts;
	}

	@Transactional
	@Override
	public Vendor getVendorByMobile(Vendor vendor) {
		// TODO Auto-generated method stub
		return vendorDAO.getVendorByVendorMobile(vendor.getVendorMobile());
	}

	@Transactional
	@Override
	public List<Order> getVendorOrders(Vendor vendor) {
		// TODO Auto-generated method stub
		List<Order> vendorOrders=new ArrayList<Order>();
		orderDAO.findByVendorIdAndOrderStatus(vendor.getId(),"Recieved").forEach(vendorOrders::add);
		return vendorOrders;
	}

	@Transactional
	@Override
	public String completeDelivery(int orderId) {
		// TODO Auto-generated method stub
		Order order=orderDAO.findById(orderId).get();
		order.setOrderStatus("Delivered");
		orderDAO.save(order);
		return "success";
	}


	

}
