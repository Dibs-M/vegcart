package com.test.vegcart.service.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.test.vegcart.entity.VendorProducts;

public interface VendorProductsDAO extends CrudRepository<VendorProducts, Integer> {

	public List<VendorProducts> findByProductName(String productName);
	
}
