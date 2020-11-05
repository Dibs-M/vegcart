package com.test.vegcart.service.impl;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.test.vegcart.dto.OtpResponse;
import com.test.vegcart.service.OtpService;
import com.test.vegcart.util.OtpUtil;

@Service
public class OtpServiceImpl implements OtpService {
	
	
	
	
	@Value("${otp.api.base.url}")
	private String otpUrl;
	
	@Value("${otp.api.key}")
	private String otpApiKey;
	
	@Value("${otp.api.template}")
	private String otpApiTemplate;

	@Override
	public OtpResponse sendOtp(String mobile) {
		// TODO Auto-generated method stub
		OtpResponse otpResponse=new OtpResponse();
		RestTemplate restTemplate=new RestTemplate();
		String otp=OtpUtil.getOTP();
		String url=otpUrl.replace("{api-key}", otpApiKey).replace("{mobile}", mobile).replace("{otp}",otp ).replace("{template}", otpApiTemplate);
		System.out.println("URL=="+url);
		ResponseEntity<String> response=restTemplate.getForEntity(url, String.class);
		//System.out.println(response.getBody());
		if(response.getStatusCode().is2xxSuccessful()) {
			otpResponse.setMessage("Otp sent successfully,You can login with otp");
			otpResponse.setOtp(otp);
		}else {
			otpResponse.setError(true);
			otpResponse.setMessage("Otp service is not working try after sometime");
		}
		return otpResponse;
	}

}
