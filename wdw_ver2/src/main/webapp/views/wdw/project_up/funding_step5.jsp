<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n");%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="/resources/css/project_up/common.css">
<link rel="stylesheet" href="/resources/css/project_up/funding_step5.css" />
<meta charset="UTF-8">
<title>펀딩준비 - 위험요인 및 정책</title>
</head>
<body>
	<form action="funding_step5_reg?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}" method="post">
	<div id="funding_wrap">
			<div id="funding_Container" class="funding_container">
				<div class="funding_navbar_container">
					<button type="button" class="rwd button less navbar_button">
						<i aria-hidden="true" class="icon menu"></i>
					</button>
					<div class="navbar_logo">
						<button type="button" class="rwd button less">
							<img alt="로고" src="/resources/img/common/logo.png" style="width: 60px;">
						</button>
					</div>
					<div class="navbar_Info">
                        <span class="navbar_Info_wrap navbar_Image navbar_Image_company" style="width: 32px; height: 32px;">
                            <span class="navbar_Infoimg"></span>
                        </span>
                        <span>${member.member_pname }</span>
                    </div>
                    <div class="navbar_buttons">
                        <div class="button_container">
                            <button class="preview_button rwd button circular dense primary_outline" type="button">
                                미리보기
                            </button>
						</div>
                        <button type="button" class="rwd button less navbar_exitButton">
                            나가기
                        </button>
                    </div>
                </div>
                <div class="navbar_main_info">
                    <div class="sidebar_contents">
                        <div class="projectInfo_container">
                            <a href="#" target="_blank" >
                                <strong class=" projectInfo_box projectInfo_flag">
                                    펀딩
                                </strong>
                                <strong class=" projectInfo_box">
                                    펀딩 준비 작성 중
                                </strong>
                                <h2 class="projectInfo_title">
                                    ${member.member_pname }의
                                    <br>
                                    멋진 프로젝트
                                </h2>
                            </a>
                            <button type="button" class="projectInfo_port">
                                <div>
                                    프로젝트 번호 ${data.pu_riskpolicy_pro_no }
                                </div>
                                <i aria-hidden="true" class="icon icon_left"></i>
                            </button>
                            <div class="projectInfo_image_box" style="background-color: #8159dc;"></div>
                        </div>
                        <nav class="menuList_container">
                            <div class="menuList_Box"></div>
                            <ul>
                                <li>
                                    <a aria-current="page" class="menuList_nav menuList_active" href="funding_first?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}">
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon icon_left menuList_icon_left menuList_open"></i>
                                    </a>
                                    <ul class="subList_container">
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step1?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}">
                                                기본 요건
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step2?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}">
                                                기본 정보
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step3?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}">
                                                스토리 작성
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step4?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}">
                                                리워드 설계
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step5?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}">
                                                위험요인 및 정책
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step6?pro_no=${data.pu_riskpolicy_pro_no }&memCode=${data.pu_riskpolicy_mem_code}">
                                                메이커 정보
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="menuList_nav menuList_disabled" href="#">
                                        펀딩 현황
                                        <i aria-hidden="true" class="icon open_after menuList_open"></i>
                                        <div class="menuList_text">
                                            펀딩 오픈 이후에 확인 가능합니다.
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="menuList_nav menuList_disabled" href="#">
                                        발송 관리
                                        <i aria-hidden="true" class="icon open_after menuList_open"></i>
                                        <div class="menuList_text">
                                            펀딩 오픈 이후에 확인 가능합니다.
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="menuList_nav menuList_disabled" href="#">
                                        문의・답변
                                        <i aria-hidden="true" class="icon open_after menuList_open"></i>
                                        <div class="menuList_text">
                                        	펀딩 오픈 이후에 확인 가능합니다.
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div id="funding_preparation" class="funding_preparation">
                        <div class="other_Contents_Box">
                            <div class="story_Container">
                                <ul class="funding_Intro_list">
                                    <li class="funding_Intro_list_item">펀딩 준비</li>
                                    <li class="funding_Intro_list_item">위험요인 및 정책</li>
                                </ul>
                                <div class="detail_navbar_container">
                                    <div class="detail_navbar_contents">
                                        <button type="button" class="rwd button less collapseButton">
                                            <i aria-hidden="true" class="icon menu"></i>
                                        </button>
                                        <div class="detail_navbar_logo">
                                            <button type="button" class="rwd button less">
                                                <img alt="로고" src="/resources/img/common/logo.png" style="width: 60px;" onclick="location.href='/main/main/main'">
                                            </button>
                                        </div>
                                        <div class="detail_navbar_info">
                                            <span class="detail_navbar_wrap detail_navbar_image detail_navbar_company" style="width: 32px; height: 32px;">
                                                <span class="detail_navbar_info_img"></span>
                                            </span><span>${member.member_pname }</span>
                                        </div>
                                        <div class="navbar_buttons">
                                            <button type="button" class="rwd button less navbar_exitButton" onclick="location.href='/main/main/main'">나가기</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="funding_top_container">
                                    <div class="funding_top_contents">
                                        <h2 class="funding_top_title">위험요인 및 정책</h2>
                                        <p class="funding_top_description">크라우드펀딩 특성상, 리워드 발송 예상 변동 기간에 대하여 서포터에게 미리 알리고, 교환/펀딩금반환/AS정책을 고지하여야 합니다. 서포터에게 하는 약속인 만큼, 프로젝트 오픈 후에는 수정이 불가하니 신중하게 작성하세요.</p>
                                    </div>
                                    <div class="funding_guide_wrapper">
                                        <button class="funding_guide_button funding_guide_btn">
                                            <div class="funding_guide_point">
                                                <!-- <img src="img/test_logo.png" alt="이미지"> -->
                                            </div>
                                        </button>
                                    </div>
                                </div>
                                <form class="rwd form policy_form_field funding_form">
                                    <div class="funding_sec funding_sec_box"></div>
                                    <div class="subject_contents">
                                        <div class="subject_guide_contents">
                                            <div class="info_refund">
                                                <div class="info_first_title">
                                                    <i aria-hidden="true" class="icon info"></i> 
                                                    본 프로젝트는 와디즈 펀딩금 반환 정책이 적용됩니다.
                                                </div>
                                                <div class="info_first_box">
                                                    자세한 내용은&nbsp;
                                                    <a href="#" target="_blank">펀딩금 반환 정책</a>
                                                    &nbsp; 에서 확인해주세요.
                                                    <br>
                                                    시행일: 2020. 12. 02
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="subject_contents">
                                        <div class="story_Container">
                                            <div class="policy_container policy_info_container">
                                                <div class="policy_info_container_subtitle">
                                                    <div class="funding_Tip_contanier">
                                                        <div class="funding_Tip_box funding_Tip_text">
                                                            리워드 정보 제공 고시
                                                        </div>
                                                        <div class="helpTip_wrap helpTip" style="font-size: 14px;">
                                                            <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                <i class="icon help-o" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p>서포터에게 리워드를 제공하는 경우, 리워드 정보 제공 고시를 반드시 입력해야 합니다.</p>
                                                <!-- Button trigger modal -->
													<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
													  추가하기
													</button>
													
													<!-- Modal -->
												  <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
												    <div class="modal-dialog modal-dialog-scrollable">
												      <div class="modal-content">
												        <div class="modal-header">
												          <h5 class="modal-title" id="exampleModalLabel">리워드 정보 제공</h5>
												          <button type="button" name="" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												        </div>
												        <div class="modal-body">
												          <div class="mb-3">
												            <label for="exampleFormControlInput1" class="form-label">프로젝트 카테고리</label>
												            <select class="form-select" name="pu_riskpolicy_reward_cate" aria-label="Default select example">
															  <option >테크/가전</option>
															  <option >패션/잡화</option>
															  <option >뷰티</option>
															  <option >푸드</option>
															  <option >홈리빙</option>
															  <option >반려동물</option>
															</select>
												          </div>
												          <div class="mb-3">
												            <label for="exampleFormControlInput1" class="form-label">품명 및 모델명</label>
												            <input type="text" name="pu_riskpolicy_prod_name" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												          </div>
												          <div class="mb-3">
												            <label for="exampleFormControlInput1" class="form-label">주요 소재</label>
												            <input type="text" name="pu_riskpolicy_prod_material" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												          </div>
												          <div class="mb-3">
												            <label for="exampleFormControlInput1" class="form-label">색상</label>
												            <input type="text" name="pu_riskpolicy_prod_color" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												          </div>
												          <div class="mb-3">
												            <label for="exampleFormControlInput1" class="form-label">치수</label>
												            <input type="text" name="pu_riskpolicy_prod_size" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												          </div>
												          <div class="mb-3">
												            <label for="exampleFormControlInput1" class="form-label">제조자</label>
												            <input type="text" name="pu_riskpolicy_manufacturer" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												          </div>
												          <div class="mb-3">
												              <label for="exampleFormControlInput1" class="form-label">제조국</label>
												              <input type="text" name="pu_riskpolicy_ctr_manufact" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												            </div>
												            <div class="mb-3">
												              <label for="exampleFormControlInput1" class="form-label">취급시 주의사항</label>
												              <input type="text" name="pu_riskpolicy_handling" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												            </div>
												            <div class="mb-3">
												                <label for="exampleFormControlInput1" class="form-label">AS담당자 및 연락처</label>
												                <input type="text" name="pu_riskpolicy_manager_info" class="form-control" id="exampleFormControlInput1" placeholder="내용입력">
												            </div>
												        </div>
												        <div class="modal-footer">
												          <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
												        </div>
												      </div>
												    </div>
												  </div>
                                                <p></p>
                                                <div class="policy_info_list"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="subject_contents">
                                        <div class="subject_guide_contents">
                                            <div class="policy_refundas_container">
                                                <div class="policy_refundas_subtitle">
                                                    <div class="funding_Tip_contanier">
                                                        <div class="funding_Tip_box">사용 중 발생한 하자에 대한 A/S 정책
                                                            <span class="policy_options">(선택사항)</span>
                                                        </div>
                                                        <div class="helpTip_wrap helpTip" style="font-size: 14px;">
                                                            <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                <i class="icon help-o" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="policy_refundas_label">초기 하자(리워드 배송 완료 후 7일 이내에 발생)가 아닌 서포터가 사용 중에 발생하는 하자를 어떻게 처리할 것인지에 대한 정책을 작성하세요.</div>
                                                <div class="rwd input policy_refundas_exchange">
                                                    <textarea name="pu_riskpolicy_no_def_policy" placeholder="(예시)
・ 보증기간: 리워드 수령일로부터 1년
・ 규정: 정상적인 상태에서 사용중 발생한 제품하자인 경우 1:1교체
・ A/S 불가 규정: 보증기간 이내일지라도 사용자의 고의 또는 과실로 인하여 제품 수리 및 재생이 불가능한 경우
・ 접수 방법: 접수처를 통해 하자에 대한 정확한 소명 후 처리됩니다.
・ 접수처: 010-1234-5678 / 카카오톡 아이디 @abcd" rows="3" style="overflow-y: hidden; resize: none;">${fn:replace(data.pu_riskpolicy_no_def_policy, '<br>', crlf)}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                <div class="funding_container_btnWrapper">
                                    <input type="submit" class="rwd button primary" value="저장하기"/>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>