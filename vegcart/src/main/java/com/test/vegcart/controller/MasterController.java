package com.test.vegcart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.test.vegcart.entity.Product;
import com.test.vegcart.entity.Units;
import com.test.vegcart.service.MasterService;

@RestController
public class MasterController {

	@Autowired
	MasterService masterService;
	
	@GetMapping("/getproducts")
	public List<Product> getProducts(){
		
		return masterService.getProducts();
	}
	
	@GetMapping("/getunits")
	public List<Units> getUnits(){
		
		return masterService.getUnits();
	}
}
