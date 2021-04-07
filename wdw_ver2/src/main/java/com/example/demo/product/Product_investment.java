package com.example.demo.product;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.Basic_infoVO;
import com.example.demo.model.ProjectVO;

@Service("product_investment")
public class Product_investment implements Action{
	
	@Resource
	ProjectMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		
		ProjectVO provo = (ProjectVO)map.get("provo");
		
		String service = (String)map.get("service");
		
		System.out.println(provo);
		
		if(service.equals("reward_main")||
				service.equals("earlybird_main")){
			
			List<ProjectVO> ppday = mapper.listSch(provo);
			for (ProjectVO pvo : ppday) {
				String dd = mapper.dday(pvo);
//				System.out.println(dd);
				pvo.setPro_dday(Integer.parseInt(dd.substring(0, dd.indexOf(" ")))+1);
			}
//			System.out.println("체크 : "+ppday);
			
//			System.out.println();
//			for(ProjectVO pvo : mapper.listSch(provo)){
//				System.out.println("mmm" + pvo.getPro_code() + provo);
//			    for(Basic_infoVO infvo : mapper.prodday(provo)){
////			    	System.out.println(pvo.getPro_code() + " fksokfosdkf" + infvo.getPu_basic_info_pro_no());
//			         if(pvo.getPro_code() == infvo.getPu_basic_info_pro_no()){
//			        	 pvo.setPro_dday(infvo.getInfo_day());
//			        	 ppday.add(pvo);
//			        	
//			        	 System.out.println("pvo" + infvo.getPu_basic_info_pro_no());
//			         }
//			    }
//			    System.out.println("ppday.size()"+ppday.size());
//			}
			return ppday;
//		}else if( {
//			return mapper.listType(provo);			
		}else if(service.equals("End_main")) {
			List<ProjectVO> endList = mapper.endPro();
			
			return endList;
		}
		
		System.out.println("project/list execute() 실행");
		return null;
	}

}
