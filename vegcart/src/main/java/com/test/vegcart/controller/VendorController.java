package com.test.vegcart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.VendorService;

@Controller
public class VendorController {
	
	@Autowired
	VendorService vendorService;

	@PostMapping("/registervendor")
	public @ResponseBody String registerVendor(@RequestBody Vendor vendor) {
		String result="fail";
		
		try {
			result=vendorService.registerVendor(vendor);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	@PostMapping("/addProduct")
	public @ResponseBody String addProduct(@RequestBody VendorProducts vendorProducts) {
		String result="fail";
		try {
			result=vendorService.addProduct(vendorProducts);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@GetMapping("/getvendorproducts")
	public @ResponseBody List<VendorProducts> getAllVendorProducts(@RequestParam String productName){
		return vendorService.getAllVendorProducts(productName);
	}
}
