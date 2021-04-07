package com.example.demo.ajax;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.di.Action;
import com.example.demo.join.JoinMapper;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ajax.ALogin;

@Service("ajaxLogin")
@ResponseBody
public class AjaxLogin implements Action {

	@Resource
	AjaxMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("ajaxLogin execute 실행");
		
		String service = (String)map.get("service");
		MemberVO vo = (MemberVO)map.get("mvo");
		Object res = null;
		HttpSession session = req.getSession();
		
		switch (service) {
		case "pwChk":
			
			System.out.println("pwChk 실행");
			
			ALogin alogin = new ALogin();
			alogin.setId(String.valueOf(req.getParameter("id")));
			alogin.setPw(String.valueOf(req.getParameter("pw")));			
			
			boolean dbData = false; 
			
			if(mapper.pwChk(alogin) != null) {
				dbData = true;

				res = mapper.login(alogin);
				
				
				if(res!=null)
					session.setAttribute("member", res);
			}
			
			if(dbData != false) {
				return "[{\"result\":\"1\"}]";
			}else {
				return "[{\"result\":\"0\"}]";
			}
		}
		return null;
		
	}

}
