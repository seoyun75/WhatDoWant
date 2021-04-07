package com.example.demo.mypage;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.AccountVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.PurhistoryVO;

@Service("wallet")//내지갑
public class Wallet implements Action {
	@Resource
	MypageMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		System.out.println("wallet execute()"+ map.get("service"));
		String service = ""+map.get("service");
		AccountVO account = (AccountVO)map.get("avo");
		MemberVO actore = (MemberVO)req.getSession().getAttribute("member");//로그인한 회원의 정보
		
		switch(service) {
		
		case "wallet"://내지갑 메인페이지
			Map<String, Object> obj = moneyFlow(actore);//거래내역. 총액계산
			List<AccountVO> list = mapper.accountList(actore.getMember_no());
			obj.put("account", list);
			
			return obj;
		case "account"://계좌 정보, 리스트
			if(req.getMethod().equals("POST")) {//통장추가 페이지에서 통장정보를 가지고 url이동한 경우 
				account.setAccount_member_no(actore.getMember_no());
				mapper.InsertAccount(account);
			}
			
			list = mapper.accountList(actore.getMember_no());
			System.out.println(list);
			return list;
		case "accountDelete"://계좌정보 삭제
			mapper.accountDelete(req.getParameter("account_number"));
			break;
		case "moneyFlow"://거래내역

			return moneyFlow(actore);
		}
		
		
		return null;
	}
	
	//거래내역
	Map<String, Object> moneyFlow(MemberVO actore){
		Map<String , Object> obj = new HashMap<>();
		List<PurhistoryVO> ps = mapper.useMoney(actore.getMember_id());
		List<ProjectVO> pj = mapper.incomeMoney(actore.getMember_id());
		int psTotal= 0;
		int pjTotal= 0;
		for (PurhistoryVO pvo : ps) {
			pvo.setPur_funding_date_tostring(new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss").format(pvo.getPurhistory_funding_date()));
			psTotal += pvo.getPurhistory_amount();
		}
		for (ProjectVO pvo : pj) {
			pjTotal += pvo.getPro_now_amount();
		}
		obj.put("buy", ps);
		obj.put("sell", pj);
		obj.put("buyTot", psTotal);
		obj.put("sellTot", pjTotal);
		
		return obj;
	}

}
