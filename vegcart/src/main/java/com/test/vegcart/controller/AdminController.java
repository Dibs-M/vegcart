package com.test.vegcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.vegcart.entity.Admin;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Vendor;
import com.test.vegcart.service.AdminService;
import com.test.vegcart.service.CustomerService;
import com.test.vegcart.service.MasterService;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.util.ApplicationConstant;
import com.test.vegcart.util.LoginUtil;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	CustomerService customerService;;
	
	@Autowired
	VendorService vendorService;
	
	
	@Autowired
	MasterService masterService;

	@GetMapping("/adminlogin")
	public String vendorLogin() {
		
		return "adminlogin";
	}
	
	@PostMapping("/loginadmin")
	public String loginAdmin(Model model,@ModelAttribute Admin admin,HttpServletRequest request) {
		String result="fail";
		try {
			Admin adminEntity=adminService.getAdminByUserName(admin);
			if(null!=adminEntity && adminEntity.getActive().equals("Y") && adminEntity.getPassword().equals(admin.getPassword())) {
				result="success";
			}
			admin=adminEntity;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			model.addAttribute("customers", getCustomers());
			admin.setUserType("Admin");
			LoginUtil.setLoginAdmin(request, admin);
			result="admincustomers";
		}else {
			result="adminlogin";
		}
		
		return result;
	}
	
	@GetMapping("/admincustomers")
	public String getAllCustomers(Model model){
		model.addAttribute("customers", getCustomers());
		return "admincustomerpage";
	}
	
	@GetMapping("/adminvendors")
	public String getAllVendors(Model model){
		model.addAttribute("vendors", vendorService.getAllVendors());
		return "adminvendorpage";
	}
	
	@GetMapping("/adminproducts")
	public String getAllProducts(Model model){
		model.addAttribute("products", masterService.getProducts());
		return "adminproductspage";
	}
	
	private List<Customer> getCustomers(){
		return customerService.getAllCustomer();
	}
	
}
