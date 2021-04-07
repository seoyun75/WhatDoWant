package com.example.demo.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.NoticeVO;

@Mapper
public interface PressMapper {

	List<NoticeVO> press_list();
	
	List<NoticeVO> press_listSch(NoticeVO vo);
	
	NoticeVO press_detail(int no);
	
	

}
