package com.example.demo.controller;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.di.Action;
import com.example.demo.model.Cate;
import com.example.demo.model.NoticeVO;


@Controller
@RequestMapping("/board/{menu}/{service}")
public class BoardController {

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
   Object mainData(
         // 필요한 VO객체 추가하기
		 NoticeVO nvo,
		 @PathVariable("menu") String menu,
         @PathVariable("service") String service,
         HttpServletRequest req
         ) {
		      System.out.println("mainData() 실행");

		      // 해쉬맵을 선언해서 객체 + 서비스 다 담기      
		      HashMap<String, Object> map   = new HashMap<String, Object>();
		      map.put("service", service);
		      map.put("nvo", nvo);
		      
		                                 // menu로 Bean생성하고 service는 넘김 
		      Action action = provider.getContext().getBean(menu, Action.class);
		      
		      return action.execute(map, req);
		   }
		   
   
   
   
   
   
   
   
   // 건드리지 않아도 될부분 //
	   
	   
	   @ModelAttribute("top")
	      String header(
	            @PathVariable("menu") String menu,
	            HttpServletRequest req
	            ) {
	      
	         if(menu.equals("project_up")) {
	            return "inc/establishment_header.jsp";
	         }
	
	         if(req.getSession().getAttribute("member")!=null) {
	            return "inc/loginOk.jsp";
	         } else {
	            return "inc/nonLogin.jsp";
	         }
	      
	      }
	   
	   @ModelAttribute("footer")
	      String footer(@PathVariable("menu") String menu) {
	         
	         if(menu.equals("project_up")) {
	            return "inc/establishment_footer.jsp";
	         }else {
	            return "inc/footer.jsp";
	         }
	      }
	   
	   @RequestMapping
	   String view(){
	      
	      return "wdw/templete/templete";
	   }
	   
   
   
}


