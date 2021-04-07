package com.example.demo.join;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.MemberVO;



@Mapper
public interface JoinMapper {
	void join(MemberVO vo);
}
