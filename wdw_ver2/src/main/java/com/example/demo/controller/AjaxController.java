package com.example.demo.controller;

import java.net.http.HttpRequest;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.di.Action;
import com.example.demo.model.MemberVO;

@Controller
@RequestMapping("ajax/{menu}/{service}")
public class AjaxController {
	@Resource
	Provider provider;
	
	@ModelAttribute("data")
	Object ajaxData(
			@PathVariable("menu") String menu,
			@PathVariable("service") String service,
			MemberVO mvo,
			HttpServletRequest req
			) {
		
		HashMap<String , Object> map = new HashMap<String, Object>();
		map.put("service", service);
		map.put("mvo", mvo);
		Action action = provider.getContext().getBean(menu, Action.class);
		
		Object res = action.execute(map, req);
		return res;
		
	}
	   
	@RequestMapping
	String view() {
	      
		return "wdw/ajax/ajaxview";
	}

}
