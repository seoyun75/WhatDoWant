package com.example.demo.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.di.Action;
import com.example.demo.model.Cate;


@Controller
@RequestMapping("/aboutus/{menu}/{service}")
public class AboutusController {

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


