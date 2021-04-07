package com.example.demo.mypage;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.BusinessVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.ShoppingVO;
import com.example.demo.model.SiteVO;


@Service("activity")
public class Activity implements Action {
	@Resource
	MypageMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String service = (String)map.get("service");
		SiteVO svo = (SiteVO)map.get("svo");
		ProjectVO pvo = (ProjectVO)map.get("pvo");
		MemberVO actor = (MemberVO)req.getSession().getAttribute("member");

		
		System.out.println("activity execute()"+service);	
		
		switch (service) {
		case "shopping"://구매내역
//			System.out.println("execute() - shopping : "+mapper.shopHistory(id));
			List<ShoppingVO> shopList = mapper.shopHistory(actor.getMember_id());
			List<ShoppingVO> delShop = new ArrayList<>();
			
			for (int i = 0; i < shopList.size()-1; i++) { //여러리워드 선택으로 여려개의 튜플이 저장됐을 경우 중복제외 
				if((shopList.get(i).getPurhistory_code().equals(shopList.get(i+1).getPurhistory_code()))
						&&(shopList.get(i).getPurhistory_funding_date().equals(shopList.get(i+1).getPurhistory_funding_date()))) {
					shopList.get(i).setPurhistory_reward(shopList.get(i).getPurhistory_reward()+" 외...	");
					delShop.add(shopList.get(i+1));
				}
			}
			shopList.removeAll(delShop);
			
			return shopList;
			
		case "purchase"://구매 상세정보
			Map<String, Object> detailList = new HashMap<>(); 
			detailList.put("code", Integer.parseInt(req.getParameter("pur_code")));
			Date dd = null;
			try {
				 dd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(req.getParameter("funding_date"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			detailList.put("funding_date", dd);
			detailList.put("id", actor.getMember_id());
			List<PurhistoryVO> pphvo = mapper.detailPurhistory(detailList);
			ProjectVO ppvo = mapper.detailProject(Integer.parseInt(req.getParameter("pur_code")));
			List<Reward_dsnVO> prdvo = new ArrayList<>();
			for (PurhistoryVO pph : pphvo) {
				prdvo.add(mapper.detailReward(pph));	
			}
			BusinessVO bsvo = mapper.detailBusiness(ppvo);
						
			detailList.put("pvo", ppvo);
			detailList.put("phvo", pphvo);
			detailList.put("rdvo", prdvo);
			detailList.put("bsvo", bsvo);
//			System.out.println("상세정보 - "+detailList);
			
			return detailList;
			
		case "fundingReg": //펀딩 등록한 내역
			List<ProjectVO> ing = new ArrayList<>();
			List<ProjectVO> befor = new ArrayList<>();
			List<ProjectVO> end = new ArrayList<>();
			Map<String, List<ProjectVO>> projectPart = new HashMap<String, List<ProjectVO>>();
			projectPart.put("입력중", befor);
			projectPart.put("반려", befor);
			projectPart.put("검수", ing);
			projectPart.put("진행", end);
			projectPart.put("얼리버드", end);
			projectPart.put("종료", end);
			
			List<ProjectVO> projList = mapper.project(actor.getMember_id());

			for (ProjectVO pp : projList) {
				projectPart.get(pp.getPro_state()).add(pp);
			}
			return projectPart;
			
		case "deleteProject": //등록한 펀딩 삭제
			Map<String, Object> mm = new HashMap<String, Object>();
			mm.put("pro_code", req.getParameter("pro_code"));
			mm.put("member_no", actor.getMember_no());
			mm.put("member_id", actor.getMember_id());
			System.out.println(mapper.deletePuBasicInfo(mm));
			System.out.println(mapper.deletePuMakerInfo(mm));
			System.out.println(mapper.deletePuRewardDes(mm));
			System.out.println(mapper.deletePuRiskpolicy(mm));
			System.out.println(mapper.deletePuStorsy(mm));
			System.out.println(mapper.deleteProject(mm));
			System.out.println(mapper.deletePuBasicReq(mm));
			
//--------------------------------------------------------------------------			
		//QnA	
		case "QnAForm":
			break;
		case "QnAReg": //문의 결과
			if(svo.getSi_no()!=0) {
				return mapper.qnaDetail(svo.getSi_no());
			}
			return qna(svo, req);
			
		case "QnAModify": //문의 수정
			return mapper.qnaDetail(svo.getSi_no());
		case "QnAModreg": //문의 수정 결과
			System.out.println(svo.getSi_no()+", "+svo.getSi_title());
			mapper.qnaModify(svo);
			
			return mapper.qnaDetail(svo.getSi_no());
		
		case "QnAlist": //문의내역
			List<SiteVO> svoList = mapper.qnaList(actor);
			List<Project_boardVO> pbvoList = mapper.projQnAList(actor);
			Map<String, Object> QnAList = new HashMap<String, Object>();
			int answar_no = 0;
			for (SiteVO ss : svoList) {
				if(mapper.checkAnswar(ss.getSi_no())!=0) {
					ss.setSi_answar("답변확인");
				}else {
					ss.setSi_answar("답변준비중");					
				}
			}
			
			QnAList.put("svoList", svoList);
			QnAList.put("pbvoList", pbvoList);
			
			return QnAList;
			
		case "QnAAnswar": //문의 답변 불러옴
			return mapper.QnAAnswar(Integer.parseInt(req.getParameter("si_no")));
		
		case "QnADelete"://문의 삭제
			String msg = "잘못된 접근입니다.";

			mapper.qnaDelete(svo.getSi_no());
			msg = "정상적으로 삭제되었습니다.";
			return msg;
		default:
			break;
		}

		
		return null;
	}
	
	SiteVO qna(SiteVO svo,HttpServletRequest req) { //db에서 불러온 문의 내용
		System.out.println("qna() 실행");
		svo.setSi_writer(((MemberVO)req.getSession().getAttribute("member")).getMember_id());
		if (req.getMethod().equals("POST")) {
			svo.setSi_content(svo.getSi_content().replace("\n", "<br/>"));
			mapper.qnaInsert(svo);
			return svo;
		}
		return null;
	}

}
