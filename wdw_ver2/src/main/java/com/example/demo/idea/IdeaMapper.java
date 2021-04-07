package com.example.demo.idea;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.IdeaVO;

@Mapper
public interface IdeaMapper {
	List<IdeaVO> list();
	
	List<IdeaVO> listSch(IdeaVO vo);
	
	IdeaVO detail(int no);
	
	void insert(IdeaVO vo);

	int delete(IdeaVO vo);
	
	void modify(IdeaVO vo);

}
