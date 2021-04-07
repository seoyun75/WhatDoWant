package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("proboard_commentVO")	// pom 수정
public class Proboard_commentVO {

	Integer pro_board_comment_no, pro_board_comment_upper_no, 
		pro_board_comment_gid, pro_board_comment_seq, pro_board_comment_lev, 
		pro_board_comment_cnt;
	String pro_board_comment_content, pro_board_comment_writer;
	Date pro_board_comment_regdate;
	
	public Integer getPro_board_comment_no() {
		return pro_board_comment_no;
	}
	public void setPro_board_comment_no(Integer pro_board_comment_no) {
		this.pro_board_comment_no = pro_board_comment_no;
	}
	public Integer getPro_board_comment_upper_no() {
		return pro_board_comment_upper_no;
	}
	public void setPro_board_comment_upper_no(Integer pro_board_comment_upper_no) {
		this.pro_board_comment_upper_no = pro_board_comment_upper_no;
	}
	public Integer getPro_board_comment_gid() {
		return pro_board_comment_gid;
	}
	public void setPro_board_comment_gid(Integer pro_board_comment_gid) {
		this.pro_board_comment_gid = pro_board_comment_gid;
	}
	public Integer getPro_board_comment_seq() {
		return pro_board_comment_seq;
	}
	public void setPro_board_comment_seq(Integer pro_board_comment_seq) {
		this.pro_board_comment_seq = pro_board_comment_seq;
	}
	public Integer getPro_board_comment_lev() {
		return pro_board_comment_lev;
	}
	public void setPro_board_comment_lev(Integer pro_board_comment_lev) {
		this.pro_board_comment_lev = pro_board_comment_lev;
	}
	public Integer getPro_board_comment_cnt() {
		return pro_board_comment_cnt;
	}
	public void setPro_board_comment_cnt(Integer pro_board_comment_cnt) {
		this.pro_board_comment_cnt = pro_board_comment_cnt;
	}
	public String getPro_board_comment_content() {
		return pro_board_comment_content;
	}
	public void setPro_board_comment_content(String pro_board_comment_content) {
		this.pro_board_comment_content = pro_board_comment_content;
	}
	public String getPro_board_comment_writer() {
		return pro_board_comment_writer;
	}
	public void setPro_board_comment_writer(String pro_board_comment_writer) {
		this.pro_board_comment_writer = pro_board_comment_writer;
	}
	public Date getPro_board_comment_regdate() {
		return pro_board_comment_regdate;
	}
	public void setPro_board_comment_regdate(Date pro_board_comment_regdate) {
		this.pro_board_comment_regdate = pro_board_comment_regdate;
	}
	
	@Override
	public String toString() {
		return "Proboard_commentVO [pro_board_comment_no=" + pro_board_comment_no + ", pro_board_comment_upper_no="
				+ pro_board_comment_upper_no + ", pro_board_comment_gid=" + pro_board_comment_gid
				+ ", pro_board_comment_seq=" + pro_board_comment_seq + ", pro_board_comment_lev="
				+ pro_board_comment_lev + ", pro_board_comment_cnt=" + pro_board_comment_cnt
				+ ", pro_board_comment_content=" + pro_board_comment_content + ", pro_board_comment_writer="
				+ pro_board_comment_writer + ", pro_board_comment_regdate=" + pro_board_comment_regdate + "]";
	}
	
	
	
}
