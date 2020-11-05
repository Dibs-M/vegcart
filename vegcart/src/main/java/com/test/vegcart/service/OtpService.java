package com.test.vegcart.service;

import com.test.vegcart.dto.OtpResponse;

public interface OtpService {

	public OtpResponse sendOtp(String mobile);
}
