package com.example.demo.controller;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.BootpayVO;  // 비교를위해.done에서 nice data를 AJAX로 전달(앞 게시글 참고)
import com.example.demo.product.BootpayApi;

@Controller
public class BootpayController {
   /**
    * NICE 와 부트페이 검증
    * @param dto
    * @param model
    * @return
    */
	
	@Resource               
	   Provider provider;
	
	
   @ResponseBody
   @RequestMapping(value="/BootpayController", method = RequestMethod.POST)
   public String bootpay_confirm(
//		   @RequestHeader ("token")
         BootpayVO dto
         , Model model
         ) 
   {	
	   System.out.println("111111111");
      BootpayApi api = new BootpayApi("5fdc50bc2fa5c2002f038a99","d80oYh4a6OKijOj9vWaouuqcAKpHfk2kuOjYvrlKM5U="); //첫번째 매개변수에 REST Application ID, 두번째 매개변수에 인증키 (Private Key)  
      String bootpay_check = "";
      System.out.println("22222222");
      
      // 부트페이 인증 토큰 발급
       try {
    	   System.out.println("3333333333");
          api.getAccessToken();
          System.out.println("44444444444");
      } catch (Exception e) {
    	  System.out.println("55555555555");
         e.printStackTrace();
      }
       
       // 부트페이로부터 검증데이터 가져오기
       try {
    	   System.out.println(dto); 
    	   System.out.println(dto.getParking_pay_pgid());
    	   System.out.println("6666666666");
           HttpResponse res = api.verify(dto.getParking_pay_pgid());
           System.out.println("77777777777");
           
           //부트페이에서 가져온 검증 JSON
           System.out.println("8888888888");
           bootpay_check = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
           System.out.println("99999999999");
           
           // NICE에서 넘겨주는 pgid
           System.out.println("121212121212");
           String pay_pgid = dto.getParking_pay_pgid();
           System.out.println("13131313131313");
           // NICE에서 넘겨주는 pay_money
           System.out.println("141414141414141");
           String pay_money =  Integer.toString((dto.getParking_pay_money()));
           System.out.println("15151515151515");
           
           System.out.println("1616166161616");
           JSONParser jsonParse = new JSONParser();
           System.out.println("177711717171717");
         JSONObject jsonObj = (JSONObject)jsonParse.parse(bootpay_check);
         System.out.println("11818188818");
         JSONObject jsonObj2 = (JSONObject)jsonParse.parse((jsonObj.get("data").toString()));
         System.out.println("1919199199191");
        
         
         // 결제 상태
         System.out.println("22020020202020");
         String boot_status = (jsonObj.get("status")).toString();
         System.out.println("21212121221");
         // 부트페이에서 넘겨주는 pgid
         System.out.println("2323232332323");
         String boot_pgid = (jsonObj2.get("receipt_id")).toString();
         System.out.println("242424242424");
         // 부트페이에서 넘겨주는 pay_money
         System.out.println("252525252525");
         System.out.println((jsonObj2.get("price")).toString());
         String boot_pay_money = (jsonObj2.get("price")).toString();
         System.out.println("262662626262626");
         // 부트페이에서 넘겨주는 거래상태 (1일 경우 결제 완료 상태)
         String boot_status2 = (jsonObj2.get("status")).toString();
         System.out.println("2727277272727");
         
         // 거래상태코드
         if(boot_status.equals("200")) 
         {   // 서버검증
        	 System.out.println("282882882828");
            if(boot_pgid.equals(pay_pgid) 
                  &&  boot_pay_money.equals(pay_money) 
                  &&  boot_status2.equals("1")) 
            System.out.println("2929299292992");
            {
            
               System.out.println("이니시스 부트페이 비교 검증 성공");
              
               
               //성공
               System.out.println("303030033030");
               return "infund/payment/test";
            }
         }
       } catch (Exception e) {
    	   System.out.println("313131313131");
           e.printStackTrace();
           
           return "infund/payment/test";
       }
       //실패
      return "infund/payment/test";
   }
}