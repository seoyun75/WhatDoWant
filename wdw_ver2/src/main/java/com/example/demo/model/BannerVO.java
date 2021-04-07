package com.example.demo.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("bannerVO")
public class BannerVO {
	String ban_location,		//배너 위치
		   ban_subject,		//배너 종류 * 관리자에서 구분지을용도
		   ban_main_img,	//배너 이미지 위치 절대값
		   ban_url,			//배너 클릭시 이동할 페이지 url
		   img_name;		//배너 이름 꺼내기
			
	MultipartFile upfileFF;
	
	int ban_no = 0;


	public int getBan_no() {
		return ban_no;
	}

	public void setBan_no(int ban_no) {
		this.ban_no = ban_no;
	}

	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public MultipartFile getUpfileFF() {
		return upfileFF;
	}

	public void setUpfileFF(MultipartFile upfileFF) {
		this.upfileFF = upfileFF;
	}

	public String getBan_location() {
		return ban_location;
	}

	public void setBan_location(String ban_location) {
		this.ban_location = ban_location;
	}

	public String getBan_subject() {
		return ban_subject;
	}

	public void setBan_subject(String ban_subject) {
		this.ban_subject = ban_subject;
	}

	public String getBan_main_img() {
		return ban_main_img;
	}

	public void setBan_main_img(String ban_main_img) {
		this.ban_main_img = ban_main_img;
		img_name = ban_main_img.substring(ban_main_img.lastIndexOf("\\"));
	}

	public String getBan_url() {
		return ban_url;
	}

	public void setBan_url(String ban_url) {
		this.ban_url = ban_url;
	}

	@Override
	public String toString() {
		return "BannerVO [ban_location=" + ban_location + ", ban_subject=" + ban_subject + ", ban_main_img="
				+ ban_main_img + ", ban_url=" + ban_url + ", upfileFF=" + upfileFF + "]";
	}




	
	
	
	
}
