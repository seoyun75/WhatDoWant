package com.example.demo.banner;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.BannerVO;

@Mapper
public interface BannerMapper {
	
	//첫번째 배너 추출
	BannerVO firstBanner(BannerVO banvo);
	
	//배너 리스트(for each문 돌려서 main.jsp에서 추출)
	List<BannerVO> mainBanner(BannerVO banvo);
	
	//배너 추가
	int bannerInsert(BannerVO banvo);
	//베너 제거
	int bannerDelete(BannerVO banvo);
	//
	BannerVO detail(BannerVO banvo);
	
	
}
