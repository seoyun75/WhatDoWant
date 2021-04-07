package com.example.demo.product;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.ViewsVO;

@Service("detail")
public class Detail implements Action{
	
	@Resource
	ProjectMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {		
		
		ProjectVO provo = (ProjectVO)map.get("provo");
		
		Project_boardVO probb = (Project_boardVO)map.get("probb");
		
		ViewsVO vo = new ViewsVO();
		vo.setInfo(mapper.improBinfo(provo));	// (안에서부터 실행)
		vo.setRewdsn(mapper.improRedsn(provo));	// (안에서부터 실행)
		vo.setRisk(mapper.improRisk(provo));	// (안에서부터 실행)
		vo.setStory(mapper.improStory(provo));	// (안에서부터 실행)
		vo.setMaker(mapper.improMakfo(provo));	// (안에서부터 실행)
		vo.setProvo(mapper.improject(provo));	// (안에서부터 실행)
		vo.setProbo(mapper.improBoaed(provo));	// (안에서부터 실행)
		
		Object res = null;
	
		String service = (String)map.get("service");
	
		switch (service) {
		case "detail_story": case "detail_community":
		case "detail_company_info": case "detail_fdGuide":
			probb.setProject_board_pro_no(Integer.parseInt(req.getParameter("pro_code")));
			probb.setProject_board_no(mapper.board_no(probb));
			vo.setProbb(probb);
			res = vo;
			break;
			
		case "detail_fd_process":
			probb.setProject_board_pro_no(Integer.parseInt(req.getParameter("pro_code")));
			probb.setProject_board_no(mapper.board_no(probb));
			vo.setProbb(probb);
			res = vo;
			break;
			
		case "detail_fd_process_view":
			vo.setProbb(mapper.improBoard(probb));
			res = vo;
			break;
			
		case "detail_inquiry":
			mapper.inquiry_insert(probb);
			res = vo;
			break;
		}
		
		return res;
	}

}
