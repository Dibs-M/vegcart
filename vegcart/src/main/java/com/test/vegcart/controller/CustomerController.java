package com.test.vegcart.controller;

import java.util.ArrayList;
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

import com.test.vegcart.entity.Cart;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Order;
import com.test.vegcart.entity.OrderHistory;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.CustomerService;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.util.LoginUtil;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	@Autowired
	VendorService vendorService;
	
	@PostMapping("/addcustomer")
	public String addCustomer(Model model,@ModelAttribute Customer customer,HttpServletRequest request) {
		String result="fail";
		try {
			model.addAttribute("checkoutItems", customer.getCheckoutItems());
			result=customerService.addCustomer(customer);
			LoginUtil.setLoginUser(request, customer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			if(!customer.getCheckoutItems().equals("")) {
			String [] itemIds=customer.getCheckoutItems().split(",");
			List<Integer> idList=new ArrayList<Integer>();
			
			for (String id : itemIds) {
				idList.add(Integer.valueOf(id));
			}
			
			model.addAttribute("vegetables", vendorService.getVendorProductByIds(idList));
			}
			
			result="checkout";
		}else {
			result="register";
		}
		
		return result;
	}
	

	@PostMapping("/checkout")
	public String checkout(Model model,@RequestParam("checkoutitems")String checkoutItems,HttpServletRequest request) {
		String result="login";
		model.addAttribute("checkoutItems", checkoutItems);
		if(LoginUtil.getLoginUser(request)!=null) {
			List<Integer> idList=new ArrayList<Integer>();
			String [] itemIds=checkoutItems.split(",");
			for (String id : itemIds) {
				idList.add(Integer.valueOf(id));
			}
			model.addAttribute("vegetables", vendorService.getVendorProductByIds(idList));
			result="checkout";
		}
		return result;
	}
	
	
	@GetMapping("/custonmerdirectlogin")
	public String customerDirectLogin() {
		String result="customerdirectlogin";
		return result;
	}
	
	
	@PostMapping("/registercustomer")
	public String register(Model model,@RequestParam("checkoutitems")String checkoutItems) {
		model.addAttribute("checkoutItems", checkoutItems);
		return "register";
	}
	
	
	@PostMapping("/logincustomer")
	public String loginUser(Model model,@ModelAttribute Customer customer,HttpServletRequest request) {
		String result="fail";
		String [] itemIds=customer.getCheckoutItems().split(",");
		try {
			model.addAttribute("checkoutItems", customer.getCheckoutItems());
			Customer rcustomer=customerService.getCustomerByMobile(customer);
			if(null!=rcustomer && rcustomer.getPassword().equals(customer.getPassword())) {
				customer=rcustomer;
				result="success";
			}
			
			LoginUtil.setLoginUser(request, customer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			List<Integer> idList=new ArrayList<Integer>();
			for (String id : itemIds) {
				idList.add(Integer.valueOf(id));
			}
			model.addAttribute("vegetables", vendorService.getVendorProductByIds(idList));
			result="checkout";
		}else {
			result="login";
		}
		
		return result;
	}
	
	
	@PostMapping("/logindirectcustomer")
	public String loginDirectUser(Model model,@ModelAttribute Customer customer,HttpServletRequest request) {
		String result="fail";
		try {
			Customer rcustomer=customerService.getCustomerByMobile(customer);
			if(null!=rcustomer && rcustomer.getPassword().equals(customer.getPassword())) {
				customer=rcustomer;
				result="success";
			}
			
			LoginUtil.setLoginUser(request, customer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			model.addAttribute("vegetables", vendorService.getAllVendorProducts());
			result="home";
		}else {
			result="login";
		}
		
		return result;
	}
	
	
	
	@PostMapping("/additemincart")
	public String addItemInCart(@RequestBody Cart cart) {
		String result="fail";
		try {
			result=customerService.addItemInCart(cart);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	@PostMapping("/placeorder")
	public String placeOrder(Model model,@RequestParam("checkoutitems")String checkoutItems,HttpServletRequest request) {
		String result="fail";
		try {
			
			String [] itemIds=checkoutItems.split(",");
			List<Integer> idList=new ArrayList<Integer>();
			
			for (String id : itemIds) {
				idList.add(Integer.valueOf(id));
			}
			
			List<VendorProducts> vendorProducts=vendorService.getVendorProductByIds(idList);
			List<Order> orders=new ArrayList<Order>();
			Customer customer=LoginUtil.getLoginUser(request);
			for (VendorProducts vendorProduct : vendorProducts) {
				Order order=new Order();
				order.setCustomerMobile(customer.getMobile());
				order.setDiscount(vendorProduct.getDiscount());
				order.setDiscountType(vendorProduct.getDiscountType());
				order.setProductActualQuantity(1);
				order.setProductName(vendorProduct.getProductName());
				order.setProductPricePerUnit(vendorProduct.getProductPrice());
				order.setProductStandardQuantity(vendorProduct.getProductStandardQuantity());
				order.setProductUnit(vendorProduct.getProductUnit());
				order.setTotalAmount(vendorProduct.getProductPrice()-vendorProduct.getDiscount());
				order.setVendorId(vendorProduct.getVendorId());
				order.setCustomerAddress(customer.getDeliveryAddress());
				orders.add(order);
			}
			result=customerService.placeOrders(orders);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "order";
	}
	
	
	
	
	@GetMapping("/customerorders")
	public String customerOrders(Model model,HttpServletRequest request) {
		String result="fail";
		try {
			Customer customer=LoginUtil.getLoginUser(request);
			List<Order> orders=customerService.getCustomerOrders(customer);
			model.addAttribute("customerorders",orders);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "customerorder";
	}
	
	@PostMapping("/completeorder")
	public String completeOrder(@RequestBody OrderHistory orderHistory) {
		String result="fail";
		try {
			result=customerService.completeOrder(orderHistory);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}
