package com.test.vegcart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.MasterService;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.util.LoginUtil;
import com.test.vegcart.util.VendorConstant;

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
			model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,VendorConstant.ORDER_RECIEVED));
			vendor.setUserType("Vendor");
			LoginUtil.setLoginVendor(request, vendor);
			result="vendororder";
		}else {
			result="vendorlogin";
		}
		
		return result;
	}
	
	@GetMapping("/vendororder")
	public String vendorOrder2(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,VendorConstant.ORDER_RECIEVED));
		result="vendororder";
		return result;
	}
	
	@PostMapping("/vendororder")
	public String vendorOrder(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,VendorConstant.ORDER_RECIEVED));
		result="vendororder";
		return result;
	}
	
	
	@GetMapping("/vendororderhistory")
	public String vendorOrderHistory(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		model.addAttribute("vendorordershistory", vendorService.getVendorOrders(vendor,VendorConstant.ORDER_DELIVERED));
		result="vendororderhistory";
		return result;
	}
	
	
	@PostMapping("/addvendorproductp")
	public String addVendorProduct(Model model) {
		String result="vendoraddproduct";
		model.addAttribute("masterproducts", masterService.getProducts());
		model.addAttribute("masterunits", masterService.getUnits());
		return result;
	}
	
	@PostMapping("/editvendorproductp")
	public String editVendorProduct(Model model,@RequestParam("editvendorproduct") int id) {
		String result="editvendorproducts";
		model.addAttribute("masterproducts", masterService.getProducts());
		model.addAttribute("masterunits", masterService.getUnits());
		VendorProducts vendorProducts=null;


		try {
			vendorProducts=vendorService.getProductById(id);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("vendorProduct", vendorProducts);
		return result;
	}
	
	
	@GetMapping("/getProducts")
	public String getProducts(Model model,HttpServletRequest request) {
		System.out.println("getProducts calling");
		String result="vendoraddproduct";
		List<VendorProducts> vendorProducts=new ArrayList<>();
		try {
			Vendor vendor=LoginUtil.getLoginVendor(request);
			//returning collection
			vendorProducts=vendorService.getProduct(vendor.getId());
			System.out.println(vendor.getId());
			model.addAttribute("vendorProducts", vendorProducts);
			//vendorProducts used to fetch data in returned jsp page
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result="viewvendorproducts";
		return result;
	}
	
	@PostMapping("/addProduct")
	// vendorProducts returned from the jsp page
	public String addProduct(Model model,VendorProducts vendorProducts,HttpServletRequest request) {
		String result="vendoraddproduct";
		List<VendorProducts> vendorProductsl=new ArrayList<>();
		try {
			Vendor vendor=LoginUtil.getLoginVendor(request);
			vendorProducts.setVendorId(vendor.getId());
			result=vendorService.addProduct(vendorProducts);
			/*model.addAttribute("masterproducts", masterService.getProducts());
			model.addAttribute("masterunits", masterService.getUnits());*/
			vendorProductsl=vendorService.getProduct(vendor.getId());
			model.addAttribute("vendorProducts", vendorProductsl);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result="vendoraddproduct";
		return result;
	}
	
	
	@PostMapping("/updateProduct")
	public   String UpdateProduct(Model model,VendorProducts vendorProducts,HttpServletRequest request) {
		String result="vendoraddproduct";
		List<VendorProducts> vendorProductsl=new ArrayList<>();
		try {
			Vendor vendor=LoginUtil.getLoginVendor(request);
			vendorProducts.setVendorId(vendor.getId());
			//vendorProducts.setId(vendorProducts.getId());
			System.out.println("vendorProducts:"+vendorProducts);
		
			vendorProducts=vendorService.updateProduct(vendorProducts);
			/*model.addAttribute("masterproducts", masterService.getProducts());
			model.addAttribute("masterunits", masterService.getUnits());*/
			vendorProductsl=vendorService.getProduct(vendor.getId());
			model.addAttribute("vendorProducts", vendorProductsl);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("viewvendorproducts calling");
		result="viewvendorproducts";
		//VendorProducts--
		return result;
	}
	
	
	@GetMapping("/deleteProduct")
	public String deleteProduct(Model model,@RequestParam("id") int id,HttpServletRequest request) {
		String result="viewvendorproducts";
		List<VendorProducts> vendorProductsl=new ArrayList<>();
		try {
			Vendor vendor=LoginUtil.getLoginVendor(request);
			//vendorProducts.setVendorId(vendor.getId());
			result=vendorService.deleteProduct(id);
			/*model.addAttribute("masterproducts", masterService.getProducts());
			model.addAttribute("masterunits", masterService.getUnits());*/
			vendorProductsl=vendorService.getProduct(vendor.getId());
			model.addAttribute("vendorProducts", vendorProductsl);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result="viewvendorproducts";
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
			model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,VendorConstant.ORDER_RECIEVED));
			result="vendororder";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
}
