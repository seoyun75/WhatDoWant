<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 등록 - 4단계</title>
<link rel="stylesheet" href="/resources/css/common/reset.css">
</head>
<body>
	<div id="funding_wrap">
		    <div id="funding_Container" class="funding_container">
                <div class="funding_navbar_container">
                    <div class="navbar_left"></div>
                    <div class="navbar_center">
                        <span class="center_info navbar_img my_company">
                            <span class="my_company_img"></span>
                        </span>
                        <span>${member.member_pname }</span>
                    </div>
                    <div class="navbar_button">
                        <button type="button" class="rwd button less exitButton">나가기</button>
                    </div>
                </div>
                <div class="funding_main">
                    <div class="funding_main_contents">
                        <div class="funding_project_container">
                            <a href="#" target="_blank">
                                <strong class="funding_project_text funding_project_flag">펀딩</strong>
                                <strong class="funding_project_text">펀딩 준비 작성 중</strong>
                                <h2 class="funding_project_title">${member.member_pname }의<br>멋진 프로젝트</h2>
                            </a>
                            <button type="button" class="funding_project_number">
                                <div>프로젝트 번호 00000</div>
                                <i aria-hidden="true" class="icon leftBox"></i>
                            </button>
                            <div class="funding_project_img"></div>
                        </div>
                        <nav class="side_menuList_wrap">
                            <div class="side_menuList"></div>
                            <ul>
                                <li>
                                    <a class="side_menuList_nav" href="#">
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon leftBox funding_icon menuList_open"></i>
                                    </a>
                                    <ul class="side_menu_submenu">
                                        <li>
                                            <a class="side_menuList_nav side_menu_sublist" href="#">
                                                기본 요건
                                            </a>
                                        </li>
                                        <li>
                                            <a class="side_menuList_nav side_menu_sublist" href="#">
                                                기본 정보
                                            </a>
                                        </li>
                                        <li>
                                            <a class="side_menuList_nav side_menu_sublist" href="#">
                                                스토리 작성
                                            </a>
                                        </li>
                                        <li>
                                            <a class="side_menuList_nav side_menu_sublist" href="#">
                                                리워드 설계
                                            </a>
                                        </li>
                                        <li>
                                            <a class="side_menuList_nav side_menu_sublist" href="#">
                                                위험요인 및 정책
                                            </a>
                                        </li>
                                        <li>
                                            <a class="side_menuList_nav side_menu_sublist" href="#">
                                                메이커 정보
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="side_menuList_nav side_menuList_nav_title" href="#">
                                        펀딩 현황
                                        <i aria-hidden="true" class="icon menuList_icon"></i>
                                        <div class="menuList_text">
                                            펀딩 오픈 이후에 확인 가능합니다.
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="side_menuList_nav side_menuList_nav_title" href="#">
                                        발송 관리
                                        <i aria-hidden="true" class="icon menuList_icon"></i>
                                        <div class="menuList_text">
                                            펀딩 오픈 이후에 확인 가능합니다.
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="side_menuList_nav side_menuList_nav_title" href="#">
                                        문의·답변
                                        <i aria-hidden="true" class="icon menuList_icon"></i>
                                        <div class="menuList_text">
                                            펀딩 준비 제출 이후에 확인 가능합니다.
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <div class="side_menuList_color"></div>
                    </div>
                    <div id="others_Contents" class="other_Contents">
                        <div class="other_Contents_Box">
                            <div class="step_1day">
                                <div class="step_Box">
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element step_activation"></div>
                                </div>
                            </div>
                            <div class="funding_Intro_container">
                                <h2 class="title">마지막으로 기본 사항을 확인하세요.</h2>
                                <div class="description">메이커님의 프로젝트를 등록하려면 일정 기준에 부합해야 합니다. 프로젝트를 작성하기 전에 다음 기준을 충족하는지 확인해보세요.</div>
                                <ul class="info_about_list">
                                    <li>
                                        <label class="rwd info_about_checkbox checkbox info_about_checkbox_in">
                                            <input type="checkbox" name="isNotSelling">
                                            <div>펀딩 진행 중에는 제공할 리워드를 다른 온∙오프라인에서 펀딩하거나 판매하지 않습니다.</div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="rwd info_about_checkbox  checkbox info_about_checkbox_in">
                                            <input type="checkbox" name="isProductOrService">
                                            <div>제공할 리워드는 현금, 지분 등의 수익이 아닌 제품 또는 서비스입니다.</div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="rwd info_about_checkbox  checkbox info_about_checkbox_in">
                                            <input type="checkbox" name="isNotDisturbing">
                                            <div>진행할 프로젝트 및 리워드가 제 3자의 지식재산권을 침해하지 않으며, 와디즈가 침해 사실을 인지하는 경우 해당 프로젝트를 중단/취소할 수 있습니다.</div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="rwd info_about_checkbox  checkbox info_about_checkbox_in">
                                            <input type="checkbox" name="delivedAvailable">
                                            <div>서포터에게 프로젝트 진행 과정을 안내하고, 배송 약속을 지킬 수 있습니다.</div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="rwd info_about_checkbox  checkbox info_about_checkbox_in">
                                            <input type="checkbox" name="isInformed">
                                            <div>서포터와의 신뢰를 위해 펀딩 진행∙리워드 제작∙배송 등 모든 과정에서 겪는 어려움들을 서포터에게 진솔하게 전달하고 문제를 해결합니다.</div>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="rwd info_about_checkbox  checkbox info_about_checkbox_in">
                                            <input type="checkbox" name="isLegalCompliance">
                                            <div>리워드의 관계 법령 및 관련 광고 심의 규정을 준수하여 스토리를 작성하겠습니다.</div>
                                        </label>
                                    </li>
                                </ul>
                                <div class="btnWrapper">
                                    <div class="step_backButton_container step_backButton_footer">
                                        <a href="/project_up/project_up/funding_establishment3"><button type="button" class="rwd button step_backButton">
                                            <i aria-hidden="true" class="icon leftBox"></i>
                                            &lt; &nbsp;&nbsp;이전 
                                        </button></a>
                                    </div>
                                    <a href="/project_up/project_up/funding_create"><button type="button" class="rwd button primary">다음</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>