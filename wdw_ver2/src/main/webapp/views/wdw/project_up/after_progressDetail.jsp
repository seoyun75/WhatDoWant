<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${data.pjbvo }" var="pjbvo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/project_up/funding_first.css" />
</head>
<body>
<div id="funding_wrap">
			<div id="funding_Container" class="funding_container">
				<div class="funding_navbar_container">
					<button type="button" class="rwd button less navbar_button">
						<i aria-hidden="true" class="icon menu"></i>
					</button>
					<div class="navbar_logo">
						<button type="button" class="rwd button less" onclick="location.href='/main/main/main'">
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
                                    프로젝트 번호 00000
                                </div>
                                <i aria-hidden="true" class="icon icon_left"></i>
                            </button>
                            <div class="projectInfo_image_box" style="background-color: #8159dc;"></div>
                        </div>
                        <nav class="menuList_container">
                            <div class="menuList_Box"></div>
                            <ul>
                                <li>
                                    <a aria-current="page" class="menuList_nav menuList_active" >
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon icon_left menuList_icon_left menuList_open"></i>
                                    </a>

                                </li>
                                <li><a class="menuList_nav menuList_disabled" href="after_fundingStatus?pro_code=${data.pro_code} ">
									펀딩 현황 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<!-- <div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div> -->
							</a></li>
							<li><a class="menuList_nav menuList_disabled" href="after_sendManagement?pro_code=${data.pro_code}">
									발송 관리 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<!-- <div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div> -->
							</a></li>
							<li><a class="menuList_nav menuList_disabled" href="after_inquiry?pro_code=${data.pro_code}">
									문의·답변 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<!-- <div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div> -->
							</a></li>
							<li><a class="menuList_nav menuList_disabled" href="after_progress?pro_code=${data.pro_code}">
									진행·현황 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<!-- <div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div> -->
							</a></li>							
                            </ul>
                        </nav>
                    </div>
                    <div id="funding_preparation" class="funding_preparation">
                        <div class="funding_preparation_wrapper">
                        	 <div id="container">
            <div id = "regist">
                <h4>상세페이지</h4>
                <div class="info_table">
                <form action="">
                    <table class="tbl_basic" summary="내용으로 구성">
                    <caption>등록 게시판 입력양식폼</caption>
                    <colgroup>
                        <col style="width:12.5%">
                        <col style="width:40.5%">
                        <col style="width:12.5%">
                    </colgroup>
                    
                    <tbody>
                        <tr>
                            <th class="regist_bd_l">제목</th>
                            <td colspan="3">
                                <div class="mtit">이름</div>
                                <input type="text" name="name" id="name" value="${pjbvo.project_board_title }" class="inp_txt" maxlength="15" disabled="disabled">
                            </td>
                        </tr>
                            <tr>
                                <th class="regist_bd_l"><label for="contents">문의사항</label></th>
                                <td colspan="3">
                                    <div class="mtit">내용</div>
                                    <div class="textarea_box" >
                                        <div id=textarea >
                                        	${pjbvo.project_board_content }
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="regist_bd_l"><label for="file_contents">첨부파일</label></th>
                                <td colspan="3">
                                    <div class="mtit">첨부파일</div>
                                   <c:choose> 
                                     	<c:when test="${pjbvo.project_board_img != null }">
                                    		<img alt="" src="/img_up/project/${pjbvo.project_board_pro_no }/${pjbvo.project_board_img}">
                                    	</c:when>
                                    	<c:otherwise>
	                                    	없음
                                    	</c:otherwise> 
       							  </c:choose> 
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                </div>
                <div class="btn_group re_text_center">
                    <input class="button_last" type="button" value="목록으로" onclick="location.href='after_progress?pro_code=${data.pro_code}'" >        <!-- 해당 카테고리 페이지 -->
                    <input class="button_last" type="button" value="삭제" onclick="location.href='after_progressDelete?pro_code=${data.pro_code}'" >
                         <!--글쓰기 누흔 페이지-->
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