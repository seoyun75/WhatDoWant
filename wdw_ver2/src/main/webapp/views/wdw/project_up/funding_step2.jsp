<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/project_up/common.css">
<script>
	function rePreDelete(){
		if(confirm("파일을 삭제하시겠습니까?")){
			frm.action="rePreImgDeleteReg";
			frm.submit();
		}	
	}
</script>
</head>
<body>
<form action="funding_step2_reg?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}" method="post" enctype="multipart/form-data" name="frm">
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
                                    프로젝트 번호 ${data.pu_basic_info_pro_no }
                                </div>
                                <i aria-hidden="true" class="icon icon_left"></i>
                            </button>
                            <div class="projectInfo_image_box" style="background-color: #8159dc;"></div>
                        </div>
                        <nav class="menuList_container">
                            <div class="menuList_Box"></div>
                            <ul>
                                <li>
                                    <a aria-current="page" class="menuList_nav menuList_active" href="funding_first?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}">
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon icon_left menuList_icon_left menuList_open"></i>
                                    </a>
                                    <ul class="subList_container">
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step1?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}">
                                                기본 요건
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step2?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}">
                                                기본 정보
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step3?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}">
                                                스토리 작성
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step4?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}">
                                                리워드 설계
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step5?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}">
                                                위험요인 및 정책
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step6?pro_no=${data.pu_basic_info_pro_no }&memCode=${data.pu_basic_info_mem_code}">
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
                            <div class="other_Container">
                                <ul class="funding_Intro_list">
                                    <li class="funding_Intro_list_item">펀딩 준비</li>
                                    <li class="funding_Intro_list_item">기본 정보</li>
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
                                        <h2 class="funding_top_title">기본 정보</h2>
                                        <p class="funding_top_description">프로젝트를 대표할 주요 기본 정보를 입력하세요.</p>
                                    </div>
                                    <div class="funding_guide_wrapper">
                                        <button class="funding_guide_button funding_guide_btn">
                                            <div class="funding_guide_point">
                                                <!-- <img src="img/test_logo.png" alt="이미지"> -->
                                            </div>
                                        </button>
                                    </div>
                                </div>
                                <form class="rwd form funding_form_container funding_form">
                                    <div class="funding_sec funding_sec_box"></div>
                                    <div class="subject_contents">
                                        <div class="subject_guide_box">
                                            <div class="field subject_guide_field subject_guide_text">
                                                <label class="rwd label form_textarea form_label">
                                                    <div class="funding_Tip_contanier">
                                                        <div class="funding_Tip_box funding_Tip_text">프로젝트 제목</div>
                                                        <div class="helpTip_wrap helpTip" style="font-size: 14px;">
                                                            <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                <i class="icon help-o" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </label>
                                                <div class="form_input_container">
                                                    <div class="rwd input right form_input">
                                                        <input placeholder="제목 입력" maxlength="40" values=" " errors=" " touched=" " submitcount="0" initialvalues=" " name="pu_basic_info_proj_sub" type="text" value="${data.pu_basic_info_proj_sub }">
                                                    </div>
                                                    <em class="helper funding_guide_text">40자 남음</em>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="subject_contents">
                                        <div class="subject_guide_contents">
                                            <div class="field subject_guide_field subject_guide_text">
                                                <label class="rwd label form_textarea form_label">
                                                    <div class="funding_Tip_contanier">
                                                        <div class="funding_Tip_box funding_Tip_text">목표 금액</div>
                                                        <div class="helpTip_wrap helpTip" style="font-size: 14px;">
                                                            <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                <i class="icon help-o" aria-hidden="true"></i>
                                                            </button>
                                                            <div class="helpTip_message helpTip_box" style="min-width: 350px;">
                                                                <div data-role="title">목표금액은 너무 낮지도, 너무 높지도 않게!</div>
                                                                마감일 자정 기준 목표금액을 달성해야 프로젝트 성공되어 결제가 실행되니, 리워드 제작 및 배송비, 인건/운영비 등을 고려해서 금액을 설정해 주세요.
                                                                <br><br>
                                                                고민 없이 목표금액을 설정할 경우 프로젝트가 실패하거나 성공해도 제품/서비스 제작을 하지 못할 수 있어요.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </label>
                                                <div class="funding_top_description">
                                                    최소 50만 원 ~ 최대 1억 원으로 설정하세요.</div>
                                                    <div class="form_input_container">
                                                        <div class="rwd input right form_input form_input_price">
                                                            <input placeholder="목표 금액 입력" submitcount="0" initialvalues=" " name="pu_basic_info_target_amount" type="text" value="${data.pu_basic_info_target_amount }">
                                                        </div>
                                                        <span class="form_input_pricetext">원</span>
                                                        <em class="helper Funding_guide_text"></em>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="subject_contents">
                                            <div class="subject_guide_contents">
                                                <div class="subject_info_container">
                                                    <input name="Id" type="hidden" value="">
                                                    <div class="field subject_guide_field subject_guide_text">
                                                        <div class="subject_info_wrapper">
                                                            <label class="rwd label form_label">
                                                                <div class="funding_Tip_contanier">
                                                                    <div class="funding_Tip_box funding_Tip_text">대표 이미지</div>
                                                                    <div class="helpTip_wrap helpTip" style="font-size: 14px;">
                                                                        <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                            <i class="icon help-o" aria-hidden="true"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </label>
                                                        </div>
                                                        <div class="form_button_wrapper">
                                                        	<c:choose>
	                                                            <c:when test="${data.pu_basic_info_repre_img == null }">
																	<input type="file" name="rePreFile" accept=".jpg, .jpeg"/>												
																</c:when>
																<c:otherwise>
																	<input type="hidden" name="pu_maker_info_comp_img" value="${data.pu_basic_info_repre_img }"/>
																	${data.pu_basic_info_repre_img } <input type="button" value="파일삭제" onclick="rePreDelete()"/>
																</c:otherwise>
															</c:choose>
                                                            <em class="helper error"></em>
                                                            <em class="helper img_helper">3MB 이하의 JPEG, JPG 파일</em>
                                                            <em class="helper img_helper">텍스트 및 로고 삽입 금지</em>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="subject_contents">
                                        <div class="subject_guide_contents">
                                            <div class="field subject_guide_field dropdown_field" style="margin-top: 0; margin-bottom: 40px;">
                                                <label class="rwd label dropdown_label form_label">
                                                    <div class="funding_Tip_contanier">
                                                        <div class="funding_Tip_box funding_Tip_text">카테고리</div>
                                                        <div class="helpTip_wrap helpTip" style="font-size: 14px;">
                                                            <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                <i class="icon help-o" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </label>
                                                <div>
                                                     <select name="pu_basic_info_cate" >
                                                        <option value="테크/가전" >테크·가전</option>
                                                        <option value="패션/잡화">패션·잡화</option>
                                                        <option value="뷰티">뷰티</option>
                                                        <option value="푸드">푸드</option>
                                                        <option value="홈리빙">홈리빙</option>
                                                        <option value="반려동물">반려동물</option>
                                                     </select>
                                                   	 <em class="helper dropdown_helper"></em>
                                                </div>
                                            </div>
                                        </div>
                                    </div><div class="subject_contents">
                                        <div class="subject_guide_contents">
                                            <div class="field subject_guide_field subject_guide_text">
                                                <label class="rwd label form_label">
                                                    <div class="funding_Tip_contanier">
                                                        <div class="funding_Tip_box funding_Tip_text">프로젝트 시작일</div>
                                                        <div class="helpTip_wrap HelpTip" style="font-size: 14px;">
                                                            <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                <i class="icon help-o" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </label>
                                                <div class="info_description">
                                                    요건・콘텐츠 확인 및 프로젝트 진행 일정과 리워드 발송 일정을 함께 고려하여 시작일을 설정해주세요.
                                                </div>
                                                <div class="info_input_wrap">
                                                    <div class="info_field_input">
                                                        <div class="rwd input right info_field_inputBox">
                                                            <input pattern="\d*" name="info_start_date" placeholder="예)20120501" maxlength="8" closeclass="info_close" type="tel" value="${data.info_start_date }">
                                                        </div>
                                                        <button type="button" class="rwd button less icon dense info_close">
                                                            <i aria-hidden="true" class="icon close"></i>
                                                        </button>
                                                    </div>
                                                    <button type="button" class="rwd button less icon dense">
                                                        <i aria-hidden="true" class="icon calendar-o"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="subject_contents">
                                        <div class="subject_guide_contents">
                                            <div class="field subject_guide_field subject_guide_text">
                                                <label class="rwd label form_label">
                                                    <div class="funding_Tip_contanier">
                                                        <div class="funding_Tip_box funding_Tip_text">프로젝트 종료일</div>
                                                        <div class="helpTip_wrap HelpTip" style="font-size: 14px;">
                                                            <button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
                                                                <i class="icon help-o" aria-hidden="true"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </label>
                                                <div class="info_description">
                                                    요건・콘텐츠 확인 및 프로젝트 진행 일정과 리워드 발송 일정을 함께 고려하여 종료일을 설정해주세요.
                                                </div>
                                                <div class="info_input_wrap">
                                                    <div class="info_field_input">
                                                        <div class="rwd input right info_field_inputBox">
                                                            <input pattern="\d*" name="info_end_date" placeholder="예)20120501" maxlength="8" closeclass="info_close" type="tel" value="${data.info_end_date }">
                                                        </div>
                                                        <button type="button" class="rwd button less icon dense info_close">
                                                            <i aria-hidden="true" class="icon close"></i>
                                                        </button>
                                                    </div>
                                                    <button type="button" class="rwd button less icon dense">
                                                        <i aria-hidden="true" class="icon calendar-o"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <div class="funding_container_btnWrapper">
                                    <!-- <button type="button" class="rwd button primary">저장하기</button> -->
                                    <input type="submit" class="rwd button primary" value="저장하기">
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
	</form>
</body>
</html>