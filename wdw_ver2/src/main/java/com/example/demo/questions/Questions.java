package com.example.demo.questions;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.IdeaVO;
import com.example.demo.model.QuestionsVO;

@Service("questions")
public class Questions implements Action{

   // sql문 실행을 위한 mapper 생성
   @Resource
   QuestionsMapper mapper;
      
   @Override
   public Object execute(HashMap<String, Object> map, HttpServletRequest req) {

      System.out.println("questions execute 실행()");
      
      // mapper의 매개변수를 위해 map에서 필요한 vo객체를 가져옴
      QuestionsVO qvo = (QuestionsVO)map.get("qvo");
      
      String service = (String)map.get("service");
      
      Object res = null;
      
      switch (service) {
		case "fnq":
			res = mapper.fnq_listSch(qvo);
			break;
      }

         
      return res;
   }
}





