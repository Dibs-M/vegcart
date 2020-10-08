package com.test.vegcart.service;

import java.util.List;

import com.test.vegcart.entity.Product;
import com.test.vegcart.entity.Units;

public interface MasterService {
	public List<Product> getProducts();
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(int id);
	
	public List<Units> getUnits();
	public void addUnit(Units unit);
	public void updateUnit(Units unit);
	public void deleteUnit(int id);
	
}
