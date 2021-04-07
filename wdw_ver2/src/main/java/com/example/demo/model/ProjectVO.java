package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("projectVO")
public class ProjectVO {
   String 
         pro_license, // 사업자 등록증
         pro_cate, // 카테고리
         pro_state, // 상태
         pro_content, // 내용
         pro_title,   // 프로젝트 제목
         pro_writter,   // 프로젝트 등록자
         pro_img; // 이미지

   Date    pro_regdate, // 등록일
         pro_startdate, // 시작일
         pro_endate; // 종료일

   Integer pro_dday,
   			pro_code,    // 프로젝트 코드
   			pro_target_amount, // 목표금액
   			pro_now_amount; // 누적금액

public String getPro_license() {
	return pro_license;
}

public void setPro_license(String pro_license) {
	this.pro_license = pro_license;
}

public String getPro_cate() {
	return pro_cate;
}

public void setPro_cate(String pro_cate) {
	this.pro_cate = pro_cate;
}

public String getPro_state() {
	return pro_state;
}

public void setPro_state(String pro_state) {
	this.pro_state = pro_state;
}

public String getPro_content() {
	return pro_content;
}

public void setPro_content(String pro_content) {
	this.pro_content = pro_content;
}

public String getPro_title() {
	return pro_title;
}

public void setPro_title(String pro_title) {
	this.pro_title = pro_title;
}

public String getPro_writter() {
	return pro_writter;
}

public void setPro_writter(String pro_writter) {
	this.pro_writter = pro_writter;
}

public String getPro_img() {
	return pro_img;
}

public void setPro_img(String pro_img) {
	this.pro_img = pro_img;
}

public Date getPro_regdate() {
	return pro_regdate;
}

public void setPro_regdate(Date pro_regdate) {
	this.pro_regdate = pro_regdate;
}

public Date getPro_startdate() {
	return pro_startdate;
}

public void setPro_startdate(Date pro_startdate) {
	this.pro_startdate = pro_startdate;
}

public Date getPro_endate() {
	return pro_endate;
}

public void setPro_endate(Date pro_endate) {
	this.pro_endate = pro_endate;
}

public Integer getPro_dday() {
	return pro_dday;
}

public void setPro_dday(Integer pro_dday) {
	this.pro_dday = pro_dday;
}

public Integer getPro_code() {
	return pro_code;
}

public void setPro_code(Integer pro_code) {
	this.pro_code = pro_code;
}

public Integer getPro_target_amount() {
	return pro_target_amount;
}

public void setPro_target_amount(Integer pro_target_amount) {
	this.pro_target_amount = pro_target_amount;
}

public Integer getPro_now_amount() {
	return pro_now_amount;
}

public void setPro_now_amount(Integer pro_now_amount) {
	this.pro_now_amount = pro_now_amount;
}

@Override
public String toString() {
	return "ProjectVO [pro_license=" + pro_license + ", pro_cate=" + pro_cate + ", pro_state=" + pro_state
			+ ", pro_content=" + pro_content + ", pro_title=" + pro_title + ", pro_writter=" + pro_writter
			+ ", pro_img=" + pro_img + ", pro_regdate=" + pro_regdate + ", pro_startdate=" + pro_startdate
			+ ", pro_endate=" + pro_endate + ", pro_dday=" + pro_dday + ", pro_code=" + pro_code
			+ ", pro_target_amount=" + pro_target_amount + ", pro_now_amount=" + pro_now_amount + "]";
}

   
}