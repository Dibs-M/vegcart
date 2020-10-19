package com.test.vegcart.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.test.vegcart.security.VegcartSecurityInterceptor;

@Configuration
public class AppConfig extends WebMvcConfigurerAdapter{

	@Autowired
	VegcartSecurityInterceptor VegcartSecurityInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		registry.addInterceptor(VegcartSecurityInterceptor).addPathPatterns("/**");
	}
}

