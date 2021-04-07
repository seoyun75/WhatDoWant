package com.example.demo.model.ajax;

import org.apache.ibatis.type.Alias;

@Alias("aLogin")
public class ALogin {

	String id, pw;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "Join [id=" + id + ", pw=" + pw + "]";
	}

	
	
}
