package com.test.vegcart.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="customer_order")
public class Order {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="product_name")
	private String productName;
	
	@Column(name="product_standard_quantity")
	private int productStandardQuantity;
	
	@Column(name="product_unit")
	private String productUnit;
	
	@Column(name="product_price_per_unit")
	private double productPricePerUnit;
	
	@Column(name="discount_type")
	private String discountType="Rupees";
	
	@Column(name="discount")
	private double discount;
	
	@Column(name="product_actual_quantity")
	private int productActualQuantity;
	
	@Column(name="total_amount")
	private int totalAmount;
	
	@Column(name="order_date")
	@Temporal(TemporalType.TIMESTAMP)
	@CreationTimestamp
	private Date orderDate;
	
	
	@Column(name="vendor_id")
	private int vendorId;
	
	@Column(name="customer_id")
	private int customerId;
	
	@Column(name="order_status")
	private String orderStatus="Recieved";
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductStandardQuantity() {
		return productStandardQuantity;
	}

	public void setProductStandardQuantity(int productStandardQuantity) {
		this.productStandardQuantity = productStandardQuantity;
	}

	public String getProductUnit() {
		return productUnit;
	}

	public void setProductUnit(String productUnit) {
		this.productUnit = productUnit;
	}


	public String getDiscountType() {
		return discountType;
	}

	public void setDiscountType(String discountType) {
		this.discountType = discountType;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	

	public double getProductPricePerUnit() {
		return productPricePerUnit;
	}

	public void setProductPricePerUnit(double productPricePerUnit) {
		this.productPricePerUnit = productPricePerUnit;
	}

	public int getProductActualQuantity() {
		return productActualQuantity;
	}

	public void setProductActualQuantity(int productActualQuantity) {
		this.productActualQuantity = productActualQuantity;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getVendorId() {
		return vendorId;
	}

	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	
}
