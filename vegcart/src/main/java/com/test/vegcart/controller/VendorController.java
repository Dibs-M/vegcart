package com.test.vegcart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.vegcart.dto.EmailDTO;
import com.test.vegcart.dto.OtpResponse;
import com.test.vegcart.entity.Order;
import com.test.vegcart.entity.Vendor;
import com.test.vegcart.entity.VendorProducts;
import com.test.vegcart.service.EmailService;
import com.test.vegcart.service.MasterService;
import com.test.vegcart.service.OtpService;
import com.test.vegcart.service.VendorService;
import com.test.vegcart.util.LoginUtil;
import com.test.vegcart.util.PasswordUtil;
import com.test.vegcart.util.ApplicationConstant;

@Controller
public class VendorController {
	
	@Autowired
	VendorService vendorService;
	
	@Autowired
	MasterService masterService;
	
	@Autowired
	EmailService emailService;
	
	@Autowired
	private OtpService otpService;
	
	@Value("${email.service.active}")
	private String emailServiceActive;
	
	

	@GetMapping("/vendorlogin")
	public String vendorLogin() {
		
		return "vendorlogin";
	}
	
	@GetMapping("/loginwithotp")
	public String vendorOtpLogin() {
		
		return "vendorotplogin";
	}
	
	
	
	@GetMapping("/vendorforgetpassword")
	public String vendorForget() {
		
		return "vendorforgetpassword";
	}
	
	
	@PostMapping("/vendorregisteration")
	public String vendorRegistration() {
		
		return "vendorregister";
	}
	
	@PostMapping("/registervendor")
	public String registerVendor(Model model,@ModelAttribute Vendor vendor) {
		String result="fail";
		
		try {
			result=vendorService.registerVendor(vendor);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			
			model.addAttribute("vendorinfo", vendor.getVendorName());
			result="vendorlogin";
		}else {
			result="vendorregister";
		}
		
		return result;
	}
	
	@GetMapping("/sendotp")
	public @ResponseBody OtpResponse sendOtp(@RequestParam("mobile") String mobile) {
		OtpResponse otpResponse=new OtpResponse();
		
		Vendor vendor=new Vendor();
		vendor.setVendorMobile(mobile);
		Vendor vendorEntity=vendorService.getVendorByMobile(vendor);
		if(null!=vendorEntity) {
			otpResponse=otpService.sendOtp(mobile);
			if(!otpResponse.isError()) {
				vendorEntity.setVendorOtp(otpResponse.getOtp());
				try {
					vendorService.registerVendor(vendorEntity);
				} catch (Exception e) {
					otpResponse.setError(true);
					otpResponse.setMessage("Otp service is not working try after sometime");
					e.printStackTrace();
				}
			}
			
		}else {
			otpResponse.setMessage("You are not regitered on this platform ,first register yourself");
		}
		
		
		return otpResponse;
	}
	
	
	@PostMapping("/loginvendor")
	public String loginUser(Model model,@ModelAttribute Vendor vendor,HttpServletRequest request) {
		/*String result="fail";
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
			model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,ApplicationConstant.ORDER_RECIEVED));
			vendor.setUserType("Vendor");
			LoginUtil.setLoginVendor(request, vendor);
			result="vendororder";
		}else {
			result="loginfailed";
		}
		
		return result;*/
		String result="fail";
		try {
			Vendor vendorEntity=vendorService.getVendorByMobile(vendor);
			if(null!=vendorEntity && (vendorEntity.getVendorPassword().equals(vendor.getVendorPassword())||vendorEntity.getVendorOtp().equals(vendor.getVendorOtp()))) {
				result="success";
			}
			vendor=vendorEntity;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result.equals("success")) {
			
			if(vendor.getPasswordReset().equals("Y")) {
				model.addAttribute("vendormobile",vendor.getVendorMobile());
				result="vendorupdatepassword";
			}else {
				model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,ApplicationConstant.ORDER_RECIEVED));
				vendor.setUserType("Vendor");
				LoginUtil.setLoginVendor(request, vendor);
				result="vendororder";
			}
			
		}else {
			model.addAttribute("loginfail","User Name Or Password is wrong");
			result="vendorlogin";
		}
		
		return result;
	}
	
	
	@PostMapping("/vendoremailcheck")
	public String vendorEmailCheck(Model model,HttpServletRequest request,@RequestParam("email") String email) {
		String result="fail";
		Vendor vendor=vendorService.fetchVendorByEmail(email);
		if(null!=vendor) {
			model.addAttribute("resetstatus", "Password has been send on email");
			EmailDTO emailDTO=new EmailDTO();
			emailDTO.setTo(email);
			emailDTO.setSubject("Your New Password");
			String password=PasswordUtil.getPassword();
			emailDTO.setContent("Your new passowrd is "+password);
			emailDTO.setBcc("abh1085@gmail.com");
			if(emailServiceActive.equals("Y")) {
				emailService.sendEmail(emailDTO);
			}
			
			vendor.setVendorPassword(password);
			vendor.setPasswordReset("Y");
			try {
				vendorService.registerVendor(vendor);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			result="vendorlogin";
		}else {
			model.addAttribute("resetstatus", "Email Id does not match");
			result="vendorforgetpassword";
		}
		
		
		return result;
	}
	
	
	@PostMapping("/updatepassword")
	public String vendorUpdatePassword(Model model,HttpServletRequest request,@RequestParam("mobile") String mobile,@RequestParam("password") String password) {
		String result="fail";
		Vendor vendorDTO=new Vendor();
		vendorDTO.setVendorMobile(mobile);
		Vendor vendor=vendorService.getVendorByMobile(vendorDTO);
		if(null!=vendor) {
		
			vendor.setPasswordReset("N");
			vendor.setVendorPassword(password);
			try {
				vendorService.registerVendor(vendor);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.addAttribute("resetstatus","Password Updated Successfully");
			result="vendorlogin";
		}else {
			model.addAttribute("resetstatus", "Email Id does not match");
			result="vendorforgetpassword";
		}
		
		
		return result;
	}
	
	@PostMapping("/vendorresetpassword")
	public String vendorResetPassword(Model model,HttpServletRequest request,@RequestParam("email") String email) {
		String result="fail";
		String output="";
		model.addAttribute("resetstatus", output);
		result="vendorlogin";
		return result;
	}
	
/*	@GetMapping("/vendororder2")
	public String vendorOrder2(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		//model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,ApplicationConstant.ORDER_RECIEVED));
		result="vendororder2";
		return result;
	}

	
	@GetMapping("/vendororder11")
	public @ResponseBody List<Order> vendorOrder21(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		
		return vendorService.getVendorOrders(vendor,ApplicationConstant.ORDER_RECIEVED);
	}*/
	
	@PostMapping("/vendororder")
	public String vendorOrder(Model model,HttpServletRequest request) {
		String result="fail";
		Vendor vendor=LoginUtil.getLoginVendor(request);
		model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,ApplicationConstant.ORDER_RECIEVED));
		result="vendororder";
		return result;
	}
	
	
	@GetMapping("/vendororderhistory")
	public String vendorOrderHistory(Model model,HttpServletRequest request) {
		String result="fail";
		
		Vendor vendor=LoginUtil.getLoginVendor(request);
		model.addAttribute("vendorordershistory", vendorService.getVendorOrders(vendor,ApplicationConstant.ORDER_DELIVERED));
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
			model.addAttribute("vendororders", vendorService.getVendorOrders(vendor,ApplicationConstant.ORDER_RECIEVED));
			System.out.println("hello1 "+result);
			result="vendororder";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("hello1 "+result);
		return result;
	}
	
	
}
