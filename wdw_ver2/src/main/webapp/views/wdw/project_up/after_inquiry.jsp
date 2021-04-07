<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            </ul>
                        </nav>
                    </div>
                    <div id="funding_preparation" class="funding_preparation">
                        <div class="funding_preparation_wrapper">
                        	<div class="inquiry_answer_wrapper">
                        		<span>문의·답변</span>
                        		<div id="btn_box_wrapper">
                        		</div>
                        		<div id="inquiry_answer_table_box">
									<table class="table">
										<thead class="thead-dark">
											<tr>
												<th scope="col">no</th>
												<th scope="col">작성자</th>
												<th scope="col">문의제목</th>
												<th scope="col">문의내용</th>
												<th scope="col">작성일</th>
												<th scope="col">답변</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${data.inquiryList }" var="pp" varStatus="no">
												<tr>
													<th scope="row">${no.count }</th>
													<td>${pp.project_board_writer }</td>
													<td>${pp.project_board_title }</td>
													<td>${pp.project_board_content }</td>
													<td>${pp.project_board_regdate }</td>
													<td>
														<input type="button" class="reply" value="답변하기" onclick="location.href='after_answer?project_board_no=${pp.project_board_no}&pro_code=${pp.project_board_pro_no }'"/>
														<input type="hidden" name="project_board_title" />
													</td>
												</tr>
											</c:forEach>
										 </tbody>
									</table>
								</div>
                        	</div>   
                        </div>
                    </div>
                 </div>
              </div>
         </div>
</body>
</html>