package com.example.demo.model;

import java.util.List;

public class MainPageContentList {
	List<ProjectVO> newProject;		// 새 프로젝트
	List<ProjectVO> monthStartup;	// 이 달의 스타트업
	List<ProjectVO> closingProject;	// 마감임박
	List<ProjectVO> likeProject;	// 좋아하는 프로젝트
	List<ProjectVO> earlyBird;		// 얼리버드
	List<ProjectVO> soarProject;	// 급상승 프로젝트
	List<ProjectVO> heartProject;	// 급상승 프로젝트
	List<ProjectVO> dayProject;		// 요일변경
	List<ProjectVO> cheapList;		// 값 싼 랜덤 리워드 리스트
	List<BannerVO> bannerList;		// 배너 리스트
	BannerVO firstbanner;			// active 배너
	
	
	public BannerVO getFirstbanner() {
		return firstbanner;
	}
	public void setFirstbanner(BannerVO firstbanner) {
		this.firstbanner = firstbanner;
	}
	public List<BannerVO> getBannerList() {
		return bannerList;
	}
	public void setBannerList(List<BannerVO> bannerList) {
		this.bannerList = bannerList;
	}
	public List<ProjectVO> getNewProject() {
		return newProject;
	}
	public void setNewProject(List<ProjectVO> newProject) {
		this.newProject = newProject;
	}
	public List<ProjectVO> getMonthStartup() {
		return monthStartup;
	}
	public void setMonthStartup(List<ProjectVO> monthStartup) {
		this.monthStartup = monthStartup;
	}
	public List<ProjectVO> getClosingProject() {
		return closingProject;
	}
	public void setClosingProject(List<ProjectVO> closingProject) {
		this.closingProject = closingProject;
	}
	public List<ProjectVO> getLikeProject() {
		return likeProject;
	}
	public void setLikeProject(List<ProjectVO> likeProject) {
		this.likeProject = likeProject;
	}
	public List<ProjectVO> getEarlyBird() {
		return earlyBird;
	}
	public void setEarlyBird(List<ProjectVO> earlyBird) {
		this.earlyBird = earlyBird;
	}
	public List<ProjectVO> getSoarProject() {
		return soarProject;
	}
	public void setSoarProject(List<ProjectVO> soarProject) {
		this.soarProject = soarProject;
	}
	public List<ProjectVO> getHeartProject() {
		return heartProject;
	}
	public void setHeartProject(List<ProjectVO> heartProject) {
		this.heartProject = heartProject;
	}
	public List<ProjectVO> getDayProject() {
		return dayProject;
	}
	public void setDayProject(List<ProjectVO> dayProject) {
		this.dayProject = dayProject;
	}
	public List<ProjectVO> getCheapList() {
		return cheapList;
	}
	public void setCheapList(List<ProjectVO> cheapList) {
		this.cheapList = cheapList;
	}
	
	
	
	
}
