package com.example.demo.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.di.Action;
import com.example.demo.model.AccountVO;
import com.example.demo.model.Cate;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.SiteVO;

@Controller
@RequestMapping("mypage/{menu}/{service}")
public class MypageController {
	
	   @Resource
	   Provider provider;
	   
	   @ModelAttribute
	   Cate cate(
	         @PathVariable("service") String service
	         ) { 
	      Cate cate = new Cate();
	      
	      cate.setMenu("mypage");
	      cate.setService(service);
	      cate.setMainUrl("../"+"mypage"+"/"+service+".jsp");

	      return cate;
	   }
	   
	   @ModelAttribute("data")
	   Object mainData(
	         // 필요한 VO객체 추가하기
	         MemberVO mvo,
	         SiteVO svo,
	         ProjectVO pvo,
	         AccountVO avo,
	         @PathVariable("menu") String menu,
	         @PathVariable("service") String service,
	         HttpServletRequest req
	         ) {
	      System.out.println("MypageController() 실행 "+menu+"/"+service+"\n\t"+svo);
	      
	      // 해쉬맵을 선언해서 객체 + 서비스 다 담기      
	      HashMap<String, Object> map   = new HashMap<String, Object>();
	      map.put("service", service);
	      map.put("mvo", mvo);
	      map.put("svo", svo);
	      map.put("pvo", pvo);
	      map.put("avo", avo);
	      
	                                 // menu로 Bean생성하고 service는 넘김 
	      Action action = provider.getContext().getBean(menu, Action.class);
	      System.out.println("완료 ");
	      return action.execute(map, req);
	   }
	   
	   
	   @ModelAttribute("top")
	   String header(
	         HttpServletRequest req
	         ) {
	
	      if(req.getSession().getAttribute("member")!=null) {
	         return "inc/loginOk.jsp";
	      } else {
	         return "inc/nonLogin.jsp";
	      }
	   
	   }
	   
	   @ModelAttribute("footer")
	   String footer() {
	        return "inc/footer.jsp";
	      
	   }
	   
	   @RequestMapping 
	   String view(){
		   return "wdw/templete/templete"; 
		
	   }
	
}