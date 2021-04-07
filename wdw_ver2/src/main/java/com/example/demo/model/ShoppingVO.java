package com.example.demo.model;

import java.security.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("shoppingVO")
public class ShoppingVO {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	//p3.PRO_CATE, p3.PRO_STARTDATE, p3.PRO_ENDATE, p3.PRO_STATE, p3.PRO_CONTENT, p3.PRO_TITLE
	String  purhistory_reward, purhistory_buyer, pro_cate, purhistory_funding_date, pro_startdate, pro_enddate, pro_content,pro_state, pro_title, purhistory_paystate;
	Integer purhistory_code, purhistory_amount, purhistory_cnt;
	public Integer getPurhistory_code() {
		return purhistory_code;
	}
	public void setPurhistory_code(Integer purhistory_code) {
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
	public String getPurhistory_funding_date() {
		return purhistory_funding_date;
	}
	public void setPurhistory_funding_date(Date purhistory_funding_date) {
		this.purhistory_funding_date = sdf.format(purhistory_funding_date);
	}
	public int getPurhistory_cnt() {
		return purhistory_cnt;
	}
	public void setPurhistory_cnt(int purhistory_cnt) {
		this.purhistory_cnt = purhistory_cnt;
	}
	
	public String getPro_cate() {
		return pro_cate;
	}
	public void setPro_cate(String pro_cate) {
		this.pro_cate = pro_cate;
	}
	public String getPro_startdate() {
		return pro_startdate;
	}
	public void setPro_startdate(String pro_startdate) {
		this.pro_startdate = pro_startdate;
	}
	public String getPro_enddate() {
		return pro_enddate;
	}
	public void setPro_enddate(String pro_enddate) {
		this.pro_enddate = pro_enddate;
	}
	public String getPro_content() {
		return pro_content;
	}
	public void setPro_content(String pro_content) {
		this.pro_content = pro_content;
	}
	public String getPro_state() {
		return pro_state;
	}
	public void setPro_state(String pro_state) {
		this.pro_state = pro_state;
	}
	public String getPro_title() {
		return pro_title;
	}
	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}
	
	
	public String getPurhistory_paystate() {
		return purhistory_paystate;
	}
	public void setPurhistory_paystate(String purhistory_paystate) {
		this.purhistory_paystate = purhistory_paystate;
	}
	public Integer getPurhistory_amount() {
		return purhistory_amount;
	}
	public void setPurhistory_amount(Integer purhistory_amount) {
		this.purhistory_amount = purhistory_amount;
	}
	public void setPurhistory_funding_date(String purhistory_funding_date) {
		this.purhistory_funding_date = purhistory_funding_date;
	}
	public void setPurhistory_cnt(Integer purhistory_cnt) {
		this.purhistory_cnt = purhistory_cnt;
	}
	@Override
	public String toString() {
		return "ShoppingVO [" + purhistory_code + ", " + purhistory_reward
				+ ", " + purhistory_buyer + ", " + purhistory_funding_date
				+ ", " + purhistory_amount + ", " + purhistory_cnt + "]";
	}
}
