package com.example.demo.project_up;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.Basic_reqVO;
import com.example.demo.model.Maker_infoVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.RiskpolicyVO;
import com.example.demo.model.StoryVO;
import com.example.demo.model.TotalProjectSubmit;



@Mapper
public interface Project_upMapper {
	
	int getMaxProNo();
	void createStep1(Basic_reqVO brvo);
	void createStep2(Basic_infoVO bivo);
	void createStep3(StoryVO stvo);
	void createStep5(RiskpolicyVO rpvo);
	void createStep6(Maker_infoVO mivo);
	void createProj(TotalProjectSubmit tps);
	
	Basic_reqVO searchStep1(Basic_reqVO brvo);
	void updateStep1(Basic_reqVO brvo);
	
	Basic_infoVO searchStep2(Basic_infoVO bivo);
	void updateStep2(Basic_infoVO bivo);

	StoryVO searchStep3(StoryVO stvo);
	void updateStep3(StoryVO stvo);

	List<Reward_dsnVO> searchStep4(Reward_dsnVO rdvo);
	void insertStep4(Reward_dsnVO rdvo);
	void updateStep4(Reward_dsnVO rdvo);
	void deleteRwd(Reward_dsnVO rdvo);
	
	RiskpolicyVO searchStep5(RiskpolicyVO rpvo);
	void updateStep5(RiskpolicyVO rpvo);
	
	Maker_infoVO searchStep6(Maker_infoVO mivo);
	void updateStep6(Maker_infoVO mivo);
	
	void rePreImgDelete(Basic_infoVO bivo);
	void introImgDelete(StoryVO stvo);
	void storyImgDelete(StoryVO stvo);
	void compDelete(Maker_infoVO mivo);
	void agreeDelete(Maker_infoVO mivo);
	void accountDelete(Maker_infoVO mivo);
	
	void submit(TotalProjectSubmit tps);
	
}
