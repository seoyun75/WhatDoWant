package com.example.demo.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("storyVO")
public class StoryVO {
	
	Integer pu_story_mem_code, pu_story_pro_no;
	String pu_story_intro_img, pu_story_proj_summary, pu_story_proj_story_img;
	MultipartFile intro_img, story_img;
	
	public Integer getPu_story_mem_code() {
		return pu_story_mem_code;
	}
	public void setPu_story_mem_code(Integer pu_story_mem_code) {
		this.pu_story_mem_code = pu_story_mem_code;
	}
	public Integer getPu_story_pro_no() {
		return pu_story_pro_no;
	}
	public void setPu_story_pro_no(Integer pu_story_pro_no) {
		this.pu_story_pro_no = pu_story_pro_no;
	}
	public String getPu_story_intro_img() {
		return pu_story_intro_img;
	}
	public void setPu_story_intro_img(String pu_story_intro_img) {
		if(pu_story_intro_img.trim().equals("")) {
			pu_story_intro_img = null;
		}
		
		this.pu_story_intro_img = pu_story_intro_img;
	}
	public String getPu_story_proj_summary() {
		return pu_story_proj_summary;
	}
	public void setPu_story_proj_summary(String pu_story_proj_summary) {
		this.pu_story_proj_summary = pu_story_proj_summary;
	}
	public String getPu_story_proj_story_img() {
		return pu_story_proj_story_img;
	}
	public void setPu_story_proj_story_img(String pu_story_proj_story_img) {
		if(pu_story_proj_story_img.trim().equals("")) {
			pu_story_proj_story_img = null;
		}
		
		this.pu_story_proj_story_img = pu_story_proj_story_img;
	}
	
	
	public MultipartFile getIntro_img() {
		return intro_img;
	}
	public void setIntro_img(MultipartFile intro_img) {
		this.intro_img = intro_img;
		this.pu_story_intro_img = intro_img.getOriginalFilename();
	}
	public MultipartFile getStory_img() {
		return story_img;
	}
	public void setStory_img(MultipartFile story_img) {
		this.story_img = story_img;
		this.pu_story_proj_story_img = story_img.getOriginalFilename();
	}
	@Override
	public String toString() {
		return "StoryVO [pu_story_mem_code=" + pu_story_mem_code + ", pu_story_pro_no=" + pu_story_pro_no
				+ ", pu_story_intro_img=" + pu_story_intro_img + ", pu_story_proj_summary=" + pu_story_proj_summary
				+ ", pu_story_proj_story_img=" + pu_story_proj_story_img + "]";
	}
	
}
