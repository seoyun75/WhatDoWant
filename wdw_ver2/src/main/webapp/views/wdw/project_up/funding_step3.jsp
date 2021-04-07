<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩 준비 - 스토리 작성</title>
<link rel="stylesheet" href="/resources/css/project_up/common.css">
<link rel="stylesheet" href="/resources/css/project_up/funding_step3.css" />
<script>
	function introDelete(){
		if(confirm("파일을 삭제하시겠습니까?")){
			frm.action="introImgDeleteReg?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}";
			frm.submit();
		}	
	}
	function storyDelete(){
		if(confirm("파일을 삭제하시겠습니까?")){
			frm.action="storyImgDeleteReg?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}";
			frm.submit();
		}	
	}

</script>
</head>
<body>
<form action="funding_step3_reg?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}" method="post" enctype="multipart/form-data" name="frm">
	<div id="funding_wrap">
		<div id="funding_Container" class="funding_container">
			<div class="funding_navbar_container">
				<button type="button" class="rwd button less navbar_button">
					<i aria-hidden="true" class="icon menu"></i>
				</button>
				<div class="navbar_logo">
					<button type="button" class="rwd button less">
						<img alt="로고" src="/resources/img/common/logo.png"
							style="width: 60px;">
					</button>
				</div>
				<div class="navbar_Info">
					<span class="navbar_Info_wrap navbar_Image navbar_Image_company"
						style="width: 32px; height: 32px;"> <span
						class="navbar_Infoimg"></span>
					</span> <span>${member.member_pname }</span>
				</div>
				<div class="navbar_buttons">
					<div class="button_container">
						<button
							class="preview_button rwd button circular dense primary_outline"
							type="button">미리보기</button>
					</div>
					<button type="button" class="rwd button less navbar_exitButton">
						나가기</button>
				</div>
			</div>
			<div class="navbar_main_info">
				<div class="sidebar_contents">
					<div class="projectInfo_container">
						<a href="#" target="_blank"> <strong
							class=" projectInfo_box projectInfo_flag"> 펀딩 </strong> <strong
							class=" projectInfo_box"> 펀딩 준비 작성 중 </strong>
							<h2 class="projectInfo_title">
								${member.member_pname }의 <br> 멋진 프로젝트
							</h2>
						</a>
						<button type="button" class="projectInfo_port">
							<div>프로젝트 번호 ${data.pu_story_pro_no }</div>
							<i aria-hidden="true" class="icon icon_left"></i>
						</button>
						<div class="projectInfo_image_box"
							style="background-color: #8159dc;"></div>
					</div>
					<nav class="menuList_container">
						<div class="menuList_Box"></div>
						<ul>
							<li><a aria-current="page"
								class="menuList_nav menuList_active"
								href="funding_first?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}">
									펀딩 준비 <i aria-hidden="true"
									class="icon icon_left menuList_icon_left menuList_open"></i>
							</a>
								<ul class="subList_container">
									<li><a class="menuList_nav subList_subMenu"
										href="funding_step1?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}">
											기본 요건 </a></li>
									<li><a class="menuList_nav subList_subMenu"
										href="funding_step2?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}">
											기본 정보 </a></li>
									<li><a class="menuList_nav subList_subMenu"
										href="funding_step3?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}">
											스토리 작성 </a></li>
									<li><a class="menuList_nav subList_subMenu"
										href="funding_step4?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}">
											리워드 설계 </a></li>
									<li><a class="menuList_nav subList_subMenu"
										href="funding_step5?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}">
											위험요인 및 정책 </a></li>
									<li><a class="menuList_nav subList_subMenu"
										href="funding_step6?pro_no=${data.pu_story_pro_no }&memCode=${data.pu_story_mem_code}">
											메이커 정보 </a></li>
								</ul></li>
							<li><a class="menuList_nav menuList_disabled" href="#">
									펀딩 현황 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div>
							</a></li>
							<li><a class="menuList_nav menuList_disabled" href="#">
									발송 관리 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div>
							</a></li>
							<li><a class="menuList_nav menuList_disabled" href="#">
									문의・답변 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div>
							</a></li>
						</ul>
					</nav>
				</div>
				<div id="funding_preparation" class="funding_preparation">
					<div class="other_Contents_Box">
						<div class="story_Container">
							<ul class="funding_Intro_list">
								<li class="funding_Intro_list_item">펀딩 준비</li>
								<li class="funding_Intro_list_item">스토리 작성</li>
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
									<h2 class="funding_story_title">스토리 작성</h2>
									<p class="funding_top_description">메이커님의 프로젝트를 소개해보세요.
										스토리에는 메이커님의 진심과 목소리가 잘 녹여질 수 있도록 명확하고, 솔직하게, 친근한 어투로 작성하세요.</p>
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
								<div class="subject_container">
									<div class="subject_contents">
										<div class="story_img_container">
											<label class="story_img_label">
												<div class="funding_Tip_contanier">
													<div class="funding_Tip_box funding_Tip_text">소개 사진
														등록</div>
													<div class="helpTip_wrap helpTip" style="font-size: 14px;">
														<button type="button" title="도움말 보기"
															class="helpTip_button" style="font-size: 14px;">
															<i class="icon help-o" aria-hidden="true"></i>
														</button>
													</div>
												</div>
											</label>
											<p class="story_desc ">프로젝트 페이지 상단에 노출될 영상 또는 사진을 올려주세요.</p>
											<div class="field subject_guide_field required img_field_form story_img_field">
												<div class="form_button_wrapper">
													<c:choose>
														<c:when test="${data.pu_story_intro_img == null }">
															<input type="file" name="intro_img"/>												
														</c:when>
														<c:otherwise>
															<input type="hidden" name="pu_story_intro_img" value="${data.pu_story_intro_img }"/>
															${data.pu_story_intro_img } <input type="button" value="파일삭제" onclick="introDelete()"/>
														</c:otherwise>
													</c:choose>
													<em class="helper error"></em> 
													<em class="helper img_helper">2MB 이하의 JPEG, JPG, GIF, PNG 파일</em>
													<em class="helper img_helper">사이즈 : 최소 630X400 픽셀 이상</em>
													<em class="helper img_helper">여러 장 등록 가능</em>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="subject_contents">
									<div class="subject_guide_contents">
										<div class="story_field_container">
											<div class="field subject_guide_field textarea_field">
												<div class="wide column-2">
													<label class="rwd label form_textarea form_label">
														<div class="funding_Tip_contanier">
															<div class="funding_Tip_box funding_Tip_text">프로젝트
																요약</div>
															<div class="helpTip_wrap helpTip"
																style="font-size: 14px;">
																<button type="button" title="도움말 보기"
																	class="helpTip_button" style="font-size: 14px;">
																	<i class="icon help-o" aria-hidden="true"></i>
																</button>
															</div>
														</div>
													</label>
													<p class="funding_description">프로젝트 페이지 상단 및 지지서명 시
														노출됩니다.</p>
												</div>
												<div class="wide column-4">
													<div class="rwd input">
														<textarea placeholder="내용 입력" helper=" " maxlength="100"
															name="pu_story_proj_summary" description="프로젝트 페이지 상단 및 지지서명 시 노출됩니다."
															rows="3">${fn:replace(data.pu_story_proj_summary, '<br>', crlf)}</textarea>
													</div>
													<em class="helper funding_guide_text">100자 남음</em>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="story_agreement_notice_box"></div>
								<div class="subject_contents">
									<div class="subject_guide_contents">
										<div class="field subject_guide_field">
											<div class="story_editor_wrapper">
												<label class="rwd label editor_label form_label">
													<div class="funding_Tip_contanier">
														<div class="funding_Tip_box">프로젝트 스토리</div>
														<div class="helpTip_wrap helpTip" style="font-size: 14px;">
															<button type="button" title="도움말 보기"
																class="helpTip_button" style="font-size: 14px;">
																<i class="icon help-o" aria-hidden="true"></i>
															</button>
														</div>
													</div>
												</label>
												<div
													class="field subject_guide_field required img_field_form story_img_field">
													<div class="form_button_wrapper">
														<div class="form_button_wrapper">
													<c:choose>
														<c:when test="${data.pu_story_proj_story_img == null }">
															<input type="file" name="story_img"/>												
														</c:when>
														<c:otherwise>
															<input type="hidden" name="pu_story_intro_img" value="${data.pu_story_proj_story_img }"/>
															${data.pu_story_proj_story_img } <input type="button" value="파일삭제" onclick="storyDelete()"/>
														</c:otherwise>
													</c:choose>
														</div>
															<em class="helper error"></em> 
															<em class="helper img_helper">2MB 이하의 JPEG, JPG, GIF, PNG 파일</em>
															<em class="helper img_helper">사이즈 : 최소 630X400 픽셀 이상</em>
															<em class="helper img_helper">여러 장 등록 가능</em>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							
							<div class="funding_container_btnWrapper">
								<input type="submit" class="rwd button primary" value="저장하기"/>
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