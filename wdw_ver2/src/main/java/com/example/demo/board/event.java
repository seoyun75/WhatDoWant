package com.example.demo.board;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.NoticeVO;

@Service("event")
public class event implements Action{

   // sql문 실행을 위한 mapper 생성
   @Resource
   EventMapper mapper;
      
   @Override
   public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

      System.out.println("notice execute 실행()");
      
      // mapper의 매개변수를 위해 map에서 필요한 vo객체를 가져옴
      NoticeVO nvo = (NoticeVO)map.get("nvo");
      
      String service = (String)map.get("service");
      
      Object res = null;
      
      switch (service) {

		case "event":
			res = mapper.event_listSch(nvo);
			break;
			
		case "event_detail":
			res = mapper.event_detail(nvo.getSi_no());
			
			System.out.println("이벤트 상세정보입니당");
			break;	

      }

         
      return res;
   }
}





