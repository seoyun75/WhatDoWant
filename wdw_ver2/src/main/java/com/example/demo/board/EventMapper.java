package com.example.demo.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.NoticeVO;

@Mapper
public interface EventMapper {

	
	List<NoticeVO> event_list();
	
	List<NoticeVO> event_listSch(NoticeVO vo);
	
	NoticeVO event_detail(int no);


}
