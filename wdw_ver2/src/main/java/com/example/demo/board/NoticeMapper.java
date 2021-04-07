package com.example.demo.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.NoticeVO;

@Mapper
public interface NoticeMapper {

	List<NoticeVO> notice_list();
	
	List<NoticeVO> notice_listSch(NoticeVO vo);
	
	NoticeVO notice_detail(int no);
	
	

}
