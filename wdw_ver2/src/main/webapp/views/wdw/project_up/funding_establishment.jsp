<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>What do want?</title>
<link rel="stylesheet" href="/resources/css/common/reset.css">

<title>프로젝트 등록 - 메인화면</title>
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
                                    <div class="step_element"></div>
                                    <div class="step_element"></div>
                                    <div class="step_element"></div>
                                </div>
                                <div class="step_fillUp">3단계 남음</div>
                            </div>
                            <div class="funding_Intro">
                                <h2 class="title">${member.member_pname }님, 반갑습니다!</h2>
                                <div class="subject_contents">
                                    프로젝트 개설을 축하드리며, 서포터에게 잊지 못할 프로젝트 경험을 선사하고 
                                    메이커님의 성공적인 펀딩을 위해 WDW가 함께 협력할 수 있기를 기대합니다.
                                    <br><br><br>
                                    자! 시작해볼까요? 
                                </div>
                                <div class="btn_wrapper">
                                    <a href="/project_up/project_up/funding_establishment2"><button type="button" class="rwd button primary">다음</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>