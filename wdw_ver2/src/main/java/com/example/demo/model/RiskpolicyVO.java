package com.example.demo.model;

import org.apache.ibatis.type.Alias;

@Alias("riskpolicyVO")
public class RiskpolicyVO {
	String pu_riskpolicy_reward_cate,
			pu_riskpolicy_prod_name,
			pu_riskpolicy_prod_material,
			pu_riskpolicy_prod_color,
			pu_riskpolicy_prod_size,
			pu_riskpolicy_manufacturer,
			pu_riskpolicy_ctr_manufact,
			pu_riskpolicy_handling,
			pu_riskpolicy_manager_info,
			pu_riskpolicy_no_def_policy;
	
	Integer pu_riskpolicy_mem_code,
			pu_riskpolicy_pro_no;

	public String getPu_riskpolicy_reward_cate() {
		return pu_riskpolicy_reward_cate;
	}

	public void setPu_riskpolicy_reward_cate(String pu_riskpolicy_reward_cate) {
		this.pu_riskpolicy_reward_cate = pu_riskpolicy_reward_cate;
	}

	public String getPu_riskpolicy_prod_name() {
		return pu_riskpolicy_prod_name;
	}

	public void setPu_riskpolicy_prod_name(String pu_riskpolicy_prod_name) {
		this.pu_riskpolicy_prod_name = pu_riskpolicy_prod_name;
	}

	public String getPu_riskpolicy_prod_material() {
		return pu_riskpolicy_prod_material;
	}

	public void setPu_riskpolicy_prod_material(String pu_riskpolicy_prod_material) {
		this.pu_riskpolicy_prod_material = pu_riskpolicy_prod_material;
	}

	public String getPu_riskpolicy_prod_color() {
		return pu_riskpolicy_prod_color;
	}

	public void setPu_riskpolicy_prod_color(String pu_riskpolicy_prod_color) {
		this.pu_riskpolicy_prod_color = pu_riskpolicy_prod_color;
	}

	public String getPu_riskpolicy_prod_size() {
		return pu_riskpolicy_prod_size;
	}

	public void setPu_riskpolicy_prod_size(String pu_riskpolicy_prod_size) {
		this.pu_riskpolicy_prod_size = pu_riskpolicy_prod_size;
	}

	public String getPu_riskpolicy_manufacturer() {
		return pu_riskpolicy_manufacturer;
	}

	public void setPu_riskpolicy_manufacturer(String pu_riskpolicy_manufacturer) {
		this.pu_riskpolicy_manufacturer = pu_riskpolicy_manufacturer;
	}

	public String getPu_riskpolicy_ctr_manufact() {
		return pu_riskpolicy_ctr_manufact;
	}

	public void setPu_riskpolicy_ctr_manufact(String pu_riskpolicy_ctr_manufact) {
		this.pu_riskpolicy_ctr_manufact = pu_riskpolicy_ctr_manufact;
	}

	public String getPu_riskpolicy_handling() {
		return pu_riskpolicy_handling;
	}

	public void setPu_riskpolicy_handling(String pu_riskpolicy_handling) {
		this.pu_riskpolicy_handling = pu_riskpolicy_handling;
	}

	public String getPu_riskpolicy_manager_info() {
		return pu_riskpolicy_manager_info;
	}

	public void setPu_riskpolicy_manager_info(String pu_riskpolicy_manager_info) {
		this.pu_riskpolicy_manager_info = pu_riskpolicy_manager_info;
	}

	public String getPu_riskpolicy_no_def_policy() {
		return pu_riskpolicy_no_def_policy;
	}

	public void setPu_riskpolicy_no_def_policy(String pu_riskpolicy_no_def_policy) {
		this.pu_riskpolicy_no_def_policy = pu_riskpolicy_no_def_policy;
	}

	public Integer getPu_riskpolicy_mem_code() {
		return pu_riskpolicy_mem_code;
	}

	public void setPu_riskpolicy_mem_code(Integer pu_riskpolicy_mem_code) {
		this.pu_riskpolicy_mem_code = pu_riskpolicy_mem_code;
	}

	public Integer getPu_riskpolicy_pro_no() {
		return pu_riskpolicy_pro_no;
	}

	public void setPu_riskpolicy_pro_no(Integer pu_riskpolicy_pro_no) {
		this.pu_riskpolicy_pro_no = pu_riskpolicy_pro_no;
	}

	@Override
	public String toString() {
		return "RiskpolicyVO [pu_riskpolicy_reward_cate=" + pu_riskpolicy_reward_cate + ", pu_riskpolicy_prod_name="
				+ pu_riskpolicy_prod_name + ", pu_riskpolicy_prod_material=" + pu_riskpolicy_prod_material
				+ ", pu_riskpolicy_prod_color=" + pu_riskpolicy_prod_color + ", pu_riskpolicy_prod_size="
				+ pu_riskpolicy_prod_size + ", pu_riskpolicy_manufacturer=" + pu_riskpolicy_manufacturer
				+ ", pu_riskpolicy_ctr_manufact=" + pu_riskpolicy_ctr_manufact + ", pu_riskpolicy_handling="
				+ pu_riskpolicy_handling + ", pu_riskpolicy_manager_info=" + pu_riskpolicy_manager_info
				+ ", pu_riskpolicy_no_def_policy=" + pu_riskpolicy_no_def_policy + ", pu_riskpolicy_mem_code="
				+ pu_riskpolicy_mem_code + ", pu_riskpolicy_pro_no=" + pu_riskpolicy_pro_no + "]";
	}
	
	
	
	
}
