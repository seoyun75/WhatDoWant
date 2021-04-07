package com.example.demo.join;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.MemberVO;

@Service("join")
public class Join implements Action{

	// sql문 실행을 위한 mapper 생성
	@Resource
	JoinMapper mapper ;
		
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

		System.out.println("join execute 실행()");
		
		// mapper의 매개변수를 위해 map에서 필요한 vo객체를 가져옴
		MemberVO mvo = (MemberVO)map.get("mvo");
		String service = (String)map.get("service");
		
		System.out.println(mvo);
		
		if(service.equals("joinReg")) {
			mapper.join(mvo);
		}
			
		return null;
	}
}
