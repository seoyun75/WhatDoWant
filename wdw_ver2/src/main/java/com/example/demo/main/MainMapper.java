package com.example.demo.main;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.model.ProjectVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.main.SalesRecord;

@Mapper
public interface MainMapper {
	// 새 프로젝트
	List<ProjectVO> newProject();
	// 이 달의 스타트업 -- 이 달에 올라온 프로젝트 중 올해 기준으로 개업연월일이 5년 미만인 사업체들의 프로젝트
	List<ProjectVO> startupProject();
	// 마감임박 -- 5일 이내 마감되는 프로젝트 중 매출액이 높은 프로젝튼
	List<ProjectVO> closingProject();
	// 얼리버드
	List<ProjectVO> earlyBird();
	// 급상승 프로젝트
	List<SalesRecord> todaySales();
	List<SalesRecord> yesterdaySales();
	List<ProjectVO> soarProject(HashMap<String, Object> topSix);
	// 좋아요가 많이 눌린 프로젝트
	//List<ProjectVO> heartProject();
	
	// 요일이 바뀔때마다 변경되는 카테고리 상위 5개 리스트
	List<ProjectVO> sundayProject();	//일요일
	List<ProjectVO> mondayProject();	//월요일
	List<ProjectVO> tuesdayProject();	//화요일
	List<ProjectVO> wednesdayProject();	//수요일
	List<ProjectVO> thursdayProject();	//목요일
	List<ProjectVO> fridayProject();	//금요일
	List<ProjectVO> saturdayProject();	//토요일
	
	// 리워드 값이 35000원 이하 제품 랜덤으로 5개 리스트
	List<Integer> cheapReward(Reward_dsnVO rdvo);
	
	// 프로젝트 코드로 프로젝트 리스트 추출
	ProjectVO cheapList(ProjectVO pvo);
	
}
