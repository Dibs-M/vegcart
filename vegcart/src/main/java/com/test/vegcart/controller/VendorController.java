package com.test.vegcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.MasterService;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.util.LoginUtil;

@Controller
public class VendorController {
	
	@Autowired
	VendorService vendorService;
	
	@Autowired
	MasterService masterService;

	@GetMapping("/vendorlogin")
	public String vendorLogin() {
		
		return "vendorlogin";
	}
	
	
	@PostMapping("/vendorregisteration")
	public String vendorRegistration() {
		
		return "vendorregister";
	}
	
	@PostMapping("/registervendor")
	public String registerVendor(@ModelAttribute Vendor vendor) {
		String result="fail";
		
		try {
			result=vendorService.registerVendor(vendor);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			result="vendorlogin";
		}else {
			result="vendorregister";
		}
		
		return result;
	}
	
	
	@PostMapping("/loginvendor")
	public String loginUser(Model model,@ModelAttribute Vendor vendor,HttpServletRequest request) {
		String result="fail";
		try {
			Vendor vendorEntity=vendorService.getVendorByMobile(vendor);
			if(null!=vendorEntity && vendorEntity.getVendorPassword().equals(vendor.getVendorPassword())) {
				result="success";
			}
			vendor=vendorEntity;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			model.addAttribute("vendororders", vendorService.getVendorOrders(vendor));
			LoginUtil.setLoginVendor(request, vendor);
			result="vendororder";
		}else {
			result="vendorlogin";
		}
		
		return result;
	}
	
	
	@PostMapping("/vendororder")
	public String vendorOrder(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		model.addAttribute("vendororders", vendorService.getVendorOrders(vendor));
		result="vendororder";
		return result;
	}
	
	
	
	@GetMapping("/addvendorproductp")
	public String addVendorProduct(Model model) {
		String result="vendoraddproduct";
		model.addAttribute("masterproducts", masterService.getProducts());
		model.addAttribute("masterunits", masterService.getUnits());
		return result;
	}
	
	@PostMapping("/addProduct")
	public String addProduct(Model model,VendorProducts vendorProducts,HttpServletRequest request) {
		String result="vendoraddproduct";
		try {
			Vendor vendor=LoginUtil.getLoginVendor(request);
			vendorProducts.setVendorId(vendor.getId());
			result=vendorService.addProduct(vendorProducts);
			model.addAttribute("masterproducts", masterService.getProducts());
			model.addAttribute("masterunits", masterService.getUnits());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result="vendoraddproduct";
		return result;
	}

	@GetMapping("/getvendorproducts")
	public @ResponseBody List<VendorProducts> getAllVendorProducts(@RequestParam String productName){
		return vendorService.getAllVendorProducts(productName);
	}
	
	@PostMapping("/completedelivery")
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
