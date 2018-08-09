package com.test.vegcart.service;

import java.util.List;

import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;

public interface VendorService {
	public String registerVendor(Vendor vendor) throws Exception;
	public String addProduct(VendorProducts vendorProducts) throws Exception;
	public List<VendorProducts> getAllVendorProducts(String productName);
}
