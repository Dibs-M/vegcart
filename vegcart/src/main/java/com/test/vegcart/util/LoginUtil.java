package com.test.vegcart.util;

import javax.servlet.http.HttpServletRequest;

import com.test.vegcart.entity.Admin;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Vendor;

public class LoginUtil {

	public static void setLoginUser(HttpServletRequest request,Customer customer) {
		request.getSession().setAttribute("user", customer);
	}
	
	public static Customer getLoginUser(HttpServletRequest request) {
		
		Customer customer=(Customer)request.getSession().getAttribute("user");
		return customer;
	}
	
	
	

	public static void setLoginVendor(HttpServletRequest request,Vendor loginvendor) {
		request.getSession().setAttribute("loginvendor", loginvendor);
	}
	
	public static Vendor getLoginVendor(HttpServletRequest request) {
		
		Vendor vendor=(Vendor)request.getSession().getAttribute("loginvendor");
		return vendor;
	}
	
	
	public static void setLoginAdmin(HttpServletRequest request,Admin admin) {
		request.getSession().setAttribute("loginadmin", admin);
	}
	
	public static Admin getLoginAdmin(HttpServletRequest request) {
		
		Admin admin=(Admin)request.getSession().getAttribute("loginadmin");
		return admin;
	}
	
}
