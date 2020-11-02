package com.test.vegcart.service;

import com.test.vegcart.dto.EmailDTO;

public interface EmailService {
	
	public void sendEmail(EmailDTO emailDTO);
	public void sendEmailWithAttachment();

}
