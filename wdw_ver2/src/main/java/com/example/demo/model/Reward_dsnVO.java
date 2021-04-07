package com.example.demo.model;

import org.apache.ibatis.type.Alias;

@Alias("reward_dsnVO")
public class Reward_dsnVO {

	int pu_reward_dsn_rew_price,
			pu_reward_dsn_sendcon,
			pu_reward_dsn_mem_code,
			pu_reward_dsn_pro_no;
	
	String pu_reward_dsn_rew_name,
			pu_reward_dsn_detail,
			pu_reward_dsn_option,
			pu_reward_dsn_rew_sendmonth,
			pu_reward_dsn_rew_sendday,
			rew_price,
			sendcon;	

	
	public String getRew_price() {
		return rew_price;
	}

	public void setRew_price(String rew_price) {
		this.rew_price = rew_price;
		this.pu_reward_dsn_rew_price = Integer.parseInt(rew_price);
	}

	public String getSendcon() {
		return sendcon;
	}

	public void setSendcon(String sendcon) {
		this.sendcon = sendcon;
		this.pu_reward_dsn_sendcon = Integer.parseInt(sendcon);
	}

	public Integer getPu_reward_dsn_rew_price() {
		return pu_reward_dsn_rew_price;
	}

	public void setPu_reward_dsn_rew_price(Integer pu_reward_dsn_rew_price) {
		this.pu_reward_dsn_rew_price = pu_reward_dsn_rew_price;
	}

	public Integer getPu_reward_dsn_sendcon() {
		return pu_reward_dsn_sendcon;
	}

	public void setPu_reward_dsn_sendcon(Integer pu_reward_dsn_sendcon) {
		this.pu_reward_dsn_sendcon = pu_reward_dsn_sendcon;
	}

	public Integer getPu_reward_dsn_mem_code() {
		return pu_reward_dsn_mem_code;
	}

	public void setPu_reward_dsn_mem_code(Integer pu_reward_dsn_mem_code) {
		this.pu_reward_dsn_mem_code = pu_reward_dsn_mem_code;
	}

	public Integer getPu_reward_dsn_pro_no() {
		return pu_reward_dsn_pro_no;
	}

	public void setPu_reward_dsn_pro_no(Integer pu_reward_dsn_pro_no) {
		this.pu_reward_dsn_pro_no = pu_reward_dsn_pro_no;
	}

	public String getPu_reward_dsn_rew_name() {
		return pu_reward_dsn_rew_name;
	}

	public void setPu_reward_dsn_rew_name(String pu_reward_dsn_rew_name) {
		this.pu_reward_dsn_rew_name = pu_reward_dsn_rew_name;
	}

	public String getPu_reward_dsn_detail() {
		return pu_reward_dsn_detail;
	}

	public void setPu_reward_dsn_detail(String pu_reward_dsn_detail) {
		this.pu_reward_dsn_detail = pu_reward_dsn_detail;
	}

	public String getPu_reward_dsn_option() {
		return pu_reward_dsn_option;
	}

	public void setPu_reward_dsn_option(String pu_reward_dsn_option) {
		this.pu_reward_dsn_option = pu_reward_dsn_option;
	}

	public String getPu_reward_dsn_rew_sendmonth() {
		return pu_reward_dsn_rew_sendmonth;
	}

	public void setPu_reward_dsn_rew_sendmonth(String pu_reward_dsn_rew_sendmonth) {
		this.pu_reward_dsn_rew_sendmonth = pu_reward_dsn_rew_sendmonth;
	}

	public String getPu_reward_dsn_rew_sendday() {
		return pu_reward_dsn_rew_sendday;
	}

	public void setPu_reward_dsn_rew_sendday(String pu_reward_dsn_rew_sendday) {
		this.pu_reward_dsn_rew_sendday = pu_reward_dsn_rew_sendday;
	}

	@Override
	public String toString() {
		return "Reward_dsnVO [pu_reward_dsn_rew_price=" + pu_reward_dsn_rew_price + ", pu_reward_dsn_sendcon="
				+ pu_reward_dsn_sendcon + ", pu_reward_dsn_mem_code=" + pu_reward_dsn_mem_code
				+ ", pu_reward_dsn_pro_no=" + pu_reward_dsn_pro_no + ", pu_reward_dsn_rew_name="
				+ pu_reward_dsn_rew_name + ", pu_reward_dsn_detail=" + pu_reward_dsn_detail + ", pu_reward_dsn_option="
				+ pu_reward_dsn_option + ", pu_reward_dsn_rew_sendmonth=" + pu_reward_dsn_rew_sendmonth
				+ ", pu_reward_dsn_rew_sendday=" + pu_reward_dsn_rew_sendday + "]";
	}

	
}
