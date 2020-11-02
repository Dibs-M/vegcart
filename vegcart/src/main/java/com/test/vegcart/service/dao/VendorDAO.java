package com.test.vegcart.service.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.test.vegcart.entity.Vendor;

@Repository
public interface VendorDAO extends CrudRepository<Vendor, Integer> {

	public Vendor getVendorByVendorMobile(String vendorMobile);
	
	public Vendor getVendorByEmail(String email);
	
}
