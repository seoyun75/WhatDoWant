package com.example.demo.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.AccountVO;
import com.example.demo.model.BusinessVO;
import com.example.demo.model.MemberVO;
import com.example.demo.model.ProjectVO;
import com.example.demo.model.Project_boardVO;
import com.example.demo.model.PurhistoryVO;
import com.example.demo.model.Reward_dsnVO;
import com.example.demo.model.ShoppingVO;
import com.example.demo.model.SiteVO;

@Mapper
public interface MypageMapper {
	
	MemberVO user(String id);//로그인유저
	
	
	int deleteUser(MemberVO user);
	int deleteㅇㄹ0Account(MemberVO user);
	int deleteCard(MemberVO user);
	
	//구매내역
	List<ShoppingVO> shopHistory(String id);
	//상품내역
	List<ProjectVO> project(String id);
	
	//상품상세
	List<PurhistoryVO> detailPurhistory(Map<String, Object> detailList);
	ProjectVO detailProject(Integer pro_code); 
	Reward_dsnVO detailReward(PurhistoryVO phvo);
	BusinessVO detailBusiness(ProjectVO ppvo);
	
	
	//구매 상세
	ProjectVO detailProject(String id);
	
	int deleteProject(Map<String, Object> mm);
	int deletePuBasicInfo(Map<String, Object> mm);
	int deletePuBasicReq(Map<String, Object> mm);
	int deletePuMakerInfo(Map<String, Object> mm);
	int deletePuRewardDes(Map<String, Object> mm);
	int deletePuRiskpolicy(Map<String, Object> mm);
	int deletePuStorsy(Map<String, Object> mm);
	
	
	//사용자 정보 수정
	int infoModify(MemberVO mvo);
	//password 변경
	int pwModify(MemberVO mvo);
	//qna 글쓰기
	void qnaInsert(SiteVO svo);
	
	void qnaModify(SiteVO svo);
	//qna 리스트
	List<SiteVO> qnaList(MemberVO mvo);
	List<Project_boardVO> projQnAList(MemberVO mvo);
	
	SiteVO qnaDetail(int si_no);

	void qnaDelete(int si_no);
	//문의답변확인
	int checkAnswar(int si_no);
	SiteVO QnAAnswar(int si_no);
//----------------wallet--------------------
	List<AccountVO> accountList(int member_no);
	void InsertAccount(AccountVO account);
	void accountDelete(String acc_num);
	
	List<PurhistoryVO> useMoney(String id);
	List<ProjectVO> incomeMoney(String id);
	
	
}
