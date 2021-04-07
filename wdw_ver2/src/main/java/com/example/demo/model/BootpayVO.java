package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

//@Alias("bootpayVO") // pom 수정
public class BootpayVO {
	
	private int dona_no;
	private int dona_bill;
	private Date dona_date;
	private String member_id;
	String parking_pay_pgid;
	int parking_pay_money;
	
	public BootpayVO() {
		
	}
	
	public BootpayVO(int dona_no, int dona_bill, Date dona_date, String member_id) {
		this.dona_no = dona_no;
		this.dona_bill = dona_bill;
		this.dona_date = dona_date;
		this.member_id = member_id;
	}
	
	public int getParking_pay_money() {
		return parking_pay_money;
	}

	public void setParking_pay_money(int parking_pay_money) {
		this.parking_pay_money = parking_pay_money;
	}

	public String getParking_pay_pgid() {
		return parking_pay_pgid;
	}

	public void setParking_pay_pgid(String parking_pay_pgid) {
		this.parking_pay_pgid = parking_pay_pgid;
	}

	public int getDona_no() {
		return dona_no;
	}

	public void setDona_no(int dona_no) {
		this.dona_no = dona_no;
	}

	public int getDona_bill() {
		return dona_bill;
	}

	public void setDona_bill(int dona_bill) {
		this.dona_bill = dona_bill;
	}

	public Date getDona_date() {
		return dona_date;
	}

	public void setDona_date(Date dona_date) {
		this.dona_date = dona_date;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	

}