package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;


@Alias("questionsVO")
public class QuestionsVO {
	
	
	Integer si_no, si_cnt;
	String si_cate, si_title, si_content, si_img;
	Date si_regdate;
	
	
	public Integer getSi_no() {
		return si_no;
	}
	public void setSi_no(Integer si_no) {
		this.si_no = si_no;
	}
	public Integer getSi_cnt() {
		return si_cnt;
	}
	public void setSi_cnt(Integer si_cnt) {
		this.si_cnt = si_cnt;
	}
	public String getSi_cate() {
		return si_cate;
	}
	public void setSi_cate(String si_cate) {
		this.si_cate = si_cate;
	}
	public String getSi_title() {
		return si_title;
	}
	public void setSi_title(String si_title) {
		this.si_title = si_title;
	}
	public String getSi_content() {
		return si_content;
	}
	public void setSi_content(String si_content) {
		this.si_content = si_content;
	}
	public String getSi_img() {
		return si_img;
	}
	public void setSi_img(String si_img) {
		this.si_img = si_img;
	}
	public Date getSi_regdate() {
		return si_regdate;
	}
	public void setSi_regdate(Date si_regdate) {
		this.si_regdate = si_regdate;
	}
	
	
	
}
