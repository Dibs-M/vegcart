package com.test.vegcart.service;

import java.util.List;

import com.test.vegcart.entity.Product;
import com.test.vegcart.entity.Units;

public interface MasterService {
	public List<Product> getProducts();
	public List<Units> getUnits();
}
