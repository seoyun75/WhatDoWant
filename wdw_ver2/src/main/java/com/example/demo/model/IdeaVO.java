package com.example.demo.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;


@Alias("ideaVO")
public class IdeaVO {
	
	Integer no, gid, seq, lev, cnt;
	String writer, title, content, img;
	Date regdate;
	
	MultipartFile upfileFF;
	
	
	
	public MultipartFile getUpfileFF() {
		return upfileFF;
	}
	public void setUpfileFF(MultipartFile upfileFF) {
		this.upfileFF = upfileFF;
		img = upfileFF.getOriginalFilename();
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public Integer getLev() {
		return lev;
	}
	public void setLev(Integer lev) {
		this.lev = lev;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
