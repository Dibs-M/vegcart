package com.test.vegcart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class VegcartApplication {
//public class VegcartApplication  extends SpringBootServletInitializer {	

	public static void main(String[] args) {
		SpringApplication.run(VegcartApplication.class, args);
	}
	//commiting code
	/*@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(VegcartApplication.class);
    }*/
}

