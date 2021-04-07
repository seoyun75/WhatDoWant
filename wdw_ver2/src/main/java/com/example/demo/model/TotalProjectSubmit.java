package com.example.demo.model;

import org.apache.ibatis.type.Alias;

@Alias("totalProjectSubmit")
public class TotalProjectSubmit {
	
	Basic_reqVO bReq;
	Basic_infoVO bInfo;
	StoryVO story;
	RiskpolicyVO risk;
	Maker_infoVO mInfo;
	String member_id;
	
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Basic_reqVO getbReq() {
		return bReq;
	}
	public void setbReq(Basic_reqVO bReq) {
		this.bReq = bReq;
	}
	public Basic_infoVO getbInfo() {
		return bInfo;
	}
	public void setbInfo(Basic_infoVO bInfo) {
		this.bInfo = bInfo;
	}
	public StoryVO getStory() {
		return story;
	}
	public void setStory(StoryVO story) {
		this.story = story;
	}
	public RiskpolicyVO getRisk() {
		return risk;
	}
	public void setRisk(RiskpolicyVO risk) {
		this.risk = risk;
	}
	public Maker_infoVO getmInfo() {
		return mInfo;
	}
	public void setmInfo(Maker_infoVO mInfo) {
		this.mInfo = mInfo;
	}
	
	
	
}
