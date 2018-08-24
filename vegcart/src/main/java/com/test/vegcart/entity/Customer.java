package com.test.vegcart.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="customer")
public class Customer {

	@Id
	@Column(name="mobile",unique=true,nullable=false,columnDefinition="VARCHAR(64)")
	private String mobile;
	
	@Column(name="password")
	private String password;
	
	@Column(name="active")
	private String active="Y";
	
	@Column(name="delivery_address")
	private String deliveryAddress;
	
	@Transient
	private String checkoutItems;

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getCheckoutItems() {
		return checkoutItems;
	}

	public void setCheckoutItems(String checkoutItems) {
		this.checkoutItems = checkoutItems;
	}
	
}
