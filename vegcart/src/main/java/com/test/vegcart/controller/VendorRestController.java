package com.test.vegcart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.MasterService;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.util.LoginUtil;

@RestController
public class VendorRestController {
	
	@Autowired
	VendorService vendorService;
	
	@Autowired
	MasterService masterService;

	
	
	
	
	
	
	@PostMapping("/vendororder1")
	public String vendorOrder(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		model.addAttribute("vendororders", vendorService.getVendorOrders(vendor));
		result="vendororder";
		return result;
	}
	
	
	
	
	
	@GetMapping("/getProducts1")
	public @ResponseBody List<VendorProducts> getProducts(@RequestParam("vendorId")int vendorId) {
		
		List<VendorProducts> vendorProductsl=new ArrayList<>();
		try {
			
			vendorProductsl=vendorService.getProduct(vendorId);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return vendorProductsl;
	}
	
	@PostMapping("/addProduct1")
	public String addProduct(@RequestBody VendorProducts vendorProducts) {
		String result="sucess";
		try {
			
			result=vendorService.addProduct(vendorProducts);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 result="fail";
		}
	
		return result;
	}
	
	
	@PutMapping("/updateProduct1")
	public @ResponseBody VendorProducts UpdateProduct(@RequestBody VendorProducts vendorProducts) {
		String result="success";
		try {
			
			vendorProducts=vendorService.updateProduct(vendorProducts);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vendorProducts;
	}
	
	
	@DeleteMapping("/deleteProduct1")
	public String deleteProduct(@RequestParam("id") int id) {
		String result="vendoraddproduct";
		try {
			
			result=vendorService.deleteProduct(id);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//result="vendoraddproduct";
		result="success";
		return result;
	}

	@GetMapping("/getvendorproducts1")
	public @ResponseBody List<VendorProducts> getAllVendorProducts(@RequestParam String productName){
		return vendorService.getAllVendorProducts(productName);
	}
	
	@PostMapping("/completedelivery1")
	public String completeDelivery(Model model,@RequestParam("orderid") int orderId,HttpServletRequest request) {
		String result="fail";
		try {
			result=vendorService.completeDelivery(orderId);
			Vendor vendor=LoginUtil.getLoginVendor(request);
			model.addAttribute("vendororders", vendorService.getVendorOrders(vendor));
			result="vendororder";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
}
