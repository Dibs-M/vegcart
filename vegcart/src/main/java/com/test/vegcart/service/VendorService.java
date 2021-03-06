package com.test.vegcart.service;

import java.util.List;

import com.test.vegcart.entity.Order;
import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;

public interface VendorService {
	public String registerVendor(Vendor vendor) throws Exception;
	public String addProduct(VendorProducts vendorProducts) throws Exception;
	public List<VendorProducts> getAllVendorProducts(String productName);
	public List<VendorProducts> getAllVendorProducts();
	
	public List<VendorProducts> getVendorProductByIds(List<Integer> ids);
	
	public Vendor getVendorByMobile(Vendor vendor);
	
	public List<Order> getVendorOrders(Vendor vendor);
	
	public String completeDelivery(int orderId);
	
}
