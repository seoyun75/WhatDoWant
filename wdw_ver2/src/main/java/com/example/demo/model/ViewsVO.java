package com.example.demo.model;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("viewsVO")	// pom 수정
public class ViewsVO {
	
	Basic_infoVO info;
	List<Reward_dsnVO> rewdsn;		// <> 제너릭 , <타입> 에 맞게 리스트에 담아준다. 
									// ex) <String> 일 떄는 문자형만 담아준다.
	RiskpolicyVO risk;
	StoryVO story;
	Maker_infoVO maker;
	ProjectVO provo;
	List<Project_boardVO> probo;
	Project_boardVO probb;
	Proboard_commentVO procom;
	PurhistoryVO pustr;
	
	
	public Basic_infoVO getInfo() {
		return info;
	}
	public void setInfo(Basic_infoVO info) {
		this.info = info;
	}
	public List<Reward_dsnVO> getRewdsn() {
		return rewdsn;
	}
	public void setRewdsn(List<Reward_dsnVO> rewdsn) {
		this.rewdsn = rewdsn;
	}
	public RiskpolicyVO getRisk() {
		return risk;
	}
	public void setRisk(RiskpolicyVO risk) {
		this.risk = risk;
	}
	public StoryVO getStory() {
		return story;
	}
	public void setStory(StoryVO story) {
		this.story = story;
	}
	public Maker_infoVO getMaker() {
		return maker;
	}
	public void setMaker(Maker_infoVO maker) {
		this.maker = maker;
	}
	public ProjectVO getProvo() {
		return provo;
	}
	public void setProvo(ProjectVO provo) {
		this.provo = provo;
	}
	
	public Project_boardVO getProbb() {
		return probb;
	}
	public void setProbb(Project_boardVO probb) {
		this.probb = probb;
	}
	public List<Project_boardVO> getProbo() {
		return probo;
	}
	public void setProbo(List<Project_boardVO> probo) {
		this.probo = probo;
	}
	public Proboard_commentVO getProcom() {
		return procom;
	}
	public void setProcom(Proboard_commentVO procom) {
		this.procom = procom;
	}
	public PurhistoryVO getPustr() {
		return pustr;
	}
	public void setPustr(PurhistoryVO pustr) {
		this.pustr = pustr;
	}
	
	
}
