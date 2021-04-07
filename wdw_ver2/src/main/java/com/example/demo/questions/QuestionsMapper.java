package com.example.demo.questions;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.QuestionsVO;

@Mapper
public interface QuestionsMapper {
	List<QuestionsVO> fnq_list();

	List<QuestionsVO> fnq_listSch(QuestionsVO vo);
	

	
}
