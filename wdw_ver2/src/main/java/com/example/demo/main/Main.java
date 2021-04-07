package com.example.demo.main;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TreeSet;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.banner.BannerMapper;
import com.example.demo.di.Action;
import com.example.demo.model.BannerVO;
import com.example.demo.model.MainPageContentList;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.main.SalesRecord;

@Service("main")
public class Main implements Action{

	@Resource
	MainMapper mapper;
	@Resource
	BannerMapper bmapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		Date todayE = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("E");
		
		Reward_dsnVO rdvo = (Reward_dsnVO)map.get("rdvo");
		ProjectVO pvo = (ProjectVO)map.get("pvo");
		BannerVO banvo = (BannerVO)map.get("banvo");
		ArrayList<ProjectVO> buf = new ArrayList<>();
		
		// 시스템 오늘의 요일을 담을 변수
		String day = sdf.format(todayE);
		
		System.out.println("main/main execute 실행()");
		
		String service = (String)map.get("service");
		
		MainPageContentList pmcl = new MainPageContentList();
		
		BannerVO first = bmapper.firstBanner(banvo);
		pmcl.setFirstbanner(first);
		
		//배너 foreach
		List<BannerVO> bannerList = bmapper.mainBanner(banvo);
		pmcl.setBannerList(bannerList);
		System.out.println(bannerList);
		
		// 새 프로젝트
		List<ProjectVO> newPList = mapper.newProject();
		pmcl.setNewProject(newPList);
		
		// 이 달의 스타트업 -- 이 달에 올라온 프로젝트 중 올해 기준으로 개업연월일이 5년 미만인 사업체들의 프로젝트
//		List<ProjectVO> startup = mapper.startupProject();
//		pmcl.setMonthStartup(startup);
		
		// 마감임박
		List<ProjectVO> closing = mapper.closingProject();
		pmcl.setClosingProject(closing);
		
		// 얼리버드
		List<ProjectVO> earlyBird = mapper.earlyBird();
		pmcl.setEarlyBird(earlyBird);

		// 급상승 프로젝트
		List<SalesRecord> today = mapper.todaySales();
		List<SalesRecord> yesterday = mapper.yesterdaySales();
		List<SalesRecord> topSix = findSoarPro(today, yesterday);
		HashMap<String, Object> sMap = new HashMap<String, Object>();
		sMap.put("topPro", topSix);
		List<ProjectVO> soarProject = mapper.soarProject(sMap);
		pmcl.setSoarProject(soarProject);
		
		// 좋아요가 가장 많은 프로젝트
//		List<ProjectVO> heart = mapper.heartProject();
//		pmcl.setHeartProject(heart);
		
		// 리워드 값이 35000원 이하 리워드 프로젝트 코드
		
		List<Integer> cheap = mapper.cheapReward(rdvo);
//		System.out.println("리스트 cheap 값 : " + cheap);
		
		
		// List로 추출 된 리워드 번호를 프로젝트 리스트를 추출하는 cheaplist에 추가
		for (Integer i : cheap) {
			pvo.setPro_code(i);
//			System.out.println("pvo 값:"+pvo);
			ProjectVO cheaplist = mapper.cheapList(pvo);
			
//			System.out.println("cheaplist 값 : " + cheaplist);
			buf.add(cheaplist);
		}
		
		// arraylist 임시 객체 buf에 cheaplist를 추가해줌
		pmcl.setCheapList(buf);
		
		// 요일 카테고리 변경
		if(day.equals("일")) {
			List<ProjectVO> daychange = mapper.sundayProject();
//			System.out.println("day 값:"+daychange);
			pmcl.setDayProject(daychange);
		
		}else if(day.equals("월")) {
			List<ProjectVO> daychange = mapper.sundayProject();
//			System.out.println("day 값:"+daychange);
			pmcl.setDayProject(daychange);
		
		}else if(day.equals("화")) {
			List<ProjectVO> daychange = mapper.tuesdayProject();
//			System.out.println("day 값:"+daychange);
			pmcl.setDayProject(daychange);
		
		}else if(day.equals("수")) {
			List<ProjectVO> daychange = mapper.wednesdayProject();
//			System.out.println("day 값:"+daychange);
			pmcl.setDayProject(daychange);
		
		}else if(day.equals("목")) {
			List<ProjectVO> daychange = mapper.thursdayProject();
//			System.out.println("day 값:"+daychange);
			pmcl.setDayProject(daychange);
		
		}else if(day.equals("금")) {
			List<ProjectVO> daychange = mapper.fridayProject();
//			System.out.println("day 값:"+daychange);
			pmcl.setDayProject(daychange);
		
		}else {
			List<ProjectVO> daychange = mapper.saturdayProject();
//			System.out.println("day 값:"+daychange);
			pmcl.setDayProject(daychange);
		}
		return pmcl;
	}
	
	// 급상승 프로젝트 - 어제 오늘 매출 비교
	List<SalesRecord> findSoarPro(List<SalesRecord> today, List<SalesRecord> yesterday) {
		
		List<SalesRecord> totPro = new ArrayList<SalesRecord>();
		List<SalesRecord> topSix = new ArrayList<SalesRecord>();
		
		for (SalesRecord tRecord : today) {
			for (SalesRecord yRecord : yesterday) {
				if(tRecord.getPurhistory_code() == yRecord.getPurhistory_code()) {					
					SalesRecord sr = new SalesRecord();
					sr.setPurhistory_code(tRecord.getPurhistory_code());
					sr.setAmount(tRecord.getAmount());
					sr.setTotQuantity(tRecord.getTotQuantity());
					totPro.add(sr);
				}
			}
		}
		
		Collections.sort(totPro);
		
		
		int size = totPro.size();
		if(size > 6) {
			size = 6;
		}
		for (int i = 0; i < size; i++) {
			topSix.add(totPro.get(i));
		}

		return topSix;
	}
	
}
