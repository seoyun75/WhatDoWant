package com.example.demo.project_after;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;

@Mapper
public interface Project_afterMapper {
	List<PurhistoryVO>deliveryList(Integer pro_code);
	int sendDelivery(Map<String, Object> id_date);
	
	//펀딩현황 프로젝트 코드에 맞는 구매자 리스트 추출
	List<PurhistoryVO> purhislist(ProjectVO pvo);
	
	//구매자 성명 추출
	String purname(PurhistoryVO phvo);
	
	String inquirywriter(Project_boardVO pjbvo);
	
	Integer procode(String id);
	
	List<Project_boardVO> inquiryList(ProjectVO pvo);
	
	void inquiry_answer(Project_boardVO pjbvo);
	
	int getmaxno();
	
	// 프로젝트 진행상황 리스트 가져오기'
	List<Project_boardVO> proBoardList(ProjectVO pvo);
	// 프로젝트 진행상황 상세페이지
	Project_boardVO BoardDetail(Project_boardVO pbvo);
	// 프로젝트 진행상황 등록
	int progressInsert(Project_boardVO pbvo);
	// 진행상황 삭제
	int progressDelete(Project_boardVO pbvo);
	
}
