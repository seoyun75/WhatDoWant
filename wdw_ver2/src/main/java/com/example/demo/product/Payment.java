package com.example.demo.product;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.Reward_selectVO;
import com.example.demo.model.ViewsVO;

@Service("payment")
public class Payment implements Action{
	
	@Resource
	ProjectMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		MemberVO mem = (MemberVO) req.getSession().getAttribute("member");
		String id = mem.getMember_id();
		
		ProjectVO provo = (ProjectVO)map.get("provo");

		Reward_selectVO selvo = (Reward_selectVO)map.get("sele");
		
		Basic_infoVO bainfo = (Basic_infoVO)map.get("bainfo");
		
		HashMap<String, Object> remap = new HashMap<String, Object>();
		
		ViewsVO vo = new ViewsVO();
		vo.setInfo(mapper.improBinfo(provo));	// (안에서부터 실행)
		vo.setRewdsn(mapper.improRedsn(provo));	// (안에서부터 실행)
		vo.setRisk(mapper.improRisk(provo));	// (안에서부터 실행)
		vo.setStory(mapper.improStory(provo));	// (안에서부터 실행)
		vo.setMaker(mapper.improMakfo(provo));	// (안에서부터 실행)
		vo.setProvo(mapper.improject(provo));	// (안에서부터 실행)
		vo.setProbo(mapper.improBoaed(provo));	// (안에서부터 실행)
//		vo.setPustr(mapper.improPustr(provo));	// (안에서부터 실행)
		
		String service = (String)map.get("service");
		
		if(service.equals("payment")){
			return vo;			
		}else if(service.equals("payment_reservation")) {
			List<Reward_dsnVO> li = new ArrayList<Reward_dsnVO>();

			
			remap.put("rewlist", li);
			remap.put("selvo", selvo);		// 왼쪽이 담아줄 이름, 오른쪽이 담아줄 객체 
			remap.put("bainfo", bainfo);		// 왼쪽이 담아줄 이름, 오른쪽이 담아줄 객체 
			remap.put("chk", req.getParameter("re_input_chk"));
			remap.put("name", req.getParameter("pu_reward_dsn_rew_name"));
			remap.put("rewd", req.getParameter("pu_reward_dsn_rew_price"));
			remap.put("sendcon", req.getParameter("pu_reward_dsn_sendcon"));
			remap.put("cnt", req.getParameter("re_input_cnt"));
			int pay = 0;
			
			System.out.println("테스트1:"+req.getParameter("re_input_chk"));
			System.out.println("test : "+req.getParameter("pu_reward_dsn_rew_name"));
			
			
			if(req.getParameter("re_input_pay") != null) {
				pay = Integer.parseInt(req.getParameter("re_input_pay"));
			}
			remap.put("pay", pay);
			
			//System.out.println(remap);
			//System.out.println(selvo);
			System.out.println("1---------------------");
//			return remap;		
		}
		if(service.equals("payment_reservation_finish")) {
			PurhistoryVO pur = (PurhistoryVO)map.get("pustr");
			List<Reward_dsnVO> li = new ArrayList<Reward_dsnVO>();
			
			System.out.println("2---------------------");
			
			remap.put("rewlist", li);
			remap.put("selvo", selvo);		// 왼쪽이 담아줄 이름, 오른쪽이 담아줄 객체 
			remap.put("bainfo", bainfo);		// 왼쪽이 담아줄 이름, 오른쪽이 담아줄 객체
			remap.put("chk", req.getParameter("re_input_chk"));
			remap.put("name", req.getParameter("pu_reward_dsn_rew_name"));
			remap.put("rewd", req.getParameter("pu_reward_dsn_rew_price"));
			remap.put("sendcon", req.getParameter("pu_reward_dsn_sendcon"));
			remap.put("cnt", req.getParameter("re_input_cnt"));
			
			System.out.println("테스트2:"+req.getParameter("re_input_chk"));
			System.out.println("test2 : "+req.getParameter("pu_reward_dsn_rew_name"));
			
			System.out.println(selvo);
			System.out.println("3---------------------");
			pur.setPurhistory_code(Integer.parseInt(req.getParameter("pro_code")));
			System.out.println("4---------------------");
			pur.setPurhistory_cate(req.getParameter("pro_cate"));
			System.out.println("5---------------------");
			pur.setPurhistory_address(req.getParameter("purhistory_address"));
			System.out.println("6---------------------");
			pur.setPurhistory_name(req.getParameter("purhistory_name"));
			System.out.println("7---------------------");
			pur.setPurhistory_phone(req.getParameter("purhistory_phone"));
			System.out.println("8---------------------");
			pur.setPurhistory_reward(req.getParameter("pu_reward_dsn_rew_name"));
			System.out.println("9---------------------");
			pur.setPurhistory_cnt(Integer.parseInt(req.getParameter("re_input_cnt")));
			System.out.println("10---------------------");
			pur.setPurhistory_amount(Integer.parseInt(req.getParameter("pu_reward_dsn_rew_price")));
			System.out.println("11---------------------");
			pur.setPurhistory_buyer(id);
			System.out.println("4---------------------");
			mapper.insert(pur);
			System.out.println("pur값:"+pur);
			
			
			System.out.println("5---------------------");
			return vo;
		}
		System.out.println("detail/list execute() 실행");
		return remap;
	}

}
