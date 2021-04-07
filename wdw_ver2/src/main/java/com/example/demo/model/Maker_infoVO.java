package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("maker_infoVO")
public class Maker_infoVO {
	
	String pu_maker_info_comp_name,
			pu_maker_info_comp_img,
			pu_maker_info_inquiry_mail,
			pu_maker_info_inquiry_phone,
			pu_maker_info_homepage_url1,
			pu_maker_info_homepage_url2,
			pu_maker_info_bn_classifi,
			pu_maker_info_bn_agreement,
			pu_maker_info_repre_name,
			pu_maker_info_repre_mail,
			pu_maker_info_repre_phone,
			pu_maker_info_reg_num_pre,
			pu_maker_info_reg_num_post,
			pu_maker_info_tax_mail,
			pu_maker_info_account_bank,
			pu_maker_info_account_number,
			pu_maker_info_account_name,
			pu_maker_info_account_copy,
			pu_maker_info_license;
	
	Integer pu_maker_info_mem_code,
			pu_maker_info_pro_no;
	
	MultipartFile comp_img, agreement, account;

	
	public String getPu_maker_info_license() {
		return pu_maker_info_license;
	}

	public void setPu_maker_info_license(String pu_maker_info_license) {
		this.pu_maker_info_license = pu_maker_info_license;
	}

	public String getPu_maker_info_comp_name() {
		return pu_maker_info_comp_name;
	}

	public void setPu_maker_info_comp_name(String pu_maker_info_comp_name) {
		this.pu_maker_info_comp_name = pu_maker_info_comp_name;
	}

	public String getPu_maker_info_comp_img() {
		return pu_maker_info_comp_img;
	}

	public void setPu_maker_info_comp_img(String pu_maker_info_comp_img) {
		if(pu_maker_info_comp_img.trim().equals("")) {
			pu_maker_info_comp_img = null;
		}
		this.pu_maker_info_comp_img = pu_maker_info_comp_img;
	}
	
	public String getPu_maker_info_inquiry_mail() {
		return pu_maker_info_inquiry_mail;
	}

	public void setPu_maker_info_inquiry_mail(String pu_maker_info_inquiry_mail) {
		this.pu_maker_info_inquiry_mail = pu_maker_info_inquiry_mail;
	}

	public String getPu_maker_info_inquiry_phone() {
		return pu_maker_info_inquiry_phone;
	}

	public void setPu_maker_info_inquiry_phone(String pu_maker_info_inquiry_phone) {
		this.pu_maker_info_inquiry_phone = pu_maker_info_inquiry_phone;
	}

	public String getPu_maker_info_homepage_url1() {
		return pu_maker_info_homepage_url1;
	}

	public void setPu_maker_info_homepage_url1(String pu_maker_info_homepage_url1) {
		this.pu_maker_info_homepage_url1 = pu_maker_info_homepage_url1;
	}

	public String getPu_maker_info_homepage_url2() {
		return pu_maker_info_homepage_url2;
	}

	public void setPu_maker_info_homepage_url2(String pu_maker_info_homepage_url2) {
		this.pu_maker_info_homepage_url2 = pu_maker_info_homepage_url2;
	}

	public String getPu_maker_info_bn_classifi() {
		return pu_maker_info_bn_classifi;
	}

	public void setPu_maker_info_bn_classifi(String pu_maker_info_bn_classifi) {
		this.pu_maker_info_bn_classifi = pu_maker_info_bn_classifi;
	}

	public String getPu_maker_info_bn_agreement() {
		return pu_maker_info_bn_agreement;
	}

	public void setPu_maker_info_bn_agreement(String pu_maker_info_bn_agreement) {
		if(pu_maker_info_bn_agreement.trim().equals("")) {
			pu_maker_info_bn_agreement = null;
		}
		this.pu_maker_info_bn_agreement = pu_maker_info_bn_agreement;
	}

	public String getPu_maker_info_repre_name() {
		return pu_maker_info_repre_name;
	}

	public void setPu_maker_info_repre_name(String pu_maker_info_repre_name) {
		this.pu_maker_info_repre_name = pu_maker_info_repre_name;
	}

	public String getPu_maker_info_repre_mail() {
		return pu_maker_info_repre_mail;
	}

	public void setPu_maker_info_repre_mail(String pu_maker_info_repre_mail) {
		this.pu_maker_info_repre_mail = pu_maker_info_repre_mail;
	}

	public String getPu_maker_info_repre_phone() {
		return pu_maker_info_repre_phone;
	}

	public void setPu_maker_info_repre_phone(String pu_maker_info_repre_phone) {
		this.pu_maker_info_repre_phone = pu_maker_info_repre_phone;
	}

	public String getPu_maker_info_reg_num_pre() {
		return pu_maker_info_reg_num_pre;
	}

	public void setPu_maker_info_reg_num_pre(String pu_maker_info_reg_num_pre) {
		this.pu_maker_info_reg_num_pre = pu_maker_info_reg_num_pre;
	}

	public String getPu_maker_info_reg_num_post() {
		return pu_maker_info_reg_num_post;
	}

	public void setPu_maker_info_reg_num_post(String pu_maker_info_reg_num_post) {
		this.pu_maker_info_reg_num_post = pu_maker_info_reg_num_post;
	}

	public String getPu_maker_info_tax_mail() {
		return pu_maker_info_tax_mail;
	}

	public void setPu_maker_info_tax_mail(String pu_maker_info_tax_mail) {
		this.pu_maker_info_tax_mail = pu_maker_info_tax_mail;
	}

	public String getPu_maker_info_account_bank() {
		return pu_maker_info_account_bank;
	}

	public void setPu_maker_info_account_bank(String pu_maker_info_account_bank) {
		this.pu_maker_info_account_bank = pu_maker_info_account_bank;
	}

	public String getPu_maker_info_account_number() {
		return pu_maker_info_account_number;
	}

	public void setPu_maker_info_account_number(String pu_maker_info_account_number) {
		this.pu_maker_info_account_number = pu_maker_info_account_number;
	}

	public String getPu_maker_info_account_name() {
		return pu_maker_info_account_name;
	}

	public void setPu_maker_info_account_name(String pu_maker_info_account_name) {
		this.pu_maker_info_account_name = pu_maker_info_account_name;
	}

	public String getPu_maker_info_account_copy() {
		return pu_maker_info_account_copy;
	}

	public void setPu_maker_info_account_copy(String pu_maker_info_account_copy) {
		if(pu_maker_info_account_copy.trim().equals("")) {
			pu_maker_info_account_copy = null;
		}
		this.pu_maker_info_account_copy = pu_maker_info_account_copy;
	}

	public Integer getPu_maker_info_mem_code() {
		return pu_maker_info_mem_code;
	}

	public void setPu_maker_info_mem_code(Integer pu_maker_info_mem_code) {
		this.pu_maker_info_mem_code = pu_maker_info_mem_code;
	}

	public Integer getPu_maker_info_pro_no() {
		return pu_maker_info_pro_no;
	}

	public void setPu_maker_info_pro_no(Integer pu_maker_info_pro_no) {
		this.pu_maker_info_pro_no = pu_maker_info_pro_no;
	}
	
	public MultipartFile getAccount() {
		return account;
	}

	public void setAccount(MultipartFile account) {
		this.account = account;
		this.pu_maker_info_account_copy = account.getOriginalFilename();
	}

	public MultipartFile getAgreement() {
		return agreement;
	}

	public void setAgreement(MultipartFile agreement) {
		this.agreement = agreement;
		this.pu_maker_info_bn_agreement = this.agreement.getOriginalFilename();
	}

	public MultipartFile getComp_img() {
		return comp_img;
	}

	public void setComp_img(MultipartFile comp_img) {
		this.comp_img = comp_img;
		this.pu_maker_info_comp_img = comp_img.getOriginalFilename();
	}

	@Override
	public String toString() {
		return "Maker_infoVO [pu_maker_info_comp_name=" + pu_maker_info_comp_name + ", pu_maker_info_comp_img="
				+ pu_maker_info_comp_img + ", pu_maker_info_inquiry_mail=" + pu_maker_info_inquiry_mail
				+ ", pu_maker_info_inquiry_phone=" + pu_maker_info_inquiry_phone + ", pu_maker_info_homepage_url1="
				+ pu_maker_info_homepage_url1 + ", pu_maker_info_homepage_url2=" + pu_maker_info_homepage_url2
				+ ", pu_maker_info_bn_classifi=" + pu_maker_info_bn_classifi + ", pu_maker_info_bn_agreement="
				+ pu_maker_info_bn_agreement + ", pu_maker_info_repre_name=" + pu_maker_info_repre_name
				+ ", pu_maker_info_repre_mail=" + pu_maker_info_repre_mail + ", pu_maker_info_repre_phone="
				+ pu_maker_info_repre_phone + ", pu_maker_info_reg_num_pre=" + pu_maker_info_reg_num_pre
				+ ", pu_maker_info_reg_num_post=" + pu_maker_info_reg_num_post + ", pu_maker_info_tax_mail="
				+ pu_maker_info_tax_mail + ", pu_maker_info_account_bank=" + pu_maker_info_account_bank
				+ ", pu_maker_info_account_number=" + pu_maker_info_account_number + ", pu_maker_info_account_name="
				+ pu_maker_info_account_name + ", pu_maker_info_account_copy=" + pu_maker_info_account_copy
				+ ", pu_maker_info_license=" + pu_maker_info_license + ", pu_maker_info_mem_code="
				+ pu_maker_info_mem_code + ", pu_maker_info_pro_no=" + pu_maker_info_pro_no + ", comp_img=" + comp_img
				+ ", agreement=" + agreement + ", account=" + account + "]";
	}

	
	
}
