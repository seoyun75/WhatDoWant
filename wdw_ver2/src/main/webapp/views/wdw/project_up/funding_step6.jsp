<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩준비 - 메이커 정보</title>
<link rel="stylesheet" href="/resources/css/project_up/common.css">
<link rel="stylesheet"
	href="/resources/css/project_up/funding_step6.css" />
<script>
	function compDelete(){
		if(confirm("파일을 삭제하시겠습니까?")){
			frm.action="compDeleteReg?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}";
			frm.submit();
		}	
	}
	function agreeDelete(){
		if(confirm("파일을 삭제하시겠습니까?")){
			frm.action="agreeDeleteReg?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}";
			frm.submit();
		}	
	}
	function accountDelete(){
		if(confirm("파일을 삭제하시겠습니까?")){
			frm.action="accountDeleteReg?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}";
			frm.submit();
		}	
	}

	// 사업자등록번호 유효성
	function checkCorporateRegiNumber(number){
		var numberMap = number.replace(/-/gi, '').split('').map(function (d){
			return parseInt(d, 10);
		});
		
		if(numberMap.length == 10){
			var keyArr = [1, 3, 7, 1, 3, 7, 1, 3, 5];
			var chk = 0;
			
			keyArr.forEach(function(d, i){
				chk += d * numberMap[i];
			});
			
			chk += parseInt((keyArr[8] * numberMap[8])/ 10, 10);
			if(Math.floor(numberMap[9]) === ( (10 - (chk % 10) ) % 10)){
				return true;
			}else{
				alert("올바르지 않은 사업자 등록 번호입니다.\n다시 시도해주세요.");
				document.getElementsByName("maker_license")[0].value="";
				document.getElementsByName("maker_license")[0].focus();
				return false;
			}
		}

		alert("올바르지 않은 사업자 등록 번호입니다.\n다시 시도해주세요.");
		return false;
	}

	// 지정 확장자만 업로드
	function chk_file_type(obj) {
		 var file_kind = obj.value.lastIndexOf('.');
		 var file_name = obj.value.substring(file_kind+1,obj.length);
		 var file_type = file_name.toLowerCase();
		 var check_file_type = new Array('hwp', 'pdf', 'doc', 'docx');
		
	
		 if(check_file_type.indexOf(file_type)==-1){
		  alert('한글, 워드, pdf 파일만 선택할 수 있습니다.');
		  var parent_Obj=obj.parentNode
		  var node=parent_Obj.replaceChild(obj.cloneNode(true),obj);
		  return false;
		 }
	}
		
</script>
</head>
<body>
	<form
		action="funding_step6_reg?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}"
		method="post" enctype="multipart/form-data" name="frm">
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
								<div>프로젝트 번호 ${data.pu_maker_info_pro_no }</div>
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
									href="funding_first?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}">
										펀딩 준비 <i aria-hidden="true"
										class="icon icon_left menuList_icon_left menuList_open"></i>
								</a>
									<ul class="subList_container">
										<li><a class="menuList_nav subList_subMenu"
											href="funding_step1?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}">
												기본 요건 </a></li>
										<li><a class="menuList_nav subList_subMenu"
											href="funding_step2?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}">
												기본 정보 </a></li>
										<li><a class="menuList_nav subList_subMenu"
											href="funding_step3?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}">
												스토리 작성 </a></li>
										<li><a class="menuList_nav subList_subMenu"
											href="funding_step4?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}">
												리워드 설계 </a></li>
										<li><a class="menuList_nav subList_subMenu"
											href="funding_step5?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}">
												위험요인 및 정책 </a></li>
										<li><a class="menuList_nav subList_subMenu"
											href="funding_step6?pro_no=${data.pu_maker_info_pro_no }&memCode=${data.pu_maker_info_mem_code}">
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
									<li class="funding_Intro_list_item">메이커 정보</li>
								</ul>
								<div class="detail_navbar_container">
									<div class="detail_navbar_contents">
										<button type="button" class="rwd button less collapseButton">
											<i aria-hidden="true" class="icon menu"></i>
										</button>
										<div class="detail_navbar_logo">
											<button type="button" class="rwd button less">
												<img alt="로고" src="/resources/img/common/logo.png"
													style="width: 60px;"
													onclick="location.href='/main/main/main'">
											</button>
										</div>
										<div class="detail_navbar_info">
											<span
												class="detail_navbar_wrap detail_navbar_image detail_navbar_company"
												style="width: 32px; height: 32px;"> <span
												class="detail_navbar_info_img"></span>
											</span><span>${member.member_pname }</span>
										</div>
										<div class="navbar_buttons">
											<button type="button"
												class="rwd button less navbar_exitButton"
												onclick="location.href='/main/main/main'">나가기</button>
										</div>
									</div>
								</div>
								<div class="funding_top_container">
									<div class="funding_top_contents">
										<h2 class="funding_top_title">메이커 정보</h2>
									</div>
									<div class="funding_guide_wrapper">
										<button class="funding_guide_button funding_guide_btn">
											<div class="funding_guide_point">
												<!-- <img src="img/test_logo.png" alt="이미지"> -->
											</div>
										</button>
									</div>
								</div>
								<form class="rwd form">
									<div class="info_wrap_container">
										<h3 class="info_wrap_title">메이커 기본 정보</h3>
										<p class="info_wrap_description">프로젝트 상세 페이지에 노출되는 정보이니,
											서포터와 소통이 가능한 정확한 정보를 입력해주세요.</p>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">메이커명</div>
															</div>
														</label>
													</div>
													<p class="info_input_field_desc">법인사업자는 법인등기부상 법인명 / 개인
														사업자는 주민등록상 성명 또는 상호 / 개인은 주민등록상 성명을 입력하세요.</p>
													<div class="input_container">
														<div class="waffle input">
															<input name="pu_maker_info_comp_name"
																placeholder="메이커명 입력" maxlength="30"
																value="${data.pu_maker_info_comp_name }">
														</div>
														<em class="waffle helper">29자 남음</em>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="field subject_guide_field subject_guide_text">
													<div class="label_wrapper">
														<label class="rwd label form_label">
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box">메이커 프로필 이미지</div>
																<div class="helpTip_wrap helpTip"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="helpTip_button" style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																</div>
															</div>
														</label>
													</div>
													<div class="img_btn_wrap">
														<c:choose>
															<c:when test="${data.pu_maker_info_comp_img == null }">
																<input type="file" name="comp_img" />
															</c:when>
															<c:otherwise>
																<input type="hidden" name="pu_maker_info_comp_img"
																	value="${data.pu_maker_info_comp_img }" />
																${data.pu_maker_info_comp_img } <input type="button"
																	value="파일삭제" onclick="compDelete()" />
															</c:otherwise>
														</c:choose>
														<em class="helper error"></em> <em
															class="helper img_helper">3MB이하의 JPG, JPEG, PNG 파일,
															사이즈: 300X300 픽셀 이상</em>
													</div>
												</div>
												<input type="hidden" name="imgfile">
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">문의
																	이메일</div>
																<div class="helpTip_wrap helpTip"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="helpTip_button" style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																</div>
															</div>
														</label>
													</div>
													<p class="info_input_field_desc"></p>
													<div class="input_container">
														<div class="waffle input">
															<input name="pu_maker_info_inquiry_mail"
																placeholder="이메일 입력" maxlength="64"
																value="${data.pu_maker_info_inquiry_mail }">
														</div>
														<em class="waffle helper"></em>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">문의
																	전화번호</div>
																<div class="helpTip_wrap helpTip"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="helpTip_button" style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																</div>
															</div>
														</label>
													</div>
													<p class="info_input_field_desc"></p>
													<div class="input_container">
														<div class="waffle input">
															<input name="pu_maker_info_inquiry_phone"
																placeholder="전화번호 입력" maxlength="20" type="tel"
																value="${pu_maker_info_inquiry_phone }">
														</div>
														<em class="waffle helper"></em>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="kakao_field">
													<div class="waffle field">
														<div class="waffle label">
															<label>
																<div class="funding_Tip_contanier">
																	<div class="funding_Tip_box">홈페이지</div>
																	<span class="funding_Tip_options">(선택사항)</span>
																	<div class="helpTip_wrap helpTip"
																		style="font-size: 14px;">
																		<button type="button" title="도움말 보기"
																			class="helpTip_button" style="font-size: 14px;">
																			<i class="icon help-o" aria-hidden="true"></i>
																		</button>
																	</div>
																</div>
															</label>
														</div>
														<div class="social_kakao">
															<div class="input_container">
																<div class="waffle input">
																	<input name="pu_maker_info_homepage_url1"
																		placeholder="홈페이지 URL 입력"
																		value="${pu_maker_info_homepage_url1 }">
																</div>
																<em class="waffle helper"></em>
															</div>
															<button disabled="" type="button"
																class="rwd button gray kakao_btn">
																<i aria-hidden="true" class="icon openlink-o"></i>
															</button>
														</div>
														<div class="social_kakao">
															<div class="input_container">
																<div class="waffle input">
																	<input name="pu_maker_info_homepage_url2"
																		placeholder="홈페이지 URL 입력"
																		value="${data.pu_maker_info_homepage_url2 }">
																</div>
																<em class="waffle helper"></em>
															</div>
															<button disabled="" type="button"
																class="rwd button gray kakao_btn">
																<i aria-hidden="true" class="icon openlink-o"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="info_wrap_container">
										<h3 class="info_wrap_title">대표자 정보</h3>
										<p class="info_wrap_description">정산과 관련된 전자 약정 체결을 위한
											정보이니, 정확하게 입력해주세요.</p>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="business_type_select">
													<div class="waffle field">
														<div class="waffle label">
															<label>
																<div class="funding_Tip_contanier">
																	<div class="funding_Tip_box funding_Tip_box">사업자
																		구분</div>
																	<div class="helpTip_wrap helpTip"
																		style="font-size: 14px;">
																		<button type="button" title="도움말 보기"
																			class="helpTip_button" style="font-size: 14px;">
																			<i class="icon help-o" aria-hidden="true"></i>
																		</button>
																	</div>
																</div>
															</label>
														</div>
														<div class="waffle select">
															<div class="value" aria-hidden="true">
																개인
																<svg viewBox="0 0 32 32">
                                                                    <path
																		d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path>
                                                                </svg>
															</div>
															<select name="pu_maker_info_bn_classifi">
																<option>개인</option>
																<option>개인사업자</option>
																<option>법인사업자</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">사업자
																	등록 번호</div>
															</div>
														</label>
													</div>
													<div class="input_container">
														<div class="waffle input">
															<input type="text" name="maker_license"
																placeholder="사업자 등록 번호 입력 예시(123-45-67890)"
																maxlength="12" value="${data.pu_maker_info_license }" />
															<input type="button" name="button" value="사업자 번호 확인"
																onclick="checkCorporateRegiNumber(maker_license.value)" />
														</div>
														<em class="waffle helper">특수문자(-)없이 숫자만 입력해주세요.</em>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="business_agreement_container">
													<div class="info_file_upload_container container">
														<div class="info_file_upload_label">
															<div class="waffle field">
																<div class="waffle label">
																	<label>
																		<div class="funding_Tip_contanier">
																			<div class="funding_Tip_box funding_Tip_box">대표자
																				정보 수집 및 이용 동의서</div>
																			<div class="helpTip_wrap helpTip"
																				style="font-size: 14px;">
																				<button type="button" title="도움말 보기"
																					class="helpTip_button" style="font-size: 14px;">
																					<i class="icon help-o" aria-hidden="true"></i>
																				</button>
																			</div>
																		</div>
																	</label>
																</div>
																<div class="info_file_upload_desc">
																	<div class="business_agreement_description">
																		아래 양식을 다운받아 작성 후, 촬영 또는 스캔하여 제출(업로드)하세요. <br>・
																		동의서 양식 내, 각 이용정보에 대해서 체크(✔) 동의 표시 후 마지막에는 본인 성명과 서명(또는
																		인감)을 날인해주세요. <br>・ JPG, JPEG, PNG, PDF / 10MB 이하
																		10개의 파일 업로드 가능합니다. <br>※ 대표자가 아닌 제3자가 서명하는 것은 사문서
																		위조에 해당할 수 있으니, 반드시 대표자가 서명한 동의서를 업로드하세요.
																	</div>
																</div>
															</div>
														</div>
														<div class="info_file_upload_input_wrap">
															<button type="button"
																class="rwd button circular mini primary_outline">업로드</button>
															<div class="input_container">
																<div class="waffle input">
																	<c:choose>
																		<c:when
																			test="${data.pu_maker_info_bn_agreement == null }">
																			<input type="file" name="agreement" accept=".docx" onclick="chk_file_type(this)" />
																		</c:when>
																		<c:otherwise>
																			<input type="hidden"
																				name="pu_maker_info_bn_agreement"
																				value="${data.pu_maker_info_bn_agreement }" />
																			${data.pu_maker_info_bn_agreement } <input
																				type="button" value="파일삭제" onclick="agreeDelete()" />
																		</c:otherwise>
																	</c:choose>
																</div>
																<em class="waffle helper"></em>
															</div>
														</div>
													</div>
													<a class="business_down" href="/file/project_up/[WDW]개인정보수집_및_활용동의서.docx" target="_blank" download>
													<i aria-hidden="true" class="icon download"></i> 
													개인정보 수집 및 이용 동의서
													</a> <input type="hidden" name="">
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">대표자명</div>
															</div>
														</label>
													</div>
													<p class="info_input_field_desc">사업자등록증에 등록된 대표자의 이름과
														일치해야 합니다.</p>
													<div class="input_container">
														<div class="waffle input">
															<input name="pu_maker_info_repre_name"
																placeholder="대표자명 입력" maxlength="32"
																value="${data.pu_maker_info_repre_name }">
														</div>
														<em class="waffle helper"></em>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">대표자
																	이메일</div>
															</div>
														</label>
													</div>
													<p class="info_input_field_desc">대표자의 이메일로 전자 약정서가
														발송됩니다. 전자 약정은 대표자가 직접 진행해야 합니다.</p>
													<div class="input_container">
														<div class="waffle input">
															<input name="pu_maker_info_repre_mail"
																placeholder="대표자 이메일 입력" maxlength="64"
																value="${data.pu_maker_info_repre_mail }">
														</div>
														<em class="waffle helper"></em>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">대표자
																	휴대폰 번호</div>
															</div>
														</label>
													</div>
													<p class="info_input_field_desc">약정&nbsp;체결&nbsp;시&nbsp;대표자&nbsp;본인확인을&nbsp;위해&nbsp;휴대전화&nbsp;본인인증을&nbsp;진행합니다.
														본인인증이&nbsp;불가한&nbsp;경우&nbsp;약정의&nbsp;체결&nbsp;및&nbsp;서비스&nbsp;제공이&nbsp;불가하니,
														반드시&nbsp;대표자&nbsp;명의&nbsp;휴대폰&nbsp;번호를&nbsp;입력하세요.</p>
													<div class="input_container">
														<div class="waffle input">
															<input name="pu_maker_info_repre_phone"
																placeholder="대표자 휴대폰 번호 입력" maxlength="11" type="tel"
																value="${data.pu_maker_info_repre_phone }">
														</div>
														<em class="waffle helper">특수문자(-)없이 숫자만 입력해주세요.</em>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="info_wrap_container">
										<h3 class="info_wrap_title">세금계산서 발행 및 정산 계좌 정보</h3>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="account_social_wrap">
													<div class="waffle field">
														<div class="waffle label">
															<label>대표자 주민등록번호</label>
														</div>
														<p class="account_registration_desc">서비스 이용 수수료에 대해
															세금계산서를 발행하며, 사업자등록을 하지 않은 개인인 경우, 고유식별정보에 필요한 주민등록번호를
															입력하세요.</p>
														<div class="account_registration_container">
															<div class="input_container">
																<div class="waffle input">
																	<input name="pu_maker_info_reg_num_pre"
																		placeholder="앞 6자리 입력" maxlength="6" type="tel"
																		value="${data.pu_maker_info_reg_num_pre }">
																</div>
																<em class="waffle helper"></em>
															</div>
															<div class="input_container">
																<div class="input_container">
																	<div class="waffle input account_registration_input">
																		<input name="pu_maker_info_reg_num_post"
																			placeholder="뒤 7자리 입력" maxlength="7" type="tel"
																			autocomplete="off"
																			value="${data.pu_maker_info_reg_num_post }">
																	</div>
																	<em class="waffle helper"></em>
																</div>
															</div>
															<div class="account_registration_hidden">
																<div class="input_container">
																	<div class="waffle input">
																		<input type="hidden" name="" maxlength="7" value="">
																	</div>
																	<em class="waffle helper"></em>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="waffle field">
													<div class="waffle label">
														<label>
															<div class="funding_Tip_contanier">
																<div class="funding_Tip_box funding_Tip_box">세금계산서
																	발행 이메일</div>
															</div>
														</label>
													</div>
													<p class="info_input_field_desc">세금계산서 발행 시, 입력되는 이메일
														주소를 입력하세요. (본인의 이메일 주소 또는 세무 대리인의 이메일 주소)</p>
													<div class="input_container">
														<div class="waffle input">
															<input name="pu_maker_info_tax_mail" placeholder="이메일 입력"
																maxlength="64" value="${data.pu_maker_info_tax_mail }">
														</div>
														<em class="waffle helper"></em>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="account_wrap">
													<div class="waffle field">
														<div class="waffle label">
															<label>계좌 정보</label>
														</div>
														<p class="account_field_desc">
															펀딩 성공시 정산금을 수령할 계좌정보를 입력하세요. <br>・ 개인(사업자)의 경우
															본인/사업자 명의 계좌 등록이 가능하며, 법인 사업자의 경우 법인계좌만 등록 가능합니다. <br>・
															입금이 가능한 계좌인지 확인 후 입력하세요. <br>・ 저축성 예금계좌, 외화예금계좌,
															CMA계좌, 평생계좌번호(휴대폰 번호) 등은 입금 불가 <br>
														</p>
														<div class="account_field_container">
															<div class="waffle select account_field_select">
																<div class="value placeholder" aria-hidden="true">
																	은행 선택
																	<svg viewBox="0 0 32 32">
                                                                        <path
																			d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path>
                                                                    </svg>
																</div>
																<select name="pu_maker_info_account_bank">
																	<option>신한은행</option>
																	<option>국민은행</option>
																	<option>농협은행</option>
																	<option>우리은행</option>
																	<option>KEB하나은행</option>
																	<option>기업은행</option>
																	<option>SC은행</option>
																	<option>카카오뱅크</option>
																	<option>부산은행</option>
																	<option>대구은행</option>
																	<option>한국씨티은행</option>
																	<option>경남은행</option>
																	<option>광주은행</option>
																	<option>전북은행</option>
																	<option>KDB산업은행</option>
																	<option>제주은행</option>
																	<option>우체국</option>
																	<option>수협중앙회</option>
																	<option>신협중앙회</option>
																	<option>새마을금고중앙회</option>
																</select>
															</div>
															<div class="account_field_input">
																<div class="input_container">
																	<div class="waffle input">
																		<input name="pu_maker_info_account_number"
																			placeholder="계좌번호 입력" maxlength="32"
																			value="${data.pu_maker_info_account_number }">
																	</div>
																	<em class="waffle helper">특수문자(-)없이 숫자만 입력해주세요.</em>
																</div>
															</div>
															<div class="input_container">
																<div class="waffle input">
																	<input name="pu_maker_info_account_name"
																		placeholder="예금주 명 입력" maxlength="20"
																		value="${data.pu_maker_info_account_name }">
																</div>
																<em class="waffle helper">예금주 명은 계좌의 예금주와 정확하게 일치해야
																	합니다.</em>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="subject_contents">
											<div class="subject_guide_contents">
												<div class="business_license_container">
													<div class="info_file_upload_container container">
														<div class="info_file_upload_label">
															<div class="waffle field">
																<div class="waffle label">
																	<label>
																		<div class="funding_Tip_contanier">
																			<div class="funding_Tip_box funding_Tip_box">통장
																				사본</div>
																			<div class="helpTip_wrap helpTip"
																				style="font-size: 14px;">
																				<button type="button" title="도움말 보기"
																					class="helpTip_button" style="font-size: 14px;">
																					<i class="icon help-o" aria-hidden="true"></i>
																				</button>
																			</div>
																		</div>
																	</label>
																</div>
																<div class="info_file_upload_desc">위 계좌 정보와 동일한
																	명의의 통장 사본을 제출해야 합니다. JPG, JPEG, PNG, PDF / 10MB 이하 파일
																	1개만 업로드 가능합니다.</div>
															</div>
														</div>
														<div class="info_file_upload_input_wrap">
															<button type="button"
																class="rwd button circular mini primary_outline">업로드</button>
															<div class="input_container">
																<div class="waffle input">
																	<c:choose>
																		<c:when
																			test="${data.pu_maker_info_account_copy == null }">
																			<input type="file" name="account"
																				accept="image/png, image/jpeg, image/jpg, application/pdf" />
																		</c:when>
																		<c:otherwise>
																			<input type="hidden"
																				name="pu_maker_info_account_copy"
																				value="${data.pu_maker_info_account_copy }" />
																			${data.pu_maker_info_account_copy } <input
																				type="button" value="파일삭제" onclick="accountDelete()" />
																		</c:otherwise>
																	</c:choose>
																</div>
																<em class="waffle helper"></em>
															</div>
														</div>
													</div>
													<input type="hidden" name="">
												</div>
											</div>
										</div>
									</div>
								<div class="funding_container_btnWrapper">
									<input type="submit" class="rwd button primary" value="저장하기">
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>