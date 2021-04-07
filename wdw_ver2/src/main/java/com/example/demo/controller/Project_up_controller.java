package com.example.demo.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.di.Action;
import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.Basic_reqVO;
import com.example.demo.model.Cate;
import com.example.demo.model.Maker_infoVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.RiskpolicyVO;
import com.example.demo.model.StoryVO;

@Controller
@RequestMapping("/project_up/{menu}/{service}")
public class Project_up_controller {
   
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
      cate.setMainUrl("../"+"project_up"+"/"+service+".jsp");
      
      return cate;
   }
   
   @ModelAttribute("data")
   Object mainData(
         // 필요한 VO객체 추가하기
		   Maker_infoVO mivo,
		   RiskpolicyVO rpvo,
		   Reward_dsnVO rdvo,
		   StoryVO stvo,
		   Basic_infoVO bivo,
		   Basic_reqVO brvo,
		   MemberVO mvo,
		   ProjectVO pvo,
		   PurhistoryVO phvo,
		   Project_boardVO pjbvo,
		   @PathVariable("menu") String menu,
		   @PathVariable("service") String service,
		   HttpServletRequest req
         ) {
      System.out.println("mainData() 실행");
      
      // 해쉬맵을 선언해서 객체 + 서비스 다 담기      
      HashMap<String, Object> map   = new HashMap<String, Object>();
      map.put("service", service);
      map.put("bivo", bivo);
      map.put("stvo", stvo);
      map.put("rdvo", rdvo);
      map.put("rpvo", rpvo);
      map.put("mivo", mivo);
      map.put("brvo", brvo);
      map.put("mvo", mvo);
      map.put("pvo", pvo);
      map.put("phvo", phvo);
      map.put("pjbvo", pjbvo);
           
                                 // menu로 Bean생성하고 service는 넘김 
      Action action = provider.getContext().getBean(menu, Action.class);
      
      Object res = action.execute(map, req);

      return res;
   }
   
   
   @ModelAttribute("top")
      String header(@PathVariable("menu") String menu) {
	   
	   return "inc/establishment_header.jsp";
      }
   
   @ModelAttribute("footer")
      String footer(@PathVariable("menu") String menu) {
	   return "inc/establishment_footer.jsp";
      }
   
   
   @RequestMapping
   String view(){
      
      return "wdw/templete/templete";
   }
}