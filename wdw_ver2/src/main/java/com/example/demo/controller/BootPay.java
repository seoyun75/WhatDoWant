package com.example.demo.controller;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.product.BootpayApi;
//
//import io.nodehome.dapp.pay.dto.PayDTO; // 비교를위해.done에서 nice data를 AJAX로 전달(앞 게시글 참고)

@Controller
public class BootPay {
	
//	/**
//	 * NICE 와 부트페이 검증
//	 * @param dto
//	 * @param model
//	 * @return
//	 */
//	@ResponseBody
//	@RequestMapping(value="/bootpay_confirm", method = RequestMethod.POST)
//	public String bootpay_confirm(
//			PayDTO dto
//			, Model model
//			) 
//	{
//		BootpayApi api = new BootpayApi("12345678901234","ABCDEFGHIJKLMNOPQRSTUVWXYZ="); //첫번째 매개변수에 REST Application ID, 두번째 매개변수에 인증키 (Private Key)  
//		String bootpay_check = "";
//		
//		// 부트페이 인증 토큰 발급
//    	try {
//    		api.getAccessToken();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//    	
//    	// 부트페이로부터 검증데이터 가져오기
//    	try {
//    	    HttpResponse res = api.verify(dto.getParking_pay_pgid());
//    	    
//    	    //부트페이에서 가져온 검증 JSON
//    	    bootpay_check = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
//    	    
//    	    // NICE에서 넘겨주는 pgid
//    	    String pay_pgid = dto.getParking_pay_pgid();
//    	    // NICE에서 넘겨주는 pay_money
//    	    String pay_money =  Integer.toString((dto.getParking_pay_money()));
//    	    
//    	    JSONParser jsonParse = new JSONParser();
//			JSONObject jsonObj = (JSONObject)jsonParse.parse(bootpay_check);
//			JSONObject jsonObj2 = (JSONObject)jsonParse.parse((jsonObj.get("data").toString()));
//			
//			// 결제 상태
//			String boot_status = (jsonObj.get("status")).toString();
//			// 부트페이에서 넘겨주는 pgid
//			String boot_pgid = (jsonObj2.get("receipt_id")).toString();
//			// 부트페이에서 넘겨주는 pay_money
//			String boot_pay_money = (jsonObj2.get("price")).toString();
//			// 부트페이에서 넘겨주는 거래상태 (1일 경우 결제 완료 상태)
//			String boot_status2 = (jsonObj2.get("status")).toString();
//			
//			// 거래상태코드
//			if(boot_status.equals("200")) 
//			{	// 서버검증
//				if(boot_pgid.equals(pay_pgid) 
//						&&  boot_pay_money.equals(pay_money) 
//						&&  boot_status2.equals("1")) 
//				{
//					System.out.println("이니시스 부트페이 비교 검증 성공");
//					
//					//성공
//					return "OK";
//				}
//			}
//    	} catch (Exception e) {
//    	    e.printStackTrace();
//    	    return "NO";
//    	}
//    	//실패
//		return "NO";
	}