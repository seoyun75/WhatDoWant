package com.example.demo.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.di.Action;
import com.example.demo.model.Cate;
import com.example.demo.model.MemberVO;

@Controller
@RequestMapping("/login/{menu}/{service}")
public class Login_controller {
	
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
	Object loginData(
			@PathVariable("menu") String menu,
			@PathVariable("service") String service,
			MemberVO mvo,
			HttpServletRequest req) {
		System.out.println("loginData() 실행");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mvo", mvo);
		map.put("service", service);
		
		Action action = provider.getContext().getBean(menu, Action.class);
		
		Object res = action.execute(map, req); 
		
		return res;
	}
	
	@ModelAttribute("top")
	String header(
			@PathVariable("service") String service,
			HttpServletRequest req) {	
		if(req.getSession().getAttribute("member")!=null) {
			return "inc/loginOk.jsp";
		}
		
		return "inc/nonLogin.jsp";
	}
	
	@RequestMapping
	String loginTry() {
			
		return "wdw/templete/templete";
	}

}
