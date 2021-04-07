<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩준비</title>
</head>
<body>
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
                        <button type="button" class="rwd button less navbar_exitButton" onclick="location.href='/main/main/main'">
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
                                    프로젝트 번호 ${data[0].pu_basic_req_pro_no }
                                </div>
                                <i aria-hidden="true" class="icon icon_left"></i>
                            </button>
                            <div class="projectInfo_image_box" style="background-color: #8159dc;"></div>
                        </div>
                        <nav class="menuList_container">
                            <div class="menuList_Box"></div>
                            <ul>
                                <li>
                                    <a aria-current="page" class="menuList_nav menuList_active" href="funding_first?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon icon_left menuList_icon_left menuList_open"></i>
                                    </a>
                                    <ul class="subList_container">
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step1?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                기본 요건
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step2?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                기본 정보
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step3?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                스토리 작성
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step4?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                리워드 설계
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step5?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                위험요인 및 정책
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step6?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
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
                        <div class="funding_preparation_wrapper">
                            <div class="funding_preparation_header">
                                <h2 class="funding_preparation_header_title">
                                    펀딩 준비
                                </h2>
                                <p class="funding_preparation_header_description">
                                    본격적으로 펀딩을 오픈하기 위해 프로젝트에 대한 6가지 메뉴의 필수항목을 작성하세요.
                                </p>
                            </div>
                            <div class="funding_main_container">
                                <div class="funding_main_contents">
                                    <div class="funding_stat_container">
                                        <div class="funding_stat_container_box">
                                            프로젝트 준비 상태
                                        </div>
                                        <div id="stat_ing" class="funding_stat_view">
                                            <div class="funding_stat_icon red"></div>
                                            펀딩 준비 작성 중
                                        </div>
                                    </div>
                                    <div class="funding_listContainer">
                                        <div>
                                            <div class="funding_menuList_conten menuList_color">
                                                <div class="funding_menuList_container">
                                                    <div class="menuList_name">
                                                        기본 요건
                                                    </div>
                                                    <a class="menuList_box_button" href="funding_step1?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                        <button type="button" class="rwd button">
                                                            작성하기
                                                        </button>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="funding_menuList_conten menuList_color">
                                                <div class="funding_menuList_container">
                                                    <div class="menuList_name">
                                                        기본 정보
                                                    </div>
                                                    <a class="menuList_box_button" href="funding_step2?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                        <button type="button" class="rwd button">
                                                            작성하기
                                                        </button>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="funding_menuList_conten menuList_color">
                                                <div class="funding_menuList_container">
                                                    <div class="menuList_name">
                                                        스토리 작성
                                                    </div>
                                                    <a class="menuList_box_button" href="funding_step3?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                        <button type="button" class="rwd button">
                                                            작성하기
                                                        </button>
                                                    </a>
                                                </div>
                                            </div>
                                                <div class="funding_menuList_conten menuList_color">
                                                    <div class="funding_menuList_container">
                                                        <div class="menuList_name">
                                                            리워드 설계
                                                        </div>
                                                        <a class="menuList_box_button" href="funding_step4?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                            <button type="button" class="rwd button">
                                                                작성하기
                                                            </button>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="funding_menuList_conten menuList_color">
                                                    <div class="funding_menuList_container">
                                                        <div class="menuList_name">
                                                            위험요인 및 정책
                                                        </div>
                                                        <a class="menuList_box_button" href="funding_step5?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                            <button type="button" class="rwd button">
                                                                작성하기
                                                            </button>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="funding_menuList_conten menuList_color">
                                                    <div class="funding_menuList_container">
                                                        <div class="menuList_name">
                                                        메이커 정보
                                                        </div>
                                                        <a class="menuList_box_button" href="funding_step6?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}">
                                                            <button type="button" class="rwd button">
                                                                작성하기
                                                            </button>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="funding_submit_button">
                                            <button type="button" id="funding_submit_btn"class="rwd button primary funding_submit_btn" onclick="location.href='submit?pro_no=${data[0].pu_basic_req_pro_no }&memCode=${data[0].pu_basic_req_mem_code}'">
                                                제출하기
                                            </button>
                                        </div>
                                    </div>
                                    <div class="funding_main_guide">
                                        <div class="funding_section_wrapper">
                                            <ul>
                                                <li class="fundinglist_item">
                                                    <a href="#" target="_blank" >
                                                        <div class="fundinglist_section" style="background-color: #8159dc;"></div>
                                                    </a>
                                                </li>
                                                <li class="fundinglist_item">
                                                    <a href="#" target="_blank" >
                                                        <div class="fundinglist_section" style="background-color: #8159dc;"></div>
                                                    </a>
                                                </li>
                                                <li class="fundinglist_item">
                                                    <a href="#" target="_blank" >
                                                        <div class="fundinglist_section" style="background-color: #8159dc;"></div>
                                                    </a>
                                                </li>
                                                <li class="fundinglist_item">
                                                    <a href="#" target="_blank" >
                                                        <div class="fundinglist_section" style="background-color: #8159dc;"></div>
                                                    </a>
                                                </li>
                                                <li class="fundinglist_item">
                                                    <a href="#" target="_blank" >
                                                        <div class="fundinglist_section" style="background-color: #8159dc;"></div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>