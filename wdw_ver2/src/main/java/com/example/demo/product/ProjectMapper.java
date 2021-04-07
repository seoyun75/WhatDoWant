package com.example.demo.product;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.Maker_infoVO;
import com.example.demo.model.Proboard_commentVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.Reward_selectVO;
import com.example.demo.model.RiskpolicyVO;
import com.example.demo.model.StoryVO;
import com.example.demo.model.ViewsVO;

@Mapper
public interface ProjectMapper {

	List<ProjectVO> list();
	
	List<ProjectVO> listSch(ProjectVO vo);

	List<Basic_infoVO> prodday(ProjectVO vo);
	
//	List<ProjectVO> listType(ProjectVO vo);
	ProjectVO improject(ProjectVO vo);
	
	Basic_infoVO improBinfo(ProjectVO vo);
	
	Maker_infoVO improMakfo(ProjectVO vo);
	String dday(ProjectVO pvo);

	List<Project_boardVO> improBoaed(ProjectVO vo);
	
	Project_boardVO improBoard(Project_boardVO bo);
	
	List<Reward_dsnVO> improRedsn(ProjectVO vo);

	RiskpolicyVO improRisk(ProjectVO vo);

	StoryVO improStory(ProjectVO vo);
	
	PurhistoryVO improPustr(ProjectVO vo);
	
	Reward_dsnVO improsele(String option);
	
//	void inserts(Project_boardVO bbo);
	
	
//	void insert(List<PurhistoryVO> pur);
	void insert(PurhistoryVO pur);
	
	void modify(int no);
	
	int board_no(Project_boardVO bo);
	
	void inquiry_insert(Project_boardVO bo);
	
	//프로젝트 종료 리스트 뽑기
	List<ProjectVO> endPro();
	
}
