package com.test.vegcart.service.impl;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.stereotype.Service;

import com.test.vegcart.dto.EmailDTO;
import com.test.vegcart.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService {

	@Override
	public void sendEmail(EmailDTO emailDTO) {
		// TODO Auto-generated method stub
		Properties props = new Properties();
		  // props.put("mail.smtp.auth", "true");
		 //  props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.smtp.host", "localhost");
		   props.put("mail.smtp.port", "25");
		   
		   Session session = Session.getInstance(props);
		  /* Session session = Session.getInstance(props, new javax.mail.Authenticator() {
		      protected PasswordAuthentication getPasswordAuthentication() {
		         return new PasswordAuthentication("tutorialspoint@gmail.com", "<your password>");
		      }
		   });*/
		   Message msg = new MimeMessage(session);
		   try {
			msg.setFrom(new InternetAddress("test@evegshop.com", false));

			   msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailDTO.getTo()));
			   msg.setSubject(emailDTO.getSubject());
			   msg.setContent(emailDTO.getContent(), "text/html");
			   msg.setSentDate(new Date());

			   /* MimeBodyPart messageBodyPart = new MimeBodyPart();
			   messageBodyPart.setContent("Tutorials point email", "text/html");

			  Multipart multipart = new MimeMultipart();
			   multipart.addBodyPart(messageBodyPart);
			   MimeBodyPart attachPart = new MimeBodyPart();

			   attachPart.attachFile("/var/tmp/image19.png");
			   multipart.addBodyPart(attachPart);
			   msg.setContent(multipart);*/
			   Transport.send(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   

	}

	@Override
	public void sendEmailWithAttachment() {
		// TODO Auto-generated method stub
		Properties props = new Properties();
		   props.put("mail.smtp.auth", "true");
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.smtp.host", "smtp.gmail.com");
		   props.put("mail.smtp.port", "587");
		   
		   Session session = Session.getInstance(props, new javax.mail.Authenticator() {
		      protected PasswordAuthentication getPasswordAuthentication() {
		         return new PasswordAuthentication("tutorialspoint@gmail.com", "<your password>");
		      }
		   });
		   Message msg = new MimeMessage(session);
		   try {
			msg.setFrom(new InternetAddress("tutorialspoint@gmail.com", false));

			   msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("tutorialspoint@gmail.com"));
			   msg.setSubject("Tutorials point email");
			   msg.setContent("Tutorials point email", "text/html");
			   msg.setSentDate(new Date());

			   MimeBodyPart messageBodyPart = new MimeBodyPart();
			   messageBodyPart.setContent("Tutorials point email", "text/html");

			   Multipart multipart = new MimeMultipart();
			   multipart.addBodyPart(messageBodyPart);
			   MimeBodyPart attachPart = new MimeBodyPart();

			   attachPart.attachFile("/var/tmp/image19.png");
			   multipart.addBodyPart(attachPart);
			   msg.setContent(multipart);
			   Transport.send(msg);
		} catch (MessagingException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   

	}

}
