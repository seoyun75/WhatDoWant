package com.example.demo.model;

import java.util.Date;

public class BusinessVO{

	String business_license, business_represent, business_email, 
		business_com_name, business_address, business_img;
	Date business_license_regdate;
	public String getBusiness_license() {
		return business_license;
	}
	public void setBusiness_license(String business_license) {
		this.business_license = business_license;
	}
	public String getBusiness_represent() {
		return business_represent;
	}
	public void setBusiness_represent(String business_represent) {
		this.business_represent = business_represent;
	}
	public String getBusiness_email() {
		return business_email;
	}
	public void setBusiness_email(String business_email) {
		this.business_email = business_email;
	}
	public String getBusiness_com_name() {
		return business_com_name;
	}
	public void setBusiness_com_name(String business_com_name) {
		this.business_com_name = business_com_name;
	}
	public String getBusiness_address() {
		return business_address;
	}
	public void setBusiness_address(String business_address) {
		this.business_address = business_address;
	}
	public String getBusiness_img() {
		return business_img;
	}
	public void setBusiness_img(String business_img) {
		this.business_img = business_img;
	}
	public Date getBusiness_license_regdate() {
		return business_license_regdate;
	}
	public void setBusiness_license_regdate(Date business_license_regdate) {
		this.business_license_regdate = business_license_regdate;
	}
	@Override
	public String toString() {
		return "BusinessVO [business_license=" + business_license + ", business_represent=" + business_represent
				+ ", business_email=" + business_email + ", business_com_name=" + business_com_name
				+ ", business_address=" + business_address + ", business_img=" + business_img
				+ ", business_license_regdate=" + business_license_regdate + "]";
	}

	
	
}
