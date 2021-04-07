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

@Service("ajaxJoin")
@ResponseBody
public class AjaxJoin implements Action {

	@Resource
	AjaxMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		System.out.println("ajaxJoinin execute 실행");
		
		String service = (String)map.get("service");
		MemberVO vo = (MemberVO)map.get("mvo");
		
		switch (service) {
		case "idChk":
			
			System.out.println("idChk 실행");
			
			String id = (String)req.getParameter("id");
						
			boolean dbData = false; 
			
			if(mapper.idChk(id) == null) {
				dbData = true;
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
