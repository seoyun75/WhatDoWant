package com.example.demo.ajax;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.MemberVO;
import com.example.demo.model.ajax.ALogin;


@Mapper
public interface AjaxMapper {
	String pwChk(ALogin alogin);
	MemberVO login(ALogin alogin);
	String idChk(String id);
}
