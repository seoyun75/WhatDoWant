package com.example.demo.login;

import org.apache.ibatis.annotations.Mapper;


import com.example.demo.model.MemberVO;

@Mapper
public interface LoginMapper {
	MemberVO login(MemberVO vo);
	MemberVO searchPW(String id);
}
