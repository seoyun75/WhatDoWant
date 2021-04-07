package com.example.demo.idea;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.IdeaVO;

@Service("idea")
public class idea implements Action{

   // sql문 실행을 위한 mapper 생성
   @Resource
   IdeaMapper mapper;
      
   @Override
   public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

      System.out.println("idea execute 실행()");
      
      // mapper의 매개변수를 위해 map에서 필요한 vo객체를 가져옴
      IdeaVO ivo = (IdeaVO)map.get("ivo");
      
      String service = (String)map.get("service");
      
      Object res = null;
      
      switch (service) {
		case "idea":
			res = mapper.listSch(ivo);
			break;

		}

         
      return res;
   }
}





