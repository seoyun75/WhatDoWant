<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩오픈 후 - 펀딩현황</title>

<link rel="stylesheet" href="/resources/css/common/reset.css">
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
							<div>프로젝트 번호 00000</div>
							<i aria-hidden="true" class="icon icon_left"></i>
						</button>
						<div class="projectInfo_image_box"
							style="background-color: #8159dc;"></div>
					</div>
					<nav class="menuList_container">
						<div class="menuList_Box"></div>
						<ul>
							<li><a aria-current="page"
								class="menuList_nav menuList_active" href="#"> 펀딩 준비 <i
									aria-hidden="true"
									class="icon icon_left menuList_icon_left menuList_open"></i>
							</a>
								
							<li><a class="menuList_nav menuList_disabled" href="after_fundingStatus?pro_code=${data.pro_code }">
									펀딩 현황 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<!-- <div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div> -->
							</a></li>
							<li><a class="menuList_nav menuList_disabled" href="after_sendManagement?pro_code=${data.pro_code}">
									발송 관리 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<!-- <div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div> -->
							</a></li>
							<li><a class="menuList_nav menuList_disabled" href="after_inquiry?pro_code=${data.pro_code }">
									문의·답변 <i aria-hidden="true"
									class="icon open_after menuList_open"></i>
									<!-- <div class="menuList_text">펀딩 오픈 이후에 확인 가능합니다.</div> -->
							</a></li>
						</ul>
					</nav>
				</div>
				<div id="funding_preparation" class="funding_preparation">
					<div class="funding_preparation_wrapper">
						<div class="funding_status">
							<span>펀딩 현황</span>
							<div class="funding_status_searchFilter">
								<span>검색 필터</span>
								<div id="searchFilter_wrapper">
									<div class="searchFilter_subject">투자자 성명 검색</div>
									<input type="text" placeholder="투자자 성명을 입력하세요." />
									<div class="searchFilter_subject">리워드 유형 검색</div>
									<input type="text" placeholder="리워드 종류를 입력하세요." />
								</div>
								<button class="search_btn">조회</button>
							
							</div>
							<div class="funding_status_searchResult">
								<span>검색 결과</span>
								<div id="searchResult_table_wrapper">
									<table class="table table-sm">
										<thead>
											<tr>
												<th scope="col">no</th>
												<th scope="col">성명</th>
												<th scope="col">리워드 명</th>
												<th scope="col">수량</th>
												<th scope="col">펀딩액</th>
												<th scope="col">결제 상태</th>
											</tr>
										</thead>
										<tbody>
										<c:set var="total_cnt" value="0"/>
										<c:set var="total_amount" value="0"/>
											<c:forEach items="${data.purlist }" var="list" varStatus="no">
												<tr>
													<th scope="row">${no.count }</th>
													<td>${list.purhistory_buyer } </td>
													<td>${list.purhistory_reward } </td>
													<td>${list.purhistory_cnt }
													<c:if test="${list.purhistory_paystate eq '결제완료' }">
														<c:set var="total_cnt" value="${total_cnt+list.purhistory_cnt }"/>
													</c:if>
													</td>
													<td>${list.purhistory_amount }
													<c:if test="${list.purhistory_paystate eq '결제완료' }">
														<c:set var="total_amount" value="${total_amount+list.purhistory_amount }"/>
													</c:if> 
													</td>
													<td>${list.purhistory_paystate } </td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- 
								<div id="funding_status_page">
									<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
										<div class="btn-group mr-2" role="group"
											aria-label="First group">
											<button type="button" class="btn">◀</button>
											<button type="button" class="btn">1</button>
											<button type="button" class="btn">2</button>
											<button type="button" class="btn">3</button>
											<button type="button" class="btn">4</button>
											<button type="button" class="btn">5</button>
											<button type="button" class="btn">6</button>
											<button type="button" class="btn">7</button>
											<button type="button" class="btn">8</button>
											<button type="button" class="btn">...</button>
											<button type="button" class="btn">▶</button>
										</div>
									</div>
								</div>
 -->								<div class="searchResult_sum">
									<div id="sum_wrapper">
										<div class="first_box">총 펀딩금액 : </div>
										<div class="second_box"><c:out value="${total_amount }"/> 원</div>
										<div class="first_box first_box_second">총 수량 : </div>
										<div class="second_box"><c:out value="${total_cnt }"/> 개</div>
									</div>
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