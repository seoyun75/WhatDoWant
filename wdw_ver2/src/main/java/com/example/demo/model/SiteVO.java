package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("siteVO")
public class SiteVO {
	String si_cate, si_title, si_content, si_img, si_writer, si_answar;
	int si_no, si_cnt, si_seq/* 답글쓸때 원글번호 */;
	Date si_regdate;
	
	
	public String getSi_answar() {
		return si_answar;
	}
	public void setSi_answar(String si_answar) {
		this.si_answar = si_answar;
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
	public String getSi_writer() {
		return si_writer;
	}
	public void setSi_writer(String si_writer) {
		this.si_writer = si_writer;
	}
	public int getSi_no() {
		return si_no;
	}
	public void setSi_no(int si_no) {
		this.si_no = si_no;
	}
	public int getSi_cnt() {
		return si_cnt;
	}
	public void setSi_cnt(int si_cnt) {
		this.si_cnt = si_cnt;
	}
	public int getSi_seq() {
		return si_seq;
	}
	public void setSi_seq(int si_seq) {
		this.si_seq = si_seq;
	}
	public Date getSi_regdate() {
		return si_regdate;
	}
	public void setSi_regdate(Date si_regdate) {
		this.si_regdate = si_regdate;
	}
	@Override
	public String toString() {
		return "SiteVO [si_cate=" + si_cate + ", si_title=" + si_title + ", si_content=" + si_content + ", si_img="
				+ si_img + ", si_writer=" + si_writer + ", si_no=" + si_no + ", si_cnt=" + si_cnt + ", si_seq=" + si_seq
				+ ", si_regdate=" + si_regdate + "]";
	}
	
	
}
