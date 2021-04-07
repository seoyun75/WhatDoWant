<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩준비 - 기본요건</title>

<link rel="stylesheet" href="/resources/css/project_up/common.css">
</head>
<body>
<form action="funding_step1_reg?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}" method="post">
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
                                    프로젝트 번호 ${data.pu_basic_req_pro_no }
                                </div>
                                <i aria-hidden="true" class="icon icon_left"></i>
                            </button>
                            <div class="projectInfo_image_box" style="background-color: #8159dc;"></div>
                        </div>
                        <nav class="menuList_container">
                            <div class="menuList_Box"></div>
                            <ul>
                                <li>
                                    <a aria-current="page" class="menuList_nav menuList_active" href="/project_up/project_up/funding_first?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}">
                                        펀딩 준비
                                        <i aria-hidden="true" class="icon icon_left menuList_icon_left menuList_open"></i>
                                    </a>
                                    <ul class="subList_container">
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step1?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}">
                                                기본 요건
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step2?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}">
                                                기본 정보
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step3?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}">
                                                스토리 작성
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step4?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}">
                                                리워드 설계
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step5?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}">
                                                위험요인 및 정책
                                            </a>
                                        </li>
                                        <li>
                                            <a class="menuList_nav subList_subMenu" href="funding_step6?pro_no=${data.pu_basic_req_pro_no }&memCode=${data.pu_basic_req_mem_code}">
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
                    <div id="others_Contents" class="other_Contents">
						<div class="other_Contents_Box">
							<div class="funding_Intro_container">
								<ul class="funding_Intro_list">
									<li class="funding_Intro_list_item">펀딩 준비</li>
									<li class="funding_Intro_list_item">기본 요건</li>
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
										<h2 class="funding_top_title">
											기본 요건
										</h2>
										<p class="funding_top_description">
											펀딩 진행을 위한 기본 요건을 확인하고자 합니다. 심사 시 확인하는 중요한 정보이므로 반드시 정확한 정보를 입력하세요.
											<br>
											답변 내용이 사실과 다른 경우, 약정 위반에 따른 불이익이 발생할 수 있습니다.
										</p>
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
									<div class="funding_content">
										<div class="funding_content_form"></div>
										<div class="funding_content_box">
											<div class="subject_contents">
												<div class="subject_guide_contents">
													<div class="field subject_guide_field">
														<div class="form_wrap">
															<h3 class="form_Field undefined">
																<div class="funding_Tip_contanier">
																	<div class="funding_Tip_box funding_Tip_text">
																		Q1. 리워드가 타 크라우드펀딩사 및 온라인 커머스, 자사 홈페이지 등 다른 판매처에서 유통된 적이 있거나 현재 유통 중인가요?
																	</div>
																	<div class="helpTip_wrap helpTip" style="font-size: 14px;">
																		<button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
																			<i class="icon help-o" aria-hidden="true"></i>
																		</button>
																		<div class="helpTip_message helpTip_box" style="min-width: 350px;">
																			<a href="#" target="blank" class="helpTip_container" data-role="title">
																				WDW 심사기준 확인하기
																			</a>
																			<div>
																				· 요건확인 Q1~3 질문에 대한 답변이 미흡한 경우, 다시 확인 요청드리며, 프로젝트 검토 기간이 늘어날 수 있습니다.
																				<br>
																				· 다른 판매처에서 유통된 적이 있거나 유통중인 제품·서비스는 리워드로 부적절합니다.
																			</div>
																		</div>
																	</div>
																</div>
															</h3>
														</div>
														<label class="rwd radio_Box radio radio_checked">
															<input type="radio" name="pu_basic_req_reward_circu" value="No" checked="">
															<div>
																아니요. 다른 곳에서 유통한 적이 없으며 WDW를 통해 처음 선보이는 제품입니다.
															</div>
														</label>
														<div class="form_field_a form_field_radio"></div>
														<label class="rwd radio_Box radio radio_checked">
															<input type="radio" name="pu_basic_req_reward_circu" value="Yes">
															<div>
																예, 다른 곳에서 유통한 적이 있습니다. 또는 현재 유통 중입니다.
															</div>
														</label>
													</div>
												</div>
											</div>
											<div class="subject_contents">
												<div class="subject_guide_contents">
													<div class="field subject_guide_field subject_guide_text">
														<div class="wide column-2">
															<label class="rwd label form_textarea form_label">
																<div class="funding_Tip_contanier">
																	<div class="funding_Tip_box funding_Tip_text">
																		Q2. 현재까지 진행된 리워드의 준비 상태 및 앞으로의 계획을 구체적으로 설명해주세요.
																	</div>
																	<div class="helpTip_wrap helpTip" style="font-size: 14px;">
																		<button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
																			<i class="icon help-o" aria-hidden="true"></i>
																		</button>
																		<div class="helpTip_message helpTip_box" style="min-width: 350px;">
																			<div class="funding_guide_content_title">
																				<strong>1) 리워드가 유형의 제품인 경우</strong>
																				<div class="funding_question">
																					금형을 사용하여 생산되는 제품인 경우
																				</div>
																				· 워킹 샘플을 보유하고 있습니다.
																				<br>
																				· 현재 제조사 A와 위탁 제조 계약을 맺고 양산 금형까지 제작했습니다.
																				<br>
																				· 최종 양산품은 M월 N일에 완성될 예정입니다.
																				<br>
																				· 양산품 기준 일일 최대 생산 가능량은 xxxx대로 예상합니다.
																				<br>
																				<br>
																				<div class="funding_question">
																					금형을 사용하지 않고 생산되는 제품인 경우(푸드 기준)
																				</div>
																				· 제조사 A와 위탁 제조 계약을 맺고 현재 리워드에 대한 품목제조보고를 마쳤습니다.
																				<br>
																				· 양산품 기준 일일 최대 생산 가능량은 xxxx대로 예상합니다.
																				<br>
																				<br>
																				<strong>2) 리워드가 무형의 서비스인 경우</strong>
																				· 공연 장소는 A, 일정은 M월 N일부터 M'월 N'일까지로 예상합니다.
																				<br>
																				· 프로젝트 진행 기간 동안 원활한 공연 진행을 위해 B와 C를 M''월 N''일까지 준비할 예정입니다.
																			</div>
																		</div>
																	</div>
																</div>
															</label>
															<p class="funding_description">
																<span class="funding_description_container">
																	1) 리워드가 유형의 제품인 경우 제작 공정에 따른 현재 리워드의 제작 상태 및 제조 시설명과 일일 최대 생산 가능량을 포함한 앞으로의 생산 계획을 작성해주세요.
																	<br>
																	2) 공연, 영화, 전시 등 무형 서비스인 경우, 장소 대관, 촬영 일정 등의 현재 준비 상태 및 앞으로의 계획을 작성해주세요.
																</span>
															</p>
														</div>
														<div class="wide column-4">
															<div class="rwd input">
																<textarea placeholder="내용을 입력하세요" maxlength="500" helper=" " name="pu_basic_req_reward_plan1" rows="3">${fn:replace(data.pu_basic_req_reward_plan1, '<br>', crlf)}</textarea>
															</div>
															<em class="helper funding_guide_text">500자 남음</em>
														</div>
													</div>
												</div>
												<div class="funding_guide_wrap">
													<div class="funding_guide_box">
														<h5 class="funding_guide_title">Q2에 대한 예시 답변을 참고하여 작성해주세요.</h5>
														<div class="funding_guide_content">
															<div class="funding_guide_content_title">
																<strong>1) 리워드가 유형의 제품인 경우</strong>
																<div class="funding_question">금형을 사용하여 생산되는 제품인 경우</div>
																· 워킹 샘플을 보유하고 있습니다.
																<br>
																· 현재 제조사 A와 위탁 제조 계약을 맺고 양산 금형까지 제작했습니다.
																<br>
																· 최종 양산품은 M월 N일에 완성될 예정입니다.
																<br>
																· 양산품 기준 일일 최대 생산 가능량은 xxxx대로 예상합니다.
																<br>
																<br>
																<div class="funding_question">
																	금형을 사용하지 않고 생산되는 제품인 경우(푸드 기준)
																</div>
																· 제조사 A와 위탁 제조 계약을 맺고 현재 리워드에 대한 품목제조보고를 마쳤습니다.
																<br>
																· 양산품 기준 일일 최대 생산 가능량은 xxxx대로 예상합니다.
																<br>
																<br>
																<strong>2) 리워드가 무형의 서비스인 경우</strong>
																· 공연 장소는 A, 일정은 M월 N일부터 M'월 N'일까지로 예상합니다.
																<br>
																· 프로젝트 진행 기간 동안 원활한 공연 진행을 위해 B와 C를 M''월 N''일까지 준비할 예정입니다.
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="subject_contents">
												<div class="subject_guide_box">
													<div class="field subject_guide_field subject_guide_text">
														<div class="wide column-2">
															<label class="rwd label form_textarea form_label">
																<div class="funding_Tip_contanier">
																	<div class="funding_Tip_box funding_Tip_text">
																		Q3. 리워드의 전달 계획을 알려주세요.
																	</div>
																	<div class="helpTip_wrap helpTip" style="font-size: 14px;">
																		<button type="button" title="도움말 보기" class="helpTip_button" style="font-size: 14px;">
																			<i class="icon help-o" aria-hidden="true"></i>
																		</button>
																		<div class="helpTip_message helpTip_box" style="min-width: 350px;">
																			<div>
																				· 리워드는 A 물류 창고에서 보관 후 택배사 B를 통해 일괄 발송될 예정입니다.
																				<br>
																				· 명절 연휴 기간으로 배송이 지연될 가능성이 있어 리워드 배송 일정을 M월 N일로 설정했습니다.
																				<br>
																				· 일일 최대 발송 가능량은 xxxxx개로 예상합니다.
																				<br>
																				· 예상하지 못한 이유로 일일 최대 배송 가능량을 소화하지 못할 경우 택배사 C와 추가 계약하여 남은 물량을 배송할 예정입니다.
																				<br>
																			</div>
																		</div>
																	</div>
																</div>
															</label>
															<p class="funding_description">
																<span class="funding_description_container">
																	1) 리워드의 전달 방법(택배 or SMS 등)을 입력하고, 리워드 제작 및 전달 일정이 변동될 가능성이 있다면 사유를 알려주세요.
																	<br>
																	2) 발송 업체명 및 일일 최대 발송 가능량을 입력해주세요.
																	<br>
																	3) 공연, 영화, 전시 등 무형 서비스의 경우 좌석수, 일 최대 예약 가능 수량 등을 작성해주세요.
																	<br>
																</span>
															</p>
														</div>
														<div class="wide column-4">
															<div class="rwd input">
																<textarea placeholder="내용을 입력하세요" maxlength="500" helper=" "  name="pu_basic_req_reward_plan2" rows="3">${fn:replace(data.pu_basic_req_reward_plan2, '<br>', crlf)}</textarea>
															</div>
															<em class="helper funding_guide_text">500자 남음</em>
														</div>
													</div>
												</div>
											</div>
										</div>
								</div>
								<div class="subject_contents">
									<div class="subject_guide_box">
										<div class="sub_title">수수료 정책 안내</div>
										<div class="field subject_guide_field subject_guide_field_info">
											<div class="info_container info_container_box">
												<div class="info_strong">
													리워드 기본 수수료는 7% (VAT별도)입니다.
												</div>
												· 부가 서비스 이용 시, 추가 수수료가 발생될 수 있습니다.
												<br>
												· 리워드가 없는 기부후원 프로젝트의 경우, 수수료가 다르게 적용됩니다.
												<br>
												· 자세한 내용은
												<a href="#" target="blank" >
													<span class="subject_guide_field_infobox">WDW 수수료 정책</span>
												</a>
												을 확인해주세요.
											</div>
										</div>
									</div>
									<div class="subject_guide_box">
										<div class="subject_guide_box subject_guide_boxs">
											<h5 class="funding_guide_title"></h5>
											<div class="funding_guide_content"></div>
										</div>
									</div>
								</div>
							</form>
							<div class="funding_container_btnWrapper">
								<%-- <a href="${a_path }/funding_first"> --%>
								<!-- <button type="button" class="rwd button primary">저장하기</button></a> -->
								<input type="submit" class="rwd button primary" value="저장하기">
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