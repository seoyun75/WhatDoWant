package com.example.demo.project_after;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.di.Action;
import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.Basic_reqVO;
import com.example.demo.model.FileUploadMM;
import com.example.demo.model.Maker_infoVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.RiskpolicyVO;
import com.example.demo.model.StoryVO;

// Bean생성, menu
@Service("project_after")
public class Project_after implements Action {

	@Resource
	Project_afterMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String service = (String)map.get("service");
		
		// 회원의 프로젝트를 생성하고 작성하기 위해 세션에서 회원정보를 가져옴
		MemberVO mem = (MemberVO) req.getSession().getAttribute("member");
		int mem_code = mem.getMember_no();
		int pro_code = Integer.parseInt(req.getParameter("pro_code"));
		String id = mem.getMember_id();
		// mapper의 매개변수를 위해 map에서 필요한 vo객체를 가져옴
		PurhistoryVO phvo = (PurhistoryVO)map.get("phvo");
		ProjectVO pvo = (ProjectVO)map.get("pvo");
		Project_boardVO pjbvo = (Project_boardVO)map.get("pjbvo");
		MemberVO mvo = (MemberVO)map.get("mvo");
		
		System.out.println("프로젝트 코드 :"+pvo.getPro_code());
		
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("pro_code", pro_code);
		
		System.out.println("project_after 서비스클래스 실행() - "+ service+ ", "+ pro_code);
		// 서비스를 기준으로 다른 메소드를 동작시킴
		switch (service) {
		case "after_sendManagement":
			List<PurhistoryVO> pvoList = mapper.deliveryList(pro_code);
			
			System.out.println(2222);
			for (PurhistoryVO pp : pvoList) {
				pp.setPur_funding_date_tostring(new SimpleDateFormat("yyyyMMddHHmmss").format(pp.getPurhistory_funding_date()));
				if(pp.getPurhistory_delivery()==null) {
					pp.setDelivery_state("발송전");
				}else {
					pp.setDelivery_state("발송완료");
				}
//				System.out.println(pvo);
			}
			res.put("pvoList", pvoList);
//			result.put("page", req.getParameter("page"));
			
			
			System.out.println(res);
			return res;
		
		case "after_sendManagement_send": case "after_sendManagement_cancel":
			if(req.getParameterValues("send")!=null) {
//				System.out.println(3);
				for (int i = 0; i < req.getParameterValues("send").length; i++) {
					Map<String, Object> id_date = new HashMap<String, Object>();
						
						id_date.put("send", req.getParameterValues("send")[i]);
						id_date.put("funding_date", req.getParameterValues("funding_date")[i]);
//						System.out.println(req.getParameter("delivery"));
						if(service.equals("after_sendManagement_send")) {
							if(req.getParameterValues("delivery")[i].equals("")) {
								id_date.put("delivery", new Date());
							}else {
								id_date.put("delivery", req.getParameterValues("delivery")[i]);								
							}
						}else if(service.equals("after_sendManagement_cancel")&&req.getParameter("delivery")!=null) {
							id_date.put("delivery", null);
						}
						System.out.println(service+" : "+mapper.sendDelivery(id_date));						
					
				}
			}
			break;
						
		case "after_inquiry_answer":
			break;
		

		case "after_fundingStatus":
			
			pvo.setPro_code(Integer.parseInt(req.getParameter("pro_code")));
			phvo.setPurhistory_code(pvo.getPro_code());
			phvo.setPurhistory_buyer(mapper.purname(phvo));
			
			List<PurhistoryVO> purlist = mapper.purhislist(pvo);
			
			System.out.println("purlist 값 : " + purlist);
			res.put("purlist", purlist);
			break;
		
			
		case "after_inquiry":

			pvo.setPro_code(Integer.parseInt(req.getParameter("pro_code")));
			
			List<Project_boardVO> inquiryList = mapper.inquiryList(pvo);
	
			res.put("inquiryList",inquiryList);
			System.out.println(res);
			break;
		case "after_progress":
			
			//프로젝트 진행상황 리스트 가져오기
			List<Project_boardVO> progressList = mapper.proBoardList(pvo);
			System.out.println(progressList);
			res.put("after_progress",progressList);
			System.out.println(res);
			break;
		case "after_progressInsert":
			
			break;
			//진행상황 글등록하기
		case "after_progressInsertReg":
			pjbvo.setProject_board_no(mapper.getmaxno());
			pjbvo.setProject_board_writer(mem.getMember_id());
			pjbvo.setProject_board_img(FileUploadMM.fileUpload(pjbvo.getProgressFile(), req,pjbvo.getProject_board_pro_no()+""));
			System.out.println("체크"+pjbvo);
			mapper.progressInsert(pjbvo);
			
			break;
		case "after_progressDetail":
			//진행상황 상세페이지
			Project_boardVO buf = mapper.BoardDetail(pjbvo);
			System.out.println(buf);
			res.put("pjbvo", buf);
			System.out.println(buf.getProject_board_img());
			break;
		case "after_progressDelete":
			//진행상황 리스트 삭제
			Project_boardVO de = mapper.BoardDetail(pjbvo);
			int i = mapper.progressDelete(de);
			if(i == 1) {
				if(de.getProject_board_img() != null) {
					String ress = de.getProject_board_pro_no()+"//"+de.getProject_board_img();
					FileUploadMM.fileDelete(ress);
				}
			}

			break;
			
		case "after_answer":
			pjbvo.setProject_board_writer(mapper.inquirywriter(pjbvo));
			pjbvo.setProject_board_no(mapper.getmaxno());
			pjbvo.setProject_board_pro_no(Integer.parseInt(req.getParameter("pro_code")));
			
			System.out.println("answer 페이지 : " + pjbvo);
			
			res.put("pjbvo",pjbvo);
			break;

		case "after_answer_reg":
			
			pjbvo.setProject_board_no(Integer.parseInt(req.getParameter("project_board_no")));
			pjbvo.setProject_board_pro_no(Integer.parseInt(req.getParameter("project_board_pro_no")));
			System.out.println("pjbvo 값 : " + pjbvo);
			mapper.inquiry_answer(pjbvo);
			
			res.put("pjbvo",pjbvo);
			break;
			
			
		}
		
		return res;
		
	}
	
	
}
