package com.example.demo.project_up;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.di.Action;
import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.Basic_reqVO;
import com.example.demo.model.Maker_infoVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.RiskpolicyVO;
import com.example.demo.model.StoryVO;
import com.example.demo.model.TotalProjectSubmit;

// Bean생성, menu(project_up)
@Service("project_up")
public class Project_up implements Action {

	@Resource
	Project_upMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("project_up 서비스클래스 실행()");
		
		// 회원의 프로젝트를 생성하고 작성하기 위해 세션에서 회원정보를 가져옴
		MemberVO mem = (MemberVO) req.getSession().getAttribute("member");
		int mem_code = mem.getMember_no();
				
		// 프로젝트 등록을 위한 테이블 객체들을 가져옴
		Basic_reqVO brvo = (Basic_reqVO)map.get("brvo");
		Basic_infoVO bivo = (Basic_infoVO)map.get("bivo");
		StoryVO stvo = (StoryVO)map.get("stvo");
		Reward_dsnVO rdvo = (Reward_dsnVO)map.get("rdvo");
		RiskpolicyVO rpvo = (RiskpolicyVO)map.get("rpvo");
		Maker_infoVO mivo = (Maker_infoVO)map.get("mivo");
		TotalProjectSubmit tps = new TotalProjectSubmit();
		
		// 서비스 별 다른 동작을 위해 서비스를 가져옴
		String service = (String)map.get("service");
		
		Object res = null;
		
		
				
		// 서비스를 기준으로 다른 메소드를 동작시킴
		switch (service) {
		case "funding_create":
			int maxProNo = mapper.getMaxProNo();
			brvo.setPu_basic_req_mem_code(mem_code);
			brvo.setPu_basic_req_pro_no(maxProNo);
			bivo.setPu_basic_info_mem_code(mem_code);
			bivo.setPu_basic_info_pro_no(maxProNo);
			stvo.setPu_story_mem_code(mem_code);
			stvo.setPu_story_pro_no(maxProNo);
			rdvo.setPu_reward_dsn_mem_code(mem_code);
			rdvo.setPu_reward_dsn_pro_no(maxProNo);
			rpvo.setPu_riskpolicy_mem_code(mem_code);
			rpvo.setPu_riskpolicy_pro_no(maxProNo);
			mivo.setPu_maker_info_mem_code(mem_code);
			mivo.setPu_maker_info_pro_no(maxProNo);
			
			tps.setMember_id(((MemberVO)(req.getSession().getAttribute("member"))).getMember_id());
			tps.setbReq(brvo);
			
			mapper.createStep1(brvo);
			mapper.createStep2(bivo);
			mapper.createStep3(stvo);
			mapper.insertStep4(rdvo);
			mapper.createStep5(rpvo);
			mapper.createStep6(mivo);
			mapper.createProj(tps);
			res = brvo;
			break;
		
		case "funding_first":
			brvo.setPu_basic_req_mem_code(Integer.parseInt(req.getParameter("memCode")));
			brvo.setPu_basic_req_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			List<Object> list = new ArrayList<Object>();
			list.add(mapper.searchStep1(brvo));
			list.add(mapper.searchStep2(bivo));
			list.add(mapper.searchStep3(stvo));
			list.add(mapper.searchStep5(rpvo));
			list.add(mapper.searchStep6(mivo));
			
			res = list;
			
			break;
		
		case "funding_step1":
			brvo.setPu_basic_req_mem_code(Integer.parseInt(req.getParameter("memCode")));
			brvo.setPu_basic_req_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			res = mapper.searchStep1(brvo);			
			break;
			
		case "funding_step1_reg":
			brvo.setPu_basic_req_mem_code(Integer.parseInt(req.getParameter("memCode")));
			brvo.setPu_basic_req_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			if(brvo.getPu_basic_req_reward_plan1() != null)
				brvo.setPu_basic_req_reward_plan1(brvo.getPu_basic_req_reward_plan1().replace("\r\n", "<br>"));
			if(brvo.getPu_basic_req_reward_plan2() != null)
				brvo.setPu_basic_req_reward_plan2(brvo.getPu_basic_req_reward_plan2().replace("\r\n", "<br>"));
			mapper.updateStep1(brvo);
			res = mapper.searchStep1(brvo); 
			break;
		
		case "funding_step2":
			bivo.setPu_basic_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			bivo.setPu_basic_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			res = mapper.searchStep2(bivo);
			break;
			
		case "funding_step2_reg":
			bivo.setPu_basic_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			bivo.setPu_basic_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			fileUpload(bivo.getRePreFile(), req, Integer.parseInt(req.getParameter("pro_no")));
			bivo.setPu_basic_info_repre_img("owner.jpg");
			mapper.updateStep2(bivo);
			res = mapper.searchStep2(bivo); 
			break;
		
		case "rePreImgDeleteReg":
			bivo.setPu_basic_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			bivo.setPu_basic_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mapper.rePreImgDelete(bivo);
			res = mapper.searchStep2(bivo);
			break;
		
		case "funding_step3":
			stvo.setPu_story_mem_code(Integer.parseInt(req.getParameter("memCode")));
			stvo.setPu_story_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			res = mapper.searchStep3(stvo);
			break;
			
		case "funding_step3_reg":
			stvo.setPu_story_mem_code(Integer.parseInt(req.getParameter("memCode")));
			stvo.setPu_story_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			fileUpload(stvo.getIntro_img(), req, Integer.parseInt(req.getParameter("pro_no")));
			fileUpload(stvo.getStory_img(), req, Integer.parseInt(req.getParameter("pro_no")));
			if(stvo.getPu_story_proj_summary() != null)
				stvo.setPu_story_proj_summary(stvo.getPu_story_proj_summary().replace("\r\n", "<br>"));
			mapper.updateStep3(stvo);
			res = mapper.searchStep3(stvo); 
			break;
			
		case "introImgDeleteReg":
			stvo.setPu_story_mem_code(Integer.parseInt(req.getParameter("memCode")));
			stvo.setPu_story_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mapper.introImgDelete(stvo);
			res = mapper.searchStep3(stvo);
			break;
		
		case "storyImgDeleteReg":
			stvo.setPu_story_mem_code(Integer.parseInt(req.getParameter("memCode")));
			stvo.setPu_story_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mapper.storyImgDelete(stvo);
			res = mapper.searchStep3(stvo);
			break;
			
		case "funding_step4":
			rdvo.setPu_reward_dsn_mem_code(Integer.parseInt(req.getParameter("memCode")));
			rdvo.setPu_reward_dsn_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			res = mapper.searchStep4(rdvo);				
			break;
			
		case "funding_step4_reg":
			rdvo.setPu_reward_dsn_mem_code(Integer.parseInt(req.getParameter("memCode")));
			rdvo.setPu_reward_dsn_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mapper.updateStep4(rdvo);
			mapper.insertStep4(rdvo);
			res = mapper.searchStep4(rdvo); 
			break;
			
		case "funding_step4_deleteRwd":
			rdvo.setPu_reward_dsn_mem_code(Integer.parseInt(req.getParameter("memCode")));
			rdvo.setPu_reward_dsn_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			System.out.println(req.getParameter("memCode"));
			System.out.println(req.getParameter("pro_no"));
			mapper.deleteRwd(rdvo);
			res = mapper.searchStep4(rdvo);
			break;
			
		case "funding_step5":
			rpvo.setPu_riskpolicy_mem_code(Integer.parseInt(req.getParameter("memCode")));
			rpvo.setPu_riskpolicy_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			res = mapper.searchStep5(rpvo);
			break;
			
		case "funding_step5_reg":
			rpvo.setPu_riskpolicy_mem_code(Integer.parseInt(req.getParameter("memCode")));
			rpvo.setPu_riskpolicy_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			if(rpvo.getPu_riskpolicy_no_def_policy() != null)
				rpvo.setPu_riskpolicy_no_def_policy(rpvo.getPu_riskpolicy_no_def_policy().replace("\r\n", "<br>"));
			mapper.updateStep5(rpvo);
			res = mapper.searchStep5(rpvo); 
			break;
			
		case "funding_step6":
			mivo.setPu_maker_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			mivo.setPu_maker_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			res = mapper.searchStep6(mivo);
			break;
			
		case "funding_step6_reg":
			mivo.setPu_maker_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			mivo.setPu_maker_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			fileUpload(mivo.getComp_img(), req, Integer.parseInt(req.getParameter("pro_no")));
			fileUpload(mivo.getAgreement(), req, Integer.parseInt(req.getParameter("pro_no")));
			fileUpload(mivo.getAccount(), req, Integer.parseInt(req.getParameter("pro_no")));
			mapper.updateStep6(mivo);
			res = mapper.searchStep6(mivo); 
			break;
			
		case "compDeleteReg":
			mivo.setPu_maker_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			mivo.setPu_maker_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mapper.compDelete(mivo);
			res = mapper.searchStep6(mivo);
			break;
		
		case "agreeDeleteReg":
			mivo.setPu_maker_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			mivo.setPu_maker_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mapper.agreeDelete(mivo);
			res = mapper.searchStep6(mivo);
			break;
		
		case "accountDeleteReg":
			mivo.setPu_maker_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			mivo.setPu_maker_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mapper.accountDelete(mivo);
			res = mapper.searchStep6(mivo);
			break;

		case "submit":
			brvo.setPu_basic_req_mem_code(Integer.parseInt(req.getParameter("memCode")));
			brvo.setPu_basic_req_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			bivo.setPu_basic_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			bivo.setPu_basic_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			stvo.setPu_story_mem_code(Integer.parseInt(req.getParameter("memCode")));
			stvo.setPu_story_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			rdvo.setPu_reward_dsn_mem_code(Integer.parseInt(req.getParameter("memCode")));
			rdvo.setPu_reward_dsn_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			rpvo.setPu_riskpolicy_mem_code(Integer.parseInt(req.getParameter("memCode")));
			rpvo.setPu_riskpolicy_pro_no(Integer.parseInt(req.getParameter("pro_no")));
			mivo.setPu_maker_info_mem_code(Integer.parseInt(req.getParameter("memCode")));
			mivo.setPu_maker_info_pro_no(Integer.parseInt(req.getParameter("pro_no")));

			tps.setMember_id(((MemberVO)(req.getSession().getAttribute("member"))).getMember_id());
			tps.setbReq(mapper.searchStep1(brvo));
			tps.setbInfo(mapper.searchStep2(bivo));
			tps.setStory(mapper.searchStep3(stvo));
			tps.setRisk(mapper.searchStep5(rpvo));
			tps.setmInfo(mapper.searchStep6(mivo));
			
			mapper.submit(tps);
			
			break;
			
		}
		
		return res;
	}
	
	
	
	void fileUpload(MultipartFile ff, HttpServletRequest request, int pro_no) {
		// 경로 설정
		String path = "C:\\ljy\\workspace\\sts_wdw_work\\wdw\\src\\main\\webapp\\img_up\\project\\" + pro_no;
		File folder = new File(path);
		FileOutputStream fos;
		// 폴더 생성
		if(!folder.exists()) {
			try {
				folder.mkdir();
				
				fos = new FileOutputStream(path + "\\" + ff.getOriginalFilename());
				
				fos.write(ff.getBytes());
				fos.close();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			
			try {
				fos = new FileOutputStream(path + "/" + ff.getOriginalFilename());
				
				fos.write(ff.getBytes());
				fos.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
