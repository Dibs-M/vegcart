package com.test.vegcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.vegcart.entity.Admin;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Product;
import com.test.vegcart.entity.Units;
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
	
	private List<Customer> getCustomers(){
		return customerService.getAllCustomer();
	}
	
	@GetMapping("/admindeletecustomer")
	public String deleteCustomer(Model model,@RequestParam("mobile") String mobileNo){
		customerService.deleteCustomer(mobileNo);
		model.addAttribute("customers", getCustomers());
		return "admincustomerpage";
	}
	
	
	@GetMapping("/admindeactivatecustomer")
	public String deactivateCustomer(Model model,@RequestParam("mobile") String mobileNo){
		Customer customer=new Customer();
		customer.setMobile(mobileNo);
		try {
			customer=customerService.getCustomerByMobile(customer);
			customer.setActive("N");
			customerService.addCustomer(customer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("customers", getCustomers());
		return "admincustomerpage";
	}
	
	
	
	@GetMapping("/adminvendors")
	public String getAllVendors(Model model){
		model.addAttribute("vendors", vendorService.getAllVendors());
		return "adminvendorpage";
	}
	
	@GetMapping("/admindeletevendor")
	public String deleteVendor(Model model,@RequestParam("id") int id){
		vendorService.deleteVendor(id);
		model.addAttribute("vendors", vendorService.getAllVendors());
		return "adminvendorpage";
	}
	
	@GetMapping("/admindeactivatevendor")
	public String deactivateVendor(Model model,@RequestParam("id") int id){
		Vendor vendor=vendorService.getVendorByID(id);
		vendor.setActive("N");
		try {
			vendorService.registerVendor(vendor);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("vendors", vendorService.getAllVendors());
		return "adminvendorpage";
	}
	
	
	@GetMapping("/adminproducts")
	public String getAllProducts(Model model){
		model.addAttribute("products", masterService.getProducts());
		return "adminproductspage";
	}
	
	
	@PostMapping("/adminaddproduct")
	public String addProduct(Model model,Product product){
		 masterService.addProduct(product);
		model.addAttribute("products", masterService.getProducts());
		return "adminproductspage";
	}
	
	@PostMapping("/adminupdateproduct")
	public String updateProduct(Model model,Product product){
		 masterService.updateProduct(product);
		model.addAttribute("products", masterService.getProducts());
		return "adminproductspage";
	}
	
	@GetMapping("/admindeleteproduct")
	public String deleteProduct(Model model,@RequestParam("id") int id){
		masterService.deleteProduct(id);
		model.addAttribute("products", masterService.getProducts());
		return "adminproductspage";
	}
	
	
	@GetMapping("/adminunits")
	public String getAllUnits(Model model){
		model.addAttribute("units", masterService.getUnits());
		return "adminunitspage";
	}
	
	@PostMapping("/adminaddunit")
	public String addUnit(Model model,Units unit){
		masterService.addUnit(unit);;
		model.addAttribute("units", masterService.getUnits());
		return "adminunitspage";
	}
	
	@PostMapping("/adminupdateunit")
	public String updateUnit(Model model,Units unit){
		 masterService.updateUnit(unit);
		model.addAttribute("units", masterService.getUnits());
		return "adminunitspage";
	}
	
	@GetMapping("/admindeleteunit")
	public String deleteUnit(Model model,@RequestParam("id") int id){
		masterService.deleteUnit(id);
		model.addAttribute("units", masterService.getUnits());
		return "adminunitspage";
	}
	
	
	
	@GetMapping("/adminvendorproducts")
	public String getAllVendorProducts(Model model){
		model.addAttribute("vendorproducts", vendorService.getAllVendorProducts());
		return "adminvendorproductspage";
	}
	
	@GetMapping("/adminvendorproductdelete")
	public String deleteAnyVendorProduct(Model model,@RequestParam("id") int id){
		 try {
			vendorService.deleteProduct(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("vendorproducts", vendorService.getAllVendorProducts());
		return "adminvendorproductspage";
	}
	
	@GetMapping("/admincustomerorder")
	public String getAllOrders(Model model){
		model.addAttribute("customerorders", adminService.getCustomerOrders());
		return "admincustomerorderpage";
	}
	
	@GetMapping("/admincustomerorderdelete")
	public String deleteAnyOrder(Model model,@RequestParam("id") int id){
		adminService.deleteCustomerOrder(id);
		model.addAttribute("customerorders", adminService.getCustomerOrders());
		
		return "admincustomerorderpage";
	}
	
	@GetMapping("/adminvendor")
	public @ResponseBody Vendor getVendor(@RequestParam("id") int id) {
		return vendorService.getVendorByID(id);
	}
	
}
