<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/project_up/common.css">
<link rel="stylesheet" href="/resources/css/project_up/funding_step4.css" />

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
							<img alt="로고" src="/resources/img/common/logo.png" style="width: 60px;" onclick="location.href='/main/main/main'">
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
                                    프로젝트 번호 ${data.get(0).pu_reward_dsn_pro_no }
                                </div>
                                <i aria-hidden="true" class="icon icon_left"></i>
                            </button>
                            <div class="projectInfo_image_box" style="background-color: #8159dc;"></div>
                        </div>
                        <nav class="menuList_container">
                            <div class="menuList_Box"></div>
                            <ul>
                                <li>
                                    <a aria-current="page" class="menuList_nav menuList_active" href="funding_first?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon icon_left menuList_icon_left menuList_open"></i>
                                    </a>
                                    <ul class="subList_container">
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step1?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
                                                기본 요건
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step2?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
                                                기본 정보
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step3?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
                                                스토리 작성
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step4?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
                                                리워드 설계
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step5?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
                                                위험요인 및 정책
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step6?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
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
                                    <li class="funding_Intro_list_item">리워드 설계</li>
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
                                        <h2 class="funding_top_title">리워드 설계</h2>
                                        <p class="funding_top_description">서포터에게 제공할 리워드 내용을 입력하세요. 서포터가 쉽게 펀딩할 수 있는 저렴한 리워드부터 서포터의 보다 빠른 펀딩을 유도할 수 있는 얼리버드 리워드까지 다양한 리워드를 구성하세요.</p>
                                    </div>
                                </div>
                                <div class="funding_info_box">
                                    <h4 class="funding_info_title">리워드 설계 조건</h4>
                                    <ul>
                                        <li class="info_list">
                                            <span class="info_label">정렬 순서</span>
                                            <div>혜택이 높은 순으로 나오도록 정렬 순서를 등록하세요.</div>
                                        </li>
                                        <li class="info_list">
                                            <span class="info_label">발송 시작일</span>
                                            <div>프로젝트 종료일 이후부터 3개월 이내로 설계 가능합니다.</div>
                                        </li>
                                        <li class="info_list">
                                            <span class="info_label">옵션 조건</span>
                                            <div>옵션(사이즈, 색상 등)이 필요한 경우, 옵션을 추가하세요. 옵션은 선택형과 직접 텍스트를 입력하는 직접 입력형으로 설계 가능합니다.</div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Button trigger modal -->
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
									추가하기
								</button>
								
									
								<!-- Modal -->
								<form action="funding_step4_reg?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}">
								<input type="hidden" name="memCode" value="${data.get(0).pu_reward_dsn_mem_code}"/>
								<input type="hidden" name="pro_no" value="${data.get(0).pu_reward_dsn_pro_no }" />
								<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-scrollable">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">리워드 정보 제공</h5>
												<button type="button" name="" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<div class="row g-3 align-items-center">
												  <div class="col-auto">
												    <label for="inputPassword6" class="col-form-label">금액</label>
												  </div>
												  <div class="col-auto">
												    <input type="text" name="rew_price" id="inputPassword6 rew_price" class="form-control" aria-describedby="passwordHelpInline" placeholder="금액 입력" value="0">
												  </div>
												  <div class="col-auto">
												    <span id="passwordHelpInline" class="form-text">
												      원
												    </span>
												  </div>
												</div>
												<div class="mb-3">
											    	<label for="exampleFormControlInput1" class="form-label">리워드명</label>
													<input type="text" name="pu_reward_dsn_rew_name" class="form-control" id="exampleFormControlInput1" placeholder="타이틀 입력" maxlength="60">
												</div>
												<div class="mb-3">
											    	<label for="exampleFormControlInput1" class="form-label">상세 설명</label>
												</div>
												<textarea rows="5" cols="50" name="pu_reward_dsn_detail"></textarea>
												<div class="mb-3">
											    	<label for="exampleFormControlInput1" class="form-label">옵션</label>
													<input type="text" name="pu_reward_dsn_option" class="form-control" id="exampleFormControlInput1" placeholder="옵션을 입력해주세요" maxlength="60">
												</div>
												<div class="row g-3 align-items-center">
												  <div class="col-auto">
												    <label for="inputPassword6" class="col-form-label">배송료</label>
												  </div>
												  <div class="col-auto">
												    <input type="text" name="sendcon" id="inputPassword6" class="form-control" aria-describedby="passwordHelpInline" placeholder="0" value="0">
												  </div>
												  <div class="col-auto">
												    <span id="passwordHelpInline" class="form-text">
												      원
												    </span>
												  </div>
												</div>
												<div class="mb-3">
												    <label for="exampleFormControlInput1" class="form-label">발송시작일</label>
												    <select class="form-select" name="pu_reward_dsn_rew_sendmonth" aria-label="Default select example">
													  <option >2020/12</option>
													  <option >2021/01</option>
													  <option >2021/02</option>
													  <option >2021/03</option>
													  <option >2021/04</option>
													  <option >2021/05</option>
													  <option >2021/06</option>
													  <option >2021/07</option>
													  <option >2021/08</option>
													  <option >2021/09</option>
													  <option >2021/10</option>
													  <option >2021/11</option>
													</select>
													<select class="form-select" name="pu_reward_dsn_rew_sendday" aria-label="Default select example">
													  <option >초(1~10일)</option>
													  <option >중(11~20일)</option>
													  <option >말(21일~말일)</option>
													</select>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
												<input type="submit" class="btn reg-reward" value="확인" />
											</div>
										</div>
									</div>
								</div>
								</form>
								<table class="table">
								  <thead>
								    <tr>
								      <th scope="col">#</th>
								      <td>리워드명</td>
								      <td>금액</td>
								      <td>상세 설명</td>
								      <td>옵션</td>
								      <td>배송료</td>
								      <td>발송시작일</td>
								      <td>삭제</td>
								    </tr>
								  </thead>
								  <tbody>
								    <c:forEach items="${data }" var="pp" varStatus="status">
								    <tr>
								    	<form action="funding_step4_deleteRwd?pro_no=${data.get(status.index).pu_reward_dsn_pro_no }&memCode=${data.get(status.index).pu_reward_dsn_mem_code}">
									    	<th>${status.count }</th>
									    	<td>${pp.pu_reward_dsn_rew_name }</td>
									    	<td>${pp.pu_reward_dsn_rew_price }</td>
									    	<td>${pp.pu_reward_dsn_detail }</td>
									    	<td>${pp.pu_reward_dsn_option }</td>
									    	<td>${pp.pu_reward_dsn_sendcon }</td>
									    	<td>${pp.pu_reward_dsn_rew_sendmonth } / ${pp.pu_reward_dsn_rew_sendday }</td>
									    	<td><input type="submit" value="삭제"/></td>
								    	</form>							    	
								    </tr>
								    </c:forEach>
								  </tbody>
								</table>
                                <div class="add_container">
                                    <div class="add_content">
                                        <p class="add_help"></p>
                                        <div class="add_info">
                                            <i aria-hidden="true" class="icon info-o add_icon"></i>
                                            <span class="add_focus">리워드를 추가하기 전에 프로젝트 종료일을 설정해주세요.</span>
                                            <br>
                                            프로젝트 종료일은 <strong>펀딩 준비</strong> &gt; 
                                            <a href="funding_step2?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}"><button type="button" class="add_link">기본정보</button></a>
                                            에서 설정할 수 있습니다.
                                        </div>
                                    </div>
                                </div>
                                <div class="funding_container_btnWrapper">
                                    <a href="funding_step4?pro_no=${data.get(0).pu_reward_dsn_pro_no }&memCode=${data.get(0).pu_reward_dsn_mem_code}"><button type="button" class="rwd button primary">저장하기</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</div>
</body>
</html>