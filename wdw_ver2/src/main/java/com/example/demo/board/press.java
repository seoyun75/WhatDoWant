package com.example.demo.board;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.NoticeVO;

@Service("press")
public class press implements Action{

   // sql문 실행을 위한 mapper 생성
   @Resource
   PressMapper mapper;
      
   @Override
   public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

      System.out.println("press execute 실행()");
      
      // mapper의 매개변수를 위해 map에서 필요한 vo객체를 가져옴
      NoticeVO nvo = (NoticeVO)map.get("nvo");
      
      String service = (String)map.get("service");
      
      Object res = null;
      
      switch (service) {

			
		case "press":
			res = mapper.press_listSch(nvo);
			
			System.out.println("보도자료 입니당");
			break;
			
		case "press_detail":
			res = mapper.press_detail(nvo.getSi_no());
			
			System.out.println("보도자료 상세정보입니당");
			break;	
      }

         
      return res;
   }
}





