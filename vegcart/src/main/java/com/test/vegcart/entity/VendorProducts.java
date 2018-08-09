package com.test.vegcart.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vendor_product_entry")
public class VendorProducts {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="product_name")
	private String productName;
	
	@Column(name="product_standard_quantity")
	private int productStandardQuantity;
	
	@Column(name="product_unit")
	private String productUnit;
	
	@Column(name="product_price")
	private double productPrice;
	
	@Column(name="discount_type")
	private String discountType="Rupees";
	
	@Column(name="discount")
	private double discount;
	
	@Column(name="product_avialability")
	private String productAvialability="IN STOCK";
	
	@Column(name="product_image")
	private String productImage;
	
	@Column(name="vendor_id")
	private int vendorId;

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

	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
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

	public String getProductAvialability() {
		return productAvialability;
	}

	public void setProductAvialability(String productAvialability) {
		this.productAvialability = productAvialability;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public int getVendorId() {
		return vendorId;
	}

	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}
	
	
}
