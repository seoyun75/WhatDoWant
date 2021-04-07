package com.example.demo.model;

import org.apache.ibatis.type.Alias;

@Alias("memberVO")    //회원 테이블 객체
public class MemberVO {
   Integer member_no,member_point;
   String    member_id,
         member_pname,
         member_pw,
         member_phone,
         member_img,
         member_business_license,
         member_address;
   
   public MemberVO() {
	// TODO Auto-generated constructor stub
   }
   
   public MemberVO(Integer member_no, String member_id, String member_pw, String member_phone, String member_address) {
	super();
	this.member_no = member_no;
	this.member_id = member_id;
	this.member_pw = member_pw;
	this.member_phone = member_phone;
	this.member_address = member_address;
   }
public Integer getMember_no() {
      return member_no;
   }
   public void setMember_no(Integer member_no) {
      this.member_no = member_no;
   }
   public Integer getMember_wallet() {
      return member_point;
   }
   public void setMember_wallet(Integer member_wallet) {
      this.member_point = member_wallet;
   }
   public String getMember_id() {
      return member_id;
   }
   public void setMember_id(String member_id) {
      this.member_id = member_id;
   }
   public String getMember_pname() {
      return member_pname;
   }
   public void setMember_pname(String member_pname) {
      this.member_pname = member_pname;
   }
   public String getMember_pw() {
      return member_pw;
   }
   public void setMember_pw(String member_pw) {
      this.member_pw = member_pw;
   }
   public String getMember_phone() {
      return member_phone;
   }
   public void setMember_phone(String member_phone) {
      this.member_phone = member_phone;
   }
   public String getMember_img() {
      return member_img;
   }
   public void setMember_img(String member_img) {
      this.member_img = member_img;
   }
   public String getMember_business_license() {
      return member_business_license;
   }
   public void setMember_business_license(String member_business_license) {
      this.member_business_license = member_business_license;
   }
   public String getMember_address() {
      return member_address;
   }
   public void setMember_address(String member_address) {
      this.member_address = member_address;
   }
   @Override
   public String toString() {
      return "MemberVO [member_no=" + member_no + ", member_point=" + member_point + ", member_id=" + member_id
            + ", member_pname=" + member_pname + ", member_pw=" + member_pw + ", member_phone=" + member_phone
            + ", member_img=" + member_img + ", member_business_license=" + member_business_license + ", member_address="
            + member_address + "]";
   }
      
}