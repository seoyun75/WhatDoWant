<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 등록 - 2단계</title>
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
                                            펀딩 오픈 이후에 확인 가능합니다.
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
                                <div class="step_bar">
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element"></div>
                                    <div class="step_element"></div>
                                </div>
                                <div class="step_fillUp">2단계 남음</div>
                            </div>
                            <div class="funding_Intro">
                                <h2 class="title">프로젝트는 4단계에 걸쳐 오픈됩니다.</h2>
                                <div class="subject_contents">
                                    아래와 같은 4단계의 진행 과정을 통해 프로젝트가 오픈됩니다. 
                                    투명하고 신뢰도 있는 프로젝트를 오픈하기 위해 꼭 필요한 절차이니 차근차근 진행해주세요. 
                                </div>
                                <ul class="funding_list_intro">
                                    <li class="funding_list_contents">
                                        <div class="funding_list_info">1단계: 펀딩 준비 작성</div>
                                        <p>펀딩 준비의 6가지 메뉴들의 필수항목을 모두 작성하여 제출해주세요. </p>
                                    </li>
                                    <li class="funding_list_contents">
                                        <div class="funding_list_info">2단계: 요건 확인 진행</div>
                                        <p>
                                            메이커님이 작성하신 항목들을 토대로 WDW 펀딩을 진행하기 위한 기본 요건 사항이 충족되는지 확인합니다. 
                                            (영업일 기준 3-5일 소요)
                                        </p>
                                    </li>
                                    <li class="funding_list_contents">
                                        <div class="funding_list_info">3단계: 콘텐츠 확인 진행</div>
                                        <p>
                                            요건 확인 완료 시, 전자 약정 체결과 프로젝트의 핵심인 스토리를 중심으로 콘텐츠를 확인합니다. 
                                            필요 시, WDW 담당자가 피드백 반영 요청할 수 있습니다.
                                        </p>
                                    </li>
                                    <li class="funding_list_contents">
                                        <div class="funding_list_info">4단계: 펀딩 오픈</div>
                                        <p>
                                            약정 체결 등 모든 준비가 완료되면 오픈이 승인됩니다. 메이커님이 직접 '바로 오픈' 혹은 '오픈예약’ 할 수 있습니다.
                                        </p>
                                    </li>
                                </ul>
                                <div class="btn_wrapper">
                                    <div class="step_button">
                                        <a href="/project_up/project_up/funding_establishment"><button type="button" class="wz button back_button">
                                            <i aria-hidden="true" class="icon chevron-left"></i>&lt; &nbsp;&nbsp;이전
                                        </button></a>
                                    </div>
                                    <a href="/project_up/project_up/funding_establishment3"><button type="button" class="rwd button primary">다음</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>