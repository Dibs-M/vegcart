package com.test.vegcart.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.test.vegcart.entity.Admin;
import com.test.vegcart.entity.Customer;
import com.test.vegcart.entity.Vendor;
import com.test.vegcart.util.LoginUtil;

@Component
public class VegcartSecurityInterceptor implements HandlerInterceptor {
	
	@Value("${vegcart.allowedUri}")
	private String allowedURI;

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println(request.getRequestURL()+" is allowed");
		System.out.println("allowedURI="+allowedURI);
		System.out.println(request.getRequestURI()+" is allowed");
		boolean isallowed=true;
		String incomingURI=request.getRequestURI();
	/*	if(!allowedURI.contains(incomingURI)) {
			Customer customer=LoginUtil.getLoginUser(request);
			Vendor vendor=LoginUtil.getLoginVendor(request);
			Admin admin=LoginUtil.getLoginAdmin(request);
			if(null!=customer) {
				isallowed=incomingURI.startsWith("/customer");
			}else if(null!=vendor) {
				isallowed=incomingURI.startsWith("/vendor");
			}else if(null!=admin) {
				isallowed=incomingURI.startsWith("/admin");
			}
		}*/
		if(!isallowed) {
			response.sendRedirect("/notallowed");
		}
		return isallowed;
	}

}
