package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("purhistoryVO")
public class PurhistoryVO {
	String purhistory_reward,purhistory_buyer, purhistory_paystate, delivery_state, purhistory_name, 
			purhistory_address, purhistory_phone,pur_funding_date_tostring, purhistory_delivery, purhistory_cate, purhistory_billing_key;
	Date purhistory_funding_date;
	Integer purhistory_code, purhistory_amount,purhistory_cnt;
	
	
	public String getPurhistory_cate() {
		return purhistory_cate;
	}
	public void setPurhistory_cate(String purhistory_cate) {
		this.purhistory_cate = purhistory_cate;
	}
	public String getPurhistory_billing_key() {
		return purhistory_billing_key;
	}
	public void setPurhistory_billing_key(String purhistory_billing_key) {
		this.purhistory_billing_key = purhistory_billing_key;
	}
	public String getPur_funding_date_tostring() {
		return pur_funding_date_tostring;
	}
	public void setPur_funding_date_tostring(String pur_funding_date_tostring) {
		this.pur_funding_date_tostring = pur_funding_date_tostring;
	}
	public String getPurhistory_name() {
		return purhistory_name;
	}
	public void setPurhistory_name(String purhistory_name) {
		this.purhistory_name = purhistory_name;
	}
	public String getPurhistory_address() {
		return purhistory_address;
	}
	public void setPurhistory_address(String purhistory_address) {
		this.purhistory_address = purhistory_address;
	}
	public String getPurhistory_phone() {
		return purhistory_phone;
	}
	public void setPurhistory_phone(String purhistory_phone) {
		this.purhistory_phone = purhistory_phone;
	}
	public String getDelivery_state() {
		return delivery_state;
	}
	public void setDelivery_state(String delivery_state) {
		this.delivery_state = delivery_state;
	}
	public String getPurhistory_paystate() {
		return purhistory_paystate;
	}
	public void setPurhistory_paystate(String purhistory_paystate) {
		this.purhistory_paystate = purhistory_paystate;
	}
	public int getPurhistory_code() {
		return purhistory_code;
	}
	public void setPurhistory_code(int purhistory_code) {
		this.purhistory_code = purhistory_code;
	}
	public String getPurhistory_reward() {
		return purhistory_reward;
	}
	public void setPurhistory_reward(String purhistory_reward) {
		this.purhistory_reward = purhistory_reward;
	}
	public String getPurhistory_buyer() {
		return purhistory_buyer;
	}
	public void setPurhistory_buyer(String purhistory_buyer) {
		this.purhistory_buyer = purhistory_buyer;
	}
	public Date getPurhistory_funding_date() {
		return purhistory_funding_date;
	}
	public void setPurhistory_funding_date(Date purhistory_funding_date) {
		this.purhistory_funding_date = purhistory_funding_date;
	}
	
	public String getPurhistory_delivery() {
		return purhistory_delivery;
	}
	public void setPurhistory_delivery(String purhistory_delivery) {
		this.purhistory_delivery = purhistory_delivery;
	}
	public void setPurhistory_code(Integer purhistory_code) {
		this.purhistory_code = purhistory_code;
	}
	public Integer getPurhistory_amount() {
		return purhistory_amount;
	}
	public void setPurhistory_amount(Integer purhistory_amount) {
		this.purhistory_amount = purhistory_amount;
	}
	public Integer getPurhistory_cnt() {
		return purhistory_cnt;
	}
	public void setPurhistory_cnt(Integer purhistory_cnt) {
		this.purhistory_cnt = purhistory_cnt;
	}

	@Override
	public String toString() {
		return "PurhistoryVO [ " + purhistory_code + ", " + purhistory_reward
				+ ", " + purhistory_buyer + ", " + purhistory_funding_date
				+ ", " + purhistory_amount + ", " + purhistory_cnt + ", "
				 + "]";
	}
	
	
}
