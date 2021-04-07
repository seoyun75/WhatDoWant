package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("project_boardVO")	// pom 수정
public class Project_boardVO {

	Integer project_board_no, project_board_pro_no;
	String project_board_cate, project_board_title, project_board_content, project_board_img, project_board_writer;
	Date project_board_regdate;
	
	MultipartFile progressFile;
	
	
	
	
	public MultipartFile getProgressFile() {
		return progressFile;
	}
	
	public void setProgressFile(MultipartFile progressFile) {
		this.progressFile = progressFile;
	}
	
	public Integer getProject_board_no() {
		return project_board_no;
	}
	
	public String getContentSub() {
		return project_board_content.split("<br>")[0];
	}
	
	public void setProject_board_no(Integer project_board_no) {
		this.project_board_no = project_board_no;
	}
	
	public Integer getProject_board_pro_no() {
		return project_board_pro_no;
	}
	public void setProject_board_pro_no(Integer project_board_pro_no) {
		this.project_board_pro_no = project_board_pro_no;
	}
	public String getProject_board_cate() {
		return project_board_cate;
	}
	public void setProject_board_cate(String project_board_cate) {
		this.project_board_cate = project_board_cate;
	}
	
	public String getProject_board_writer() {
		return project_board_writer;
	}
	public void setProject_board_writer(String project_board_writer) {
		this.project_board_writer = project_board_writer;
	}
	public String getProject_board_title() {
		return project_board_title;
	}
	public void setProject_board_title(String project_board_title) {
		this.project_board_title = project_board_title;
	}
	public String getProject_board_content() {
		return project_board_content;
	}
	public void setProject_board_content(String project_board_content) {
		
		project_board_content=project_board_content.replaceAll("\r\n", "<br>");
		System.out.println(project_board_content);
		this.project_board_content = project_board_content;
	}
	public String getProject_board_img() {
		return project_board_img;
	}
	public void setProject_board_img(String project_board_img) {
		this.project_board_img = project_board_img;
	}
	public Date getProject_board_regdate() {
		return project_board_regdate;
	}
	public void setProject_board_regdate(Date project_board_regdate) {
		this.project_board_regdate = project_board_regdate;
	}
	@Override
	public String toString() {
		return "Project_boardVO [project_board_no=" + project_board_no + ", project_board_pro_no="
				+ project_board_pro_no + ", project_board_cate=" + project_board_cate + ", project_board_title="
				+ project_board_title + ", project_board_content=" + project_board_content + ", project_board_img="
				+ project_board_img + ", project_board_writer=" + project_board_writer + ", project_board_regdate="
				+ project_board_regdate + "]";
	}
	
	
	
}
