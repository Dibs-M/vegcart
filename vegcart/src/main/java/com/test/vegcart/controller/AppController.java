package com.test.vegcart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.vegcart.service.VendorService;

@Controller
public class AppController {

	@Autowired
	VendorService vendorService;
	
	@GetMapping("/")
	public String getHomePage(Model model) {
		model.addAttribute("vegetables", vendorService.getAllVendorProducts());
		return "home";
	}
	
	
	@PostMapping("/searchproduct")
	public String getSearchPage(Model model,@RequestParam("productName")String productName) {
		model.addAttribute("vegetables", vendorService.getAllVendorProducts(productName));
		return "home";
	}
	
	@GetMapping("/logout")
	public String getHomePage(Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.removeAttribute("user");
		session.invalidate();
		model.addAttribute("vegetables", vendorService.getAllVendorProducts());
		return "home";
	}
	
	
	@GetMapping("/vendorlogout")
	public String getVendorHomePage(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.removeAttribute("vendor");
		session.invalidate();
		return "vendorlogin";
	}
	
	
	
	@GetMapping("/notallowed")
	public String getUnauthorizedPage(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.invalidate();
		return "unauthorizedaccess";
	}
}
