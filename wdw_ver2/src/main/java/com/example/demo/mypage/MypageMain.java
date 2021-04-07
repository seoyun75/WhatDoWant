package com.example.demo.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Response;
import org.springframework.stereotype.Service;

import com.example.demo.di.Action;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.ShoppingVO;


@Service("mypageMain")
public class MypageMain implements Action{
	/* 람다식으로 변경하기 */
	@Resource
	MypageMapper mapper; 
	
	
	@Override
	public Object execute(HashMap<String, Object> obj, HttpServletRequest req) {
		String service = (String) ((Map)obj).get("service");
		MemberVO mvo = (MemberVO) ((Map)obj).get("mvo");
		MemberVO user = (MemberVO)req.getSession().getAttribute("member");
		String id = user.getMember_id();
		System.out.println("main execute() - mvo: "+mvo+", user:"+user);
		

		switch (service) {
		case "main": //마이페이이지 메인화면
			Map<String , Object> all = new HashMap<>(); //모든 정보를 담을 컬랙션
			List<ShoppingVO> shopping = mapper.shopHistory(id);//구매리스트
			List<ProjectVO> myProject = mapper.project(id);//등록펀딩 리스트
			int income = 0;
			int use = 0;
			for (ProjectVO proj : myProject) { //펀딩성공한 프로젝트 수익
				if(proj.getPro_state().equals("종료")) {
					if(proj.getPro_target_amount()<proj.getPro_now_amount()) {
						income+=proj.getPro_now_amount();
					}
				}
			}
			for (ShoppingVO shopp : shopping) { // 구매 총액
				if(shopp.getPurhistory_paystate().equals("결제완료")) {
					use+=shopp.getPurhistory_amount();
				}
			}
			
			all.put("actore", user(id));
			all.put("shopping", shopping);
			all.put("project", myProject);
			all.put("income", income);
			all.put("use", use);
//			return null;
			return all;
		 case "myInfo": // 회원정보
			System.out.println("Action 'infoModify'");
			mvo.setMember_id(id);
			System.out.println(req.getAttribute("pre_pw"));

			
			if(req.getMethod().equals("POST")) {
				mvo.setMember_pw(user.getMember_pw());
				infomodify(mvo, req);//회원정보 수정(함수)
			}
				
			return user(id);
		 case "withdraw": // 회원 삭제
			 if(req.getParameter("passward").equals(user.getMember_pw())) {//비밀번호 확인
				mapper.deleteCard(user);
				mapper.deleteAccount(user);
			 	mapper.deleteUser(user);
			 	req.getSession().invalidate();//세션 정보 삭제
			 	
			 }
			 break;
		 default:
			break;
		}
		return null;
	}
	
	MemberVO user(String id) {
		return mapper.user(id);
	}
	

	
	String infomodify(MemberVO mvo,HttpServletRequest req) {
		String msg="";
		if(req.getParameter("prepw")!=null){ //비밀번호 변경
			System.out.println("비밀번호 변경"+req.getParameter("newpw"));
			if(req.getParameter("prepw").equals(mvo.getMember_pw())&&req.getParameter("newpw").equals(req.getParameter("chkpw")))
				mvo.setMember_pw(req.getParameter("newpw"));
				mapper.pwModify(mvo);
				System.out.println("pwModify 실행완료");
				msg="비밀번호가 변경되었습니다.";
		}else if(mvo.getMember_pname()!=null) { // 회원정보 변경
			System.out.println("1번실행"+mvo);
			mvo.setMember_address(mvo.getMember_address()+"&"+req.getParameter("member_address_second"));
			System.out.println(mvo.getMember_address());
			mapper.infoModify(mvo);
			msg="정보가 변경되었습니다.";
		}
		System.out.println("완료1");
		req.getSession().setAttribute("member", mapper.user(mvo.getMember_id()));  //세션에 수정된 회원정보로 변경
		System.out.println("완료2");
		
		return msg;
	};

	
}
