package com.example.demo.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.di.Action;
import com.example.demo.join.JoinMapper;
import com.example.demo.model.Cate;
import com.example.demo.model.MemberVO;

@Controller
@RequestMapping("/join/{menu}/{service}")
public class Join_controller {
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
	Object joinData(
			@PathVariable("menu") String menu,
			@PathVariable("service") String service,
			MemberVO mvo,
			HttpServletRequest req) {
		System.out.println("joinData() 실행");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mvo", mvo);
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
