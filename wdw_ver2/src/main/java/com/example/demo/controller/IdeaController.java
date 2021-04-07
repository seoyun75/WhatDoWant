package com.example.demo.controller;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.di.Action;
import com.example.demo.idea.IdeaMapper;
import com.example.demo.model.Cate;
import com.example.demo.model.IdeaVO;


@Controller
@RequestMapping("/wdw/idea/{service}")
public class IdeaController {

   @Resource
   Provider provider;
   IdeaMapper mapper;
   
   @ModelAttribute
   Cate cate(
         @PathVariable("service") String service
         ) {
      Cate cate = new Cate();
      
      cate.setMenu("idea");
      cate.setService(service);
      cate.setMainUrl("../idea/"+service+".jsp");
      
      return cate;
   }
   
   
   @ModelAttribute("data")
   Object mainData(
         // 필요한 VO객체 추가하기
		 IdeaVO ivo,
         @PathVariable("service") String service,
         HttpServletRequest req
         ) {
		      System.out.println("ideaData() 실행");

		      // 해쉬맵을 선언해서 객체 + 서비스 다 담기      
		      HashMap<String, Object> map   = new HashMap<String, Object>();
		      map.put("service", service);
		      map.put("ivo", ivo);
		      
		                                 // menu로 Bean생성하고 service는 넘김 
		      Action action = provider.getContext().getBean("idea", Action.class);
		      
		      return action.execute(map, req);
		   }
		   
   
/*	   @RequestMapping(value="/wdw/idea/idea_up", method = RequestMethod.GET)
		   String insertForm() {
			   return "wdw/idea/idea_up";
		   }
		   
		   @RequestMapping(value = "/wdw/idea/idea_up", method = RequestMethod.POST )
		   String insertReg(IdeaVO vo, HttpServletRequest req) {
		
		      fileUpload(vo.getUpfileFF(), req);
		      
		      mapper.insert(vo);
		      
		      return "redirect:idea_detail?no="+vo.getNo();
		   }
		   
   */
   
   
   
	/*	   @RequestMapping(value="idea_up",method=RequestMethod.GET)
		   public String insertForm(@ModelAttribute IdeaVO ivo){
	
		   		return "wdw/idea/idea_up";
		   }
		   
		   @RequestMapping(value="idea_up",method=RequestMethod.POST)
		   public String insertReg(@ModelAttribute IdeaVO ivo, HttpServletRequest req){
			   fileUpload(ivo.getUpfileFF(), req);
			      
			      mapper.insert(ivo);
			      
			   return "redirect:idea_detail?no="+ivo.getNo();
   
		   }*/
		
   	   
		   
		   
		   void fileUpload(MultipartFile ff, HttpServletRequest request) {
			   String path = request.getRealPath("/up");
			      path = "C:\\학원\\wokrspace\\sts_mvc_work\\wdwProject\\src\\main\\webapp\\img_up";
			      
			      try {
			         FileOutputStream fos = new FileOutputStream(path+"/"+ff.getOriginalFilename());
			         
			         fos.write(ff.getBytes());
			         
			         fos.close();
			         
			      } catch (Exception e) {
			         e.printStackTrace();
			      }
		   }

   
   
   // 건드리지 않아도 될부분 //
   
   @ModelAttribute("top")
   String header() {
   
   return "inc/loginOk.jsp";
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


