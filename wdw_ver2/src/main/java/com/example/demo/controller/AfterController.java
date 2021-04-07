package com.example.demo.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.di.Action;
import com.example.demo.model.Cate;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;

@Controller
@RequestMapping("/after/{menu}/{service}")
public class AfterController {
	
	@Resource
	Provider provider;
	
	@ModelAttribute
	Cate cate(
			@PathVariable("menu") String menu,
			@PathVariable("service") String service	
			) {
		Cate cate = new Cate();
		
		cate.setMenu(menu);
		cate.setService(service);
		cate.setMainUrl("../"+menu+"/"+service+".jsp");
		
		return cate;
	}
	
	@ModelAttribute("data")
	Object afterData(
			@PathVariable("menu") String menu,
			@PathVariable("service") String service,
			MemberVO mvo,
			ProjectVO pvo,
			PurhistoryVO phvo,
			Project_boardVO pjbvo,
			HttpServletRequest req) {
		
		System.out.println("afterData() 실행");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mvo", mvo);
		map.put("pvo", pvo);
		map.put("phvo", phvo);
		map.put("pjbvo", pjbvo);
		map.put("service", service);
		
		Action action = provider.getContext().getBean(menu, Action.class);
		
		Object res = action.execute(map, req); 
		
		return res;
	}
	
	@ModelAttribute("top")
		String header() {
		
		return "inc/nonLogin.jsp";
	}
	
	@RequestMapping
		String join() {
		
		return "wdw/templete/templete";
	}

}
