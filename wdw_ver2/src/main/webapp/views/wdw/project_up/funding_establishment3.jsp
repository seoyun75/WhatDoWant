<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 등록 - 3단계</title>
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
                                <div class="step_Box">
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element step_activation"></div>
                                    <div class="step_element"></div>
                                </div>
                                <div class="step_fillUp">1단계 남음</div>
                            </div>
                            <div class="funding_Intro_container">
                                <div class="rwd message info_message">
                                    <div class="header info_message_header">
                                        <span role="img" aria-label="공지">📢</span>
                                        펀딩금 반환 정책 시행 및 정산 정책 변경 안내
                                    </div>
                                    <p>메이커와 서포터의 신뢰할 수 있는 펀딩을 중개하기 위해 펀딩금 반환 정책이 시행됩니다.</p>
                                    <strong>펀딩금 반환 정책 시행</strong>
                                    <p>서포터는 펀딩 종료 후 아래와 같은 경우에 펀딩금 반환을 신청할 수 있습니다.</p>
                                    <ol>
                                        <li>1) 리워드 발송이 +90일까지 지연된 경우</li>
                                        <li>2) 리워드에 하자가 발생한 경우</li>
                                    </ol>
                                    <strong>정산 정책 변경</strong>
                                    <p>정산은 총 2회에 걸쳐 진행되며, 최종 결제 금액에 따라 분할 정산 비율이 결정됩니다.<br>
                                        ・ 바로정산(1차): 프로젝트 종료 후<br>
                                        ・ 최종정산(2차): 리워드 배송 &amp; 펀딩금 반환 완료 후<br>
                                    </p>
                                    <p class="info_message_notice">
                                        ※ 자세한 내용은 아래 내용과 
                                        <a href="#">정책 변경 공지사항</a>
                                        을 참고하세요.
                                    </p>
                                </div>
                                <h2 class="title info_message_title">
                                    <span>프로젝트가 성공적으로 종료되면</span>
                                    아래와 같은 프로세스로 진행됩니다.
                                </h2>
                                <ul class="info_message_listWrapper">
                                    <li class="info_message_list">
                                        <div class="info_message_about">펀딩 종료 및 결제 진행</div>
                                        <p>결제는 종료일+1영업일부터 최대 4영업일까지 진행됩니다.</p>
                                    </li>
                                    <li class="info_message_list">
                                        <div class="info_message_about">바로정산</div>
                                        <p>펀딩이 성공적으로 종료 후, 최종 결제 금액의 일부가 정산금으로 지급됩니다.</p>
                                    </li>
                                    <li class="info_message_list">
                                        <div class="info_message_about">리워드 발송</div>
                                        <p>메이커는 리워드 준비 및 발송을 진행하며 발송 후에는 발송 정보에 대한 발송 상태를 변경해야 합니다.</p>
                                    </li>
                                    <li class="info_message_list">
                                        <div class="info_message_about">펀딩금 반환 
                                            <span>(신청한 서포터가 있는 경우에 한함)</span>
                                        </div>
                                        <p>펀딩한 서포터는 리워드 하자 및 배송 지연에 대한 펀딩금 반환을 신청할 수 있습니다.</p>
                                        <p class="info_message_notice">※ 상세한 펀딩금 반환 정책은 
                                            <a href="#" target="_blank">펀딩금 반환 정책</a>
                                            에서 확인하세요.
                                        </p>
                                    </li>
                                    <li class="info_message_list">
                                        <div class="info_message_about">최종정산</div>
                                        <p>리워드 발송과 펀딩금 반환이 모두 완료되면 최종정산이 진행됩니다.</p>
                                        <p class="info_message_notice">※ 정산에 대한 자세한 내용은 
                                            <a href="#" target="_blank">WDW 정산 정책</a>
                                            을 확인하세요.
                                        </p>
                                    </li>
                                </ul>
                                <div class="btnWrapper">
                                    <div class="step_backButton_container step_backButton_footer">
                                        <a href="/project_up/project_up/funding_establishment2"><button type="button" class="rwd button step_backButton">
                                            <i aria-hidden="true" class="icon leftBox"></i>
                                            &lt; &nbsp;&nbsp;이전 
                                        </button></a>
                                    </div>
                                    <a href="/project_up/project_up/funding_establishment4"><button type="button" class="rwd button primary">다음</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>